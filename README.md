# RealRednecks.de

Wannabe a Redneck? A static, client-side Redneck-O-Meter. The score is a parody and not an analysis of someone's identity.

## Hosting: Cloudflare Workers (NOT Pages)

- GitHub repository: `misterficker33/wannabe-a-redneck`
- Default branch: `main`
- Worker name: `realrednecks`
- Wrangler config: `wrangler.jsonc`
- Static asset folder: `public`

**Connect Cloudflare Workers Builds to this GitHub repository**, using the production branch `main`.

- Build command: `sh build.sh` (optional)
- Deploy command: `npx wrangler deploy`
- Root directory: repository root

Workers Builds automatically deploys new commits after the repository is connected and authorization is completed.

You can also run `sh build.sh && npx wrangler deploy` on a logged-in local machine with Wrangler.

## Custom domain

After a successful Worker deployment, assign `realrednecks.de` under the Worker's **Settings → Domains & Routes → Add → Custom Domain**.

For that to work, `realrednecks.de` must be an **active zone** in the same Cloudflare account, with nameservers correctly delegated by its registrar netcup. Cloudflare automatically handles the DNS target and certificate for a Worker custom domain; don't enter speculative DNS records.

Preserve email-related MX/TXT/DKIM/SPF records during any DNS migration.

## Privacy

All image processing happens inside the visitor's browser. The file is never uploaded. No facial recognition, demographic classification, or backend is used.

## Docs
- https://developers.cloudflare.com/workers/static-assets/get-started/
- https://developers.cloudflare.com/workers/ci-cd/builds/configuration/
- https://developers.cloudflare.com/workers/configuration/routing/custom-domains/

## Verified launch diagnostics (2026-11-08, GitHub Actions)

The read-only GitHub Actions check at [run 42527502995](https://github.com/misterficker33/wannabe-a-redneck/actions/runs/42527502995) found:

- **Registry nameservers:** `netcup.firstns.cc`, `netcup.secondns.at`, `netcup.thirdns.de`, `netcup.fourthns.systems`, `netcup.fifthns.com`. The domain is still delegated to netcup, not Cloudflare.
- **Apex A record:** `realrednecks.de → 46.38.243.234` (netcup DNS target, not the Worker custom domain).
- **WWW:** `www.realrednecks.de` returned `NXDOMAIN`.
- **HTTPS:** The root request timed out; WWW could not be resolved.

To make this Cloudflare Worker public on both hostnames, first activate the `realrednecks.de` zone in Cloudflare and replace the nameserver delegation **at netcup** with the **exact assigned pair displayed by Cloudflare**. Preserve existing email records. Then redeploy the Worker so the `custom_domain` routes in `wrangler.jsonc` can be provisioned. Note that two Workers Builds projects are currently connected to the repository (`wannabe-a-redneck` and `wannabe-a-redneck8`); choose the intended deployment target in Cloudflare.
