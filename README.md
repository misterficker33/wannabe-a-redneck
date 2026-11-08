# RealRednecks.de

**Wannabe a Redneck?** A parody selfie-rating website with a locally animated "Redneck-O-Meter".

## What it does
- Local photo picker and drag-and-drop
- Animated hammer strike and 0–100% meter
- Humorous captions and downloadable PNG results
- No backend, analytics, facial recognition or photo upload
- The numbers are a visual joke, not a classification of a person's identity or background

## Hosting: Cloudflare Pages (connected to GitHub)

Repository: `misterficker33/wannabe-a-redneck`
Branch: `main`

In [Cloudflare Workers & Pages](https://dash.cloudflare.com/), select **Create application → Pages → Import an existing Git repository**. Select this repository and use these settings:

| Setting | Value |
| --- | --- |
| Project name | `wannabe-a-redneck` (or any available name) |
| Production branch | `main` |
| Framework preset | `None` |
| Build command | `sh build.sh` |
| Build output directory | `dist` |
| Root directory | repository root (default) |

The build script copies `index.html` into `dist/index.html`. Cloudflare automatically deploys each new push to `main` after its Git integration is authorized.

The initial deployment should provide a `*.pages.dev` URL to test first.

## Domain: realrednecks.de (registered at netcup)

1. Add `realrednecks.de` as a zone in the **same Cloudflare account** used for Pages if it is not already present.
2. For the apex domain, netcup must delegate to the **exact two Cloudflare nameservers assigned to your zone**. In netcup CCP, update the domain's nameserver settings as appropriate for the domain/CloudDNS product. Do **not** use guessed nameserver names.
3. In the Cloudflare Pages project, go to **Custom domains → Set up a domain**, enter `realrednecks.de`, and complete the verification. With the zone active in Cloudflare, Cloudflare creates the needed DNS record automatically.
4. You may additionally add `www.realrednecks.de` as a custom domain if desired.
5. Preserve any existing email-related MX/TXT records when migrating DNS management.

DNS delegation can take time to propagate. Verify HTTPS and the exact hostname after activation.

Official docs:
- https://developers.cloudflare.com/pages/framework-guides/deploy-anything/
- https://developers.cloudflare.com/pages/configuration/custom-domains/
- https://www.netcup.com/de/helpcenter/dokumentation/domain/eigene-nameserver-cloud-dns

## Local development

Open `index.html` in a browser. No external dependencies or build tools are needed.

## Privacy and disclaimer

The browser processes the selected photo locally. The rating is a deterministic gag and **not** a real-world assessment.
