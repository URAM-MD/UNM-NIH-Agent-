# How to add data

Anything in this folder becomes available to the skill the next time it runs (it pulls the latest copy of the repository at the start of each task).

## Quickest way
Drop the file in the closest-fitting folder and add one line to `INDEX.md` saying what it is. PDFs, Word files and spreadsheets are fine; the skill can read them. Raw material is better than nothing.

## Better way
Put facts into the matching markdown file as one line each, with a tag:

```
- On-campus research F&A rate: 00.0% of MTDC [VERIFIED 2026-11-12, HSC SPO rate memo dated ...]
- UNMH licensed beds: ... [CONFIRM]
- Number of adult ICU beds [NEEDED]
```

Rules that keep the library trustworthy:
1. Every number, rate, designation and named person carries a source and the date it was checked.
2. When something changes, replace the line and keep the old value in a short "previous" note if it helps (for example a rate that changes by fiscal year).
3. One topic, one home. Rates live only in `institution/proposal-logistics.md`; other files point to it.
4. Reusable prose goes in `boilerplate/` with the date written and who approved it.

## What not to put here
- Anything that identifies a patient or research participant.
- Passwords, account numbers, personal identifiers of staff (Social Security numbers, eRA Commons passwords).
- Unpublished data or another investigator's proposal text without their agreement. Check whether the repository is public before adding anything you would not post on a website.

## Most useful things to add next
1. Current HSC F&A rate agreement and fringe benefit rate sheet.
2. HSC Sponsored Projects institutional information sheet (legal name, UEI, EIN, congressional district, authorized official, internal deadline policy).
3. A recent funded Facilities & Other Resources page from your department.
4. UNM Hospital facts sheet (beds, annual visits, trauma and specialty designations, payer and demographic mix).
5. Clinic or registry volumes for the populations you study.
6. College of Nursing research office information and any pilot funding programs.
7. Core facility list with equipment and directors.
