# RealRednecks.de

**Wannabe a Redneck?** A ridiculous, fully client-side Redneck-O-Meter.

## Features
- Selfie upload via file picker or drag-and-drop
- Animated hammer strike and red 0–100% score meter
- Humorous verdicts and downloadable result image
- Responsive interface
- No backend, analytics, facial recognition or photo uploads
- Scores are deterministic visual jokes, **not** personality or demographic judgments

## Running locally
Open index.html in a browser. No build step or dependencies needed.

## GitHub Pages
1. Open **Settings → Pages → Build and deployment** for this repository.
2. Set **Source: GitHub Actions**.
3. Run the "Publish RealRednecks" workflow or push a commit to main.
4. Once the site is published, set the custom domain to **realrednecks.de** in Pages settings.

## netcup DNS for realrednecks.de
At your netcup DNS panel, replace existing **website-targeting** apex A records with four A records for @:
- 185.199.108.153
- 185.199.109.153
- 185.199.110.153
- 185.199.111.153

For **www**, use a CNAME pointing to **misterficker33.github.io** (not the repository subpath). Preserve MX/TXT entries used by mail or verification.

Wait for GitHub to confirm DNS and provision TLS, then check "Enforce HTTPS".

See https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site

## Privacy & disclaimer
All calculations and the meme PNG rendering happen locally in the browser. The selfie never leaves the device. This is parody, not an actual test of a person's identity or characteristics.
