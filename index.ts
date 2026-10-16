// Supabase Edge Function starter: send-certificate-email
// Required secrets: RESEND_API_KEY, CERTIFICATE_FROM_EMAIL
// Deploy with: supabase functions deploy send-certificate-email
// Invoke only after the app has stored the PDF in private storage.
// This starter sends a link, not a PDF attachment. Use short-lived signed URLs.

import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const corsHeaders = {
  "Access-Control-Allow-Origin": Deno.env.get("ALLOWED_ORIGIN") ?? "https://grimsbyra.github.io",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
  "Access-Control-Allow-Methods": "POST, OPTIONS",
};

Deno.serve(async (req) => {
  if (req.method === "OPTIONS") return new Response("ok", { headers: corsHeaders });
  if (req.method !== "POST") return new Response("Method not allowed", { status: 405, headers: corsHeaders });

  try {
    const supabaseUrl = Deno.env.get("SUPABASE_URL");
    const anonKey = Deno.env.get("SUPABASE_ANON_KEY");
    const resendKey = Deno.env.get("RESEND_API_KEY");
    const fromEmail = Deno.env.get("CERTIFICATE_FROM_EMAIL");
    if (!supabaseUrl || !anonKey || !resendKey || !fromEmail) {
      return new Response(JSON.stringify({ error: "Server configuration incomplete" }), {
        status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" }
      });
    }

    const authHeader = req.headers.get("Authorization");
    if (!authHeader) return new Response(JSON.stringify({ error: "Sign-in required" }), {
      status: 401, headers: { ...corsHeaders, "Content-Type": "application/json" }
    });

    const supabase = createClient(supabaseUrl, anonKey, {
      global: { headers: { Authorization: authHeader } }
    });
    const { data: { user }, error: userError } = await supabase.auth.getUser();
    if (userError || !user) return new Response(JSON.stringify({ error: "Invalid session" }), {
      status: 401, headers: { ...corsHeaders, "Content-Type": "application/json" }
    });

    const body = await req.json();
    const to = String(body.to ?? "").trim();
    const learnerName = String(body.learnerName ?? "").trim();
    const courseTitle = String(body.courseTitle ?? "").trim();
    const certificateNumber = String(body.certificateNumber ?? "").trim();
    const storagePath = String(body.storagePath ?? "").trim();

    if (!to || !learnerName || !courseTitle || !certificateNumber || !storagePath) {
      return new Response(JSON.stringify({ error: "Missing required fields" }), {
        status: 400, headers: { ...corsHeaders, "Content-Type": "application/json" }
      });
    }

    // Confirm that the requested certificate belongs to this signed-in provider.
    const { data: certificate, error: certError } = await supabase
      .from("certificates")
      .select("id, provider_id, certificate_number, pdf_storage_path")
      .eq("provider_id", user.id)
      .eq("certificate_number", certificateNumber)
      .eq("pdf_storage_path", storagePath)
      .maybeSingle();
    if (certError || !certificate) return new Response(JSON.stringify({ error: "Certificate not found for this account" }), {
      status: 404, headers: { ...corsHeaders, "Content-Type": "application/json" }
    });

    const { data: signed, error: signedError } = await supabase.storage
      .from("coursepilot-private")
      .createSignedUrl(storagePath, 60 * 60);
    if (signedError || !signed?.signedUrl) throw new Error("Could not create secure download link");

    const response = await fetch("https://api.resend.com/emails", {
      method: "POST",
      headers: { Authorization: `Bearer ${resendKey}`, "Content-Type": "application/json" },
      body: JSON.stringify({
        from: fromEmail,
        to: [to],
        subject: `Your ${courseTitle} certificate`,
        text: `Hello ${learnerName},\n\nYour certificate for ${courseTitle} is ready.\nCertificate reference: ${certificateNumber}\n\nDownload your PDF using this private link (valid for one hour): ${signed.signedUrl}\n\nIf you have trouble accessing it, contact your training provider.`
      })
    });
    const result = await response.json();
    if (!response.ok) throw new Error(result.message || "Email provider rejected the request");

    return new Response(JSON.stringify({ sent: true, id: result.id }), {
      status: 200, headers: { ...corsHeaders, "Content-Type": "application/json" }
    });
  } catch (err) {
    return new Response(JSON.stringify({ error: err instanceof Error ? err.message : "Unexpected error" }), {
      status: 500, headers: { ...corsHeaders, "Content-Type": "application/json" }
    });
  }
});
