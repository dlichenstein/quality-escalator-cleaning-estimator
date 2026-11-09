# Quality Escalator Cleaning Estimator

Cross-platform estimating application for Quality Cleaning Equipment & Supply.

## What this project produces

- Windows desktop app through Electron
- Android app through Capacitor
- Responsive browser/PWA version
- One shared estimating engine and settings model

## Core estimating workflow

1. Enter customer/job information.
2. Enter one escalator.
3. Calculate time and price.
4. Add the escalator to the job.
5. Repeat for additional escalators.
6. Review the job summary.
7. Generate a customer-facing estimate and print/save it as PDF.

## Important estimating logic

The BR 52/11 working width and production rates are editable settings. Starting values are placeholders and should be calibrated against Quality's actual field production.

The estimator distinguishes:
- elapsed/clock time
- crew labor-hours
- billable labor price

## Build

See `BUILD-WALKTHROUGH.md` for the simplest click-ready Windows + Android build process using GitHub Actions.
