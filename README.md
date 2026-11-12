# UNM-NIH-Agent

A Claude skill that acts as an NIH grant-writing expert for University of New Mexico investigators, backed by a growing library of UNM institutional data (Health Sciences Center, UNM Hospital, School of Medicine, College of Nursing and other units).

## What is here

```
unm-nih-grant-writer/        the skill
├── SKILL.md                 how the skill works
├── references/              NIH knowledge: application anatomy, writing craft, policy watch
├── scripts/                 pulls the latest data from this repository at run time
└── unm-data/                the UNM data library  <- add your data here
    ├── INDEX.md             map of the library
    ├── HOW-TO-ADD-DATA.md   how to add and tag information
    ├── institution/         overview, pre-award logistics, rates, identifiers
    ├── units/               HSC, UNM Hospital, College of Nursing, centers and cores
    └── boilerplate/         reusable approved text
```

## Adding data

Put files or facts in `unm-nih-grant-writer/unm-data/` and add a line to `INDEX.md`. See `HOW-TO-ADD-DATA.md`. The skill fetches the newest copy of this repository each time it runs, so new data is used without reinstalling the skill.

Do not add patient-identifiable information, credentials, or unpublished material you would not want visible to anyone who can see this repository.

## Installing

Install the packaged `unm-nih-grant-writer.skill` file in Claude, or copy the `unm-nih-grant-writer/` folder into your skills directory.
