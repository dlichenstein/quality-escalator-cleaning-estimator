# Quality Escalator Cleaning Estimator — Click-Ready Build Walkthrough

There are two ways to use this project.

## Fastest: build both apps with GitHub Actions

This is the easiest path if you do not want to install development software on your computer.

### 1. Create a GitHub account
Go to https://github.com/ and create an account if you do not already have one.

### 2. Create a new repository
Create a new repository named:
`quality-escalator-cleaning-estimator`

A private repository is fine.

### 3. Upload this entire project
Upload the contents of this folder, including:
- `.github/workflows/build.yml`
- `electron/`
- `scripts/`
- `index.html`
- `manifest.webmanifest`
- `sw.js`
- `package.json`
- `electron-builder.yml`
- `capacitor.config.json`
- icons

Do not upload the ZIP file inside the repository. Upload the files/folders themselves.

### 4. Start the build
Open the repository's **Actions** tab.
Choose **Build Quality Escalator Estimator**.
Click **Run workflow**.

The workflow creates two artifacts:
- `quality-escalator-estimator-windows` — Windows installer/portable build
- `quality-escalator-estimator-android-debug` — Android APK for testing

### 5. Download the Windows app
Open the completed workflow run and download the Windows artifact.
Extract it.
Run the `.exe` installer or portable executable.

### 6. Install the Android APK
Download the Android artifact to your Android phone/tablet.
Open the APK and allow installation from that source if Android asks.

The debug APK is intended for testing. A signed Play Store release can be added later.

## Local Windows build

If you want to build directly on a Windows PC instead:

1. Install Node.js 22 LTS/current from https://nodejs.org/
2. Open PowerShell in this project folder.
3. Run:
   `npm install`
4. Run:
   `npm run build:win`
5. Open the `dist` folder.

The Windows installer and portable build will be there.

## Local Android build

For Android development you need Android Studio and an Android SDK/JDK configured.
Then:

1. Open PowerShell in this project folder.
2. Run `npm install`.
3. Run `npx cap add android` once.
4. Run `npx cap sync android`.
5. Open the `android` folder in Android Studio, or run the included Gradle build script.

## Important

The application itself is one shared web UI/calculation engine. Windows uses Electron to package it as a desktop app. Android uses Capacitor to package the same UI as an Android app.

Do not edit the Windows and Android versions separately. Changes should be made in the shared project files, then both builds are regenerated.
