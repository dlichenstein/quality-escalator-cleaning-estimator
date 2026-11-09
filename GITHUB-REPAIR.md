# GitHub Repair / Build Walkthrough

The previous GitHub run failed because the repository's `package.json` did not contain the `build:win` script. This version avoids depending on that script in GitHub Actions and verifies the project files before building.

## IMPORTANT: repository layout

At the ROOT of the GitHub repository, these files must be visible:

- package.json
- index.html
- capacitor.config.json
- electron/
- scripts/
- .github/

Do NOT have an extra `quality-escalator-estimator/` folder between the repository root and these files.

Correct:

```
repo root/
  package.json
  index.html
  .github/
  electron/
```

Incorrect:

```
repo root/
  quality-escalator-estimator/
    package.json
    index.html
    .github/
```

## Easiest fix

1. In GitHub, open the repository.
2. Go to the Code tab.
3. Delete the old project files/folders, or create a fresh repository.
4. Extract this ZIP on your PC.
5. Open the extracted `quality-escalator-estimator` folder.
6. Upload EVERYTHING INSIDE that folder to the ROOT of the GitHub repository.
7. Commit the changes.
8. Open Actions.
9. Select `Build Quality Escalator Estimator`.
10. Click `Run workflow`.
11. Wait for both Windows EXE and Android APK jobs to finish.
12. Open the completed run and download the artifacts.

## Expected artifacts

Windows:
`quality-escalator-estimator-windows`

Android:
`quality-escalator-estimator-android-debug`

The Windows artifact contains the installer and/or portable executable produced by Electron Builder.

The Android artifact contains `app-debug.apk`.
