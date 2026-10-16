# CoursePilot course-check report — 20% theory / 80% practical

## Changes in this build
- Training schedules now explicitly target 20% theory and 80% practical/application contact time.
- Practical blocks are selected by course family (for example first aid, manual handling, abrasive wheels, lift trucks, working at height, COSHH, food/allergens, fire, driver/vehicle and safeguarding), with general applied activities for other subjects.
- Each practical block includes a method and a check/feedback prompt.
- Timetables show scheduled breaks separately from contact time. Multi-day schedules split contact time into seven-hour teaching days, with breaks excluded.
- Course plan and PowerPoint schedule slide state that 20/80 is a default requested target, not a replacement for an approved syllabus or course specification.

## Test matrix
The package's intended matrix is 19 course titles x 9 duration settings = 171 combinations:
- 1, 2, 3, 4 and 7 hours
- 2, 3, 4 and 5 days (7 contact hours/day, breaks excluded)

Static checks performed on this build:
- HTML JavaScript syntax check passed with Node.js.
- Schedule function reviewed for hour/day parsing, per-day contact-time allocation and break rows.
- Every generated course must still be browser-tested for successful `.pptx` export, slide rendering, speaker notes, matching schedule in the plan and presentation, and certificate/document exports.

## Important limits
This is a schedule and template-content check, not formal validation of every course. It does not establish that every subject is accredited, compliant or factually complete. A 20/80 ratio is not appropriate for every qualification or awarding-body specification; follow the controlling syllabus and applicable safety requirements if they differ. Safety-critical courses require competent subject-matter review and suitable equipment/supervision before delivery.
