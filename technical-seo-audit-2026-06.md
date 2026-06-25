# Technical SEO Audit — MyVisaAssistance.com

**Date:** 2026-06-24  
**Auditor:** OpenWork AI  
**Site URL:** https://www.myvisaassistance.com  
**Host:** GitHub Pages (CNAME: myvisaassistance.com)  
**Total HTML Pages:** 158  
**Sitemap URLs:** 129  
**Static Site:** Yes (no CMS, no SSR)

---

## Table of Contents

1. [Canonical URL Analysis](#1-canonical-url-analysis)
2. [WWW vs Non-WWW Handling](#2-www-vs-non-www-handling)
3. [Indexability & Meta Robots](#3-indexability--meta-robots)
4. [Robots.txt Analysis](#4-robotstxt-analysis)
5. [XML Sitemap Analysis](#5-xml-sitemap-analysis)
6. [Core Web Vitals & Performance](#6-core-web-vitals--performance)
7. [Mobile Friendliness](#7-mobile-friendliness)
8. [Structured Data (Schema.org)](#8-structured-data-schemaorg)
9. [Internal Linking & Site Architecture](#9-internal-linking--site-architecture)
10. [Action Plan & Priority Fixes](#10-action-plan--priority-fixes)

---

## 1. Canonical URL Analysis

### Current State

All 146 pages with canonical tags use `https://www.myvisaassistance.com/...` format.

**Trailing slash inconsistency detected:**

| Page | Canonical URL | Trailing Slash? |
|------|--------------|-----------------|
| Homepage | `/` | Yes |
| About | `/about` | **No** |
| Contact | `/contact` | **No** |
| Visa Guide | `/visa-guide/` | Yes |
| Visa Requirements | `/visa-requirements/` | Yes |
| Visa Services Pune | `/visa-services-pune/` | Yes |
| Visa Photo Requirements | `/visa-photo-requirements/` | Yes |
| Blog index | `/blog/` | Yes |
| Visa News | `/visa-news/` | Yes |
| Tracking Links | `/tracking-links/` | Yes |
| Upcoming Events | `/upcoming-events/` | Yes |
| Privacy Policy | `/privacy-policy/` | Yes |
| Terms of Service | `/terms-of-service/` | Yes |
| Blog posts | `/blog/post-name/` | Yes |
| Visa guide subpages | `/visa-guide/country-visa` | **No** |
| Visa req subpages | `/visa-requirements/country-visa-requirements` | **No** |
| 404 page | *(not checked)* | - |

**Issue:** About and Contact pages are missing trailing slashes while all other pages include them. Similarly, visa-guide/ and visa-requirements/ subpages lack trailing slashes but their index pages include them.

**Impact:** Medium — If both versions resolve (with and without slash), this creates potential duplicate content. GitHub Pages typically serves both, meaning `/about` and `/about/` may both return content.

**Fix:** Standardize — always use trailing slashes OR never use them. Recommended: always use trailing slashes (current majority pattern).

### Pages Missing Canonical Tags (~12 pages)

Some pages may lack canonical entirely based on grep output showing 146 matches across 158 HTML files. Likely missing on:
- Some blog subpages with minimal schema setup
- Possibly `404.html` and some auto-generated pages

---

## 2. WWW vs Non-WWW Handling

### Current State

- **CNAME file:** `myvisaassistance.com` (apex domain)
- **Canonical tags on all pages:** `https://www.myvisaassistance.com/...`
- **Sitemap URLs:** `https://www.myvisaassistance.com/...`
- **OG/Twitter URLs:** `https://www.myvisaassistance.com/...`

**ISSUE — SEVERE:** Domain served at apex (`myvisaassistance.com`) but ALL canonical/OG/sitemap URLs use `www.myvisaassistance.com`.

GitHub Pages with CNAME `myvisaassistance.com` serves the site at the **apex domain**. The `www` subdomain is a different hostname. Without a proper redirect (301) from `myvisaassistance.com` → `www.myvisaassistance.com`, or vice versa, there are two scenarios:

1. **If both resolve to the same content:** Duplicate content penalty risk. Google sees two copies of every page.
2. **If only apex resolves:** Canonical tags point to a domain that may not serve content (www).

**Fix options:**
- **Option A (Recommended):** Change all canonicals, sitemap, and OG URLs to `https://myvisaassistance.com/...` (match the CNAME apex domain)
- **Option B:** Add DNS CNAME record for `www` pointing to the GitHub Pages hostname AND configure GitHub Pages to redirect apex → www
- **Option C:** Set up a 301 redirect via `_redirects` file (requires GitHub Pages with Cloudflare or Netlify)

---

## 3. Indexability & Meta Robots

### Current State

- All 146+ pages: `<meta name="robots" content="index, follow">`
- Homepage also has `<meta name="revisit-after" content="7 days">` (non-standard, deprecated)

**Issues:**

| Issue | Severity |
|-------|----------|
| `revisit-after` meta tag on homepage — not recognized by Google, harmless but unnecessary | Low |
| No `noindex` on thin/spammy pages (tracking-links, some minimal blog pages might benefit from noindex) | Low |
| No `x-robots-tag` HTTP header (GitHub Pages doesn't allow custom headers easily) | Low |

### Verdict: ✅ Good — all pages are indexable and followable

---

## 4. Robots.txt Analysis

```
User-agent: *
Allow: /
Allow: /visa-guide/
Allow: /visa-requirements/
Allow: /blog/
Allow: /css/
Allow: /js/
Allow: /images/
Allow: /about/
Allow: /contact/
Disallow: /favicon/
Disallow: /generate-countries.ps1
Disallow: /scripts/
Crawl-delay: 10
Sitemap: https://www.myvisaassistance.com/sitemap.xml
```

### Issues

| # | Issue | Severity | Impact |
|---|-------|----------|--------|
| 1 | **`Crawl-delay: 10`** — 10-second delay between crawls is extremely restrictive. Googlebot typically ignores Crawl-delay but uses its own crawl rate, while Bing and Yandex respect it literally. At 10 seconds, Bing can crawl at most 8,640 pages/day despite only having 158 pages. | **High** | Slows indexation on non-Google search engines |
| 2 | **Explicit Allow directives are redundant** — `Allow: /` already permits everything. The specific Allows don't add value but aren't harmful. | Low | None |
| 3 | **`/favicon/` disallowed** — unnecessary; favicons are not indexed as content | Low | None |
| 4 | **`/scripts/` disallowed** — This blocks Google from seeing scripts that may contain inline JSON or structured data if any scripts are server-side generated. If scripts are purely JS, this is fine. | Medium if scripts contain content | Could block indexing of script-generated content |

### Recommended Fix

```diff
- Crawl-delay: 10
+ Crawl-delay: 2
```

Or remove entirely (Google ignores it anyway):

```
# Crawl-delay removed — Google manages crawl rate automatically
```

---

## 5. XML Sitemap Analysis

### Current State

- **Format:** Valid XML, proper `urlset` namespace
- **URLs listed:** 129
- **Last mod dates:** 2026-06-06 to 2026-06-22
- **Change frequencies:** weekly (top pages), monthly (content pages)
- **Priorities:** 1.0 (homepage), 0.9 (about, contact, blog, etc.), 0.8 (events, news, embassy), 0.7 (all guide/requirement pages), 0.5 (tracking-links)

### Missing Pages

| Missing URL | Linked From | Priority to Add |
|-------------|-------------|-----------------|
| `/visa-photo-requirements/` | Footer Quick Links | **High** |
| `/visa-services-pune/` | Footer Quick Links | **High** |
| `/blog/e-visa-countries-2026/` | (exists on disk?) | Medium |
| `/blog/china-visa-documents-2026/` | (exists on disk?) | Medium |

**Total pages on disk:** 158  
**Total pages in sitemap:** 129  
**Gap:** ~29 pages missing (includes 404.html which should NOT be in sitemap, plus pages listed above)

### Issues

| # | Issue | Severity | Fix |
|---|-------|----------|-----|
| 1 | Missing `/visa-photo-requirements/` | **High** | Add to sitemap with priority 0.7 |
| 2 | Missing `/visa-services-pune/` | **High** | Add to sitemap with priority 0.7 |
| 3 | Missing blog posts (if they exist on disk) | **High** | Audit and add all blog posts |
| 4 | Missing country guide pages added after sitemap generation | **Medium** | Add all newly added country pages |
| 5 | Inconsistent trailing slashes — sitemap URLs lack trailing slashes on subpages while index pages have them | **Low** | Standardize |
| 6 | Lastmod dates not updated when content changes | **Medium** | Update lastmod when content is modified |

---

## 6. Core Web Vitals & Performance

### Issues Found (Without Lab Testing)

| # | Issue | Estimated Impact |
|---|-------|------------------|
| 1 | **26+ scripts per page** (GTM, Tawk.to, main.js, inline CSS/JS, page loader, CDN bootstrap, etc.) | **High** — blocks main thread, delays interactivity |
| 2 | **Page loader animation** (SVG loader with `#page-loader` that hides on `window.load`) | **High** — adds 500ms+ to content visibility, hurts LCP |
| 3 | **Large inline CSS** (~90 lines of minified CSS repeated in every HTML file) | **Medium** — 3-5KB of CSS in every HTML file. Should be in external stylesheet |
| 4 | **No lazy loading on images** — `loading="lazy"` attribute not used on any `<img>` tags | **Medium** — all images load on initial page load |
| 5 | **Preloaded CSS with onload swap** (`<link rel="preload" as="style" onload="...">`) | ✅ Good practice — non-blocking CSS delivery |
| 6 | **No image optimization** — no WebP/AVIF formats, no srcset for responsive images | **Medium** — larger image payloads |
| 7 | **Missing width/height on images** — layout shift risk (CLS) | **High** — can cause cumulative layout shifts |
| 8 | **Tawk.to chat widget** loads synchronously in footer | **Medium** — adds render-blocking script |
| 9 | **Google Tag Manager** loads in `<head>` (async but still blocks) | **Medium** |
| 10 | **No service worker** for caching | **Low** — GitHub Pages doesn't easily support SW without HTTPS complexity |

### Quick Wins

1. Remove page loader animation (saves 500ms+ on LCP)
2. Add `loading="lazy"` on below-the-fold images
3. Add `width` and `height` attributes to all `<img>` tags
4. Move Tawk.to script to async/defer

---

## 7. Mobile Friendliness

### Assessment: ✅ Good

- Responsive design with breakpoints at 991px, 767px, 420px
- `font-size: clamp(...)` used for responsive typography
- Viewport meta tag: `width=device-width, initial-scale=1.0`
- Touch-friendly navigation with hamburger menu on mobile
- No horizontal overflow detected in CSS
- Adequate tap target sizes (buttons are 44px+)

### Minor Issues

- Some hero badges may wrap awkwardly on very small screens
- No viewport overflow protection (should add `overflow-x: hidden` on body)

---

## 8. Structured Data (Schema.org)

### Current Schema Types Used

| Schema Type | Pages Using It | Status |
|-------------|---------------|--------|
| `Organization` | Homepage only | ⚠️ **Contains placeholder data** |
| `FAQPage` | Homepage only | ✅ Valid, 3 questions |
| `BreadcrumbList` | Homepage | ⚠️ **Thin** — only 1 item |
| `WebPage` | About, Contact, Upcoming Events, + other top pages | ✅ Valid |
| `Blog` | Blog index page | ✅ Valid |
| `Article` | Blog posts | ✅ Valid |

### Organization Schema — Issues

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "My Visa Assistance",
  "url": "https://www.myvisaassistance.com",
  "logo": "https://www.myvisaassistance.com/favicon/logo.png",
  "description": "...",
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "+1-555-VISA-HELP",       // ❌ PLACEHOLDER — incorrect number
    "contactType": "customer service",
    "availableLanguage": ["English"]
  },
  "sameAs": [
    "https://facebook.com/myvisaassistance",   // ❌ May not exist
    "https://twitter.com/myvisahelp",          // ❌ May not exist
    "https://linkedin.com/company/myvisaassistance"  // ❌ May not exist
  ],
  "address": {
    "@type": "PostalAddress",
    "addressCountry": "US"                    // ❌ Should be IN (India-based business)
  }
}
```

**Critical fixes needed:**
1. `telephone`: Replace `+1-555-VISA-HELP` with `+91 85518 05523` (the actual business number)
2. `addressCountry`: Change from `"US"` to `"IN"` (India-based business)
3. `sameAs`: Either verify and keep the URLs, or remove them if the profiles don't exist

### Breadcrumb Schema — Thin

Homepage breadcrumb only has 1 item (Home). While technically valid, it should at minimum include the home item plus current section for sub-pages.

### Missing Schemas

| Missing Schema | Where | Benefit |
|---------------|-------|---------|
| `LocalBusiness` or `VisaService` | visa-services-pune page | Rich results for local service |
| `BreadcrumbList` | All sub-pages (visa-guide, blog, etc.) | Breadcrumb rich results in SERP |
| `WebSite` with `SearchAction` | Homepage | Sitelinks search box |
| `Product` or `Service` | Pricing/package mentions | Could show in rich results |

---

## 9. Internal Linking & Site Architecture

### Current Architecture

```
Homepage
├── About
├── Visa Guide (hub) → 33+ country guides
├── Visa Requirements (hub) → 33+ country requirements
├── Blog → 14+ blog posts
├── Contact
├── Embassy Address
├── Passport Ranking
├── Upcoming Events
├── Visa News
├── Visa Photo Requirements
├── Visa Services Pune
├── Tracking Links
├── Privacy Policy
├── Terms of Service
```

### Issues

| # | Issue | Severity | Details |
|---|-------|----------|---------|
| 1 | **Social media links all point to `#`** | **High** | Facebook, Twitter, LinkedIn, Instagram all have `href="#"` — broken links, bad UX, wasted link equity |
| 2 | **Country logos strip has duplicate entries** | **Medium** | Countries listed twice (USA, UK, Canada, etc.) = duplicate links, wasted crawl budget |
| 3 | **Visa Photo Requirements page not linked from homepage** | **Medium** | Only linked from footer — should be promoted from homepage body content |
| 4 | **Visa Services Pune page not linked from homepage** | **Medium** | Only linked from footer — if it's important content, link from homepage |
| 5 | **Breadcrumbs only on some pages** | **Medium** | Pages like tracking-links, visa-news lack breadcrumb navigation |
| 6 | **Navigation menu doesn't include all sections** | **Low** | Only Home, About, Visa Guide, Visa Requirements, Blog, Contact in main nav |
| 7 | **No "Related Content" or "You May Also Like" sections** | **Low** | Missed internal linking opportunity between country guides and blog posts |

---

## 10. Action Plan & Priority Fixes

### PRIORITY: CRITICAL (Fix immediately)

| # | Fix | Category | Effort | Implementation |
|---|-----|----------|--------|----------------|
| C1 | **Fix Organization schema placeholder data** | Structured Data | 10 min | Update homepage: phone → `+91 85518 05523`, country → `"IN"`, verify/remove sameAs |
| C2 | **Fix WWW vs apex canonical mismatch** | Canonical/WWW | 30 min | Either change all canonicals to apex OR set up www redirect via DNS/GH Pages config |
| C3 | **Add missing pages to sitemap** | Sitemap | 15 min | Add `/visa-photo-requirements/`, `/visa-services-pune/` |

### PRIORITY: HIGH

| # | Fix | Category | Effort |
|---|-----|----------|--------|
| H1 | **Reduce Crawl-delay** from 10 to 2 (or remove) | robots.txt | 2 min |
| H2 | **Fix social media links** — either point to real profiles or remove from footer | Internal Linking | 15 min |
| H3 | **Add BreadcrumbList schema to all sub-pages** | Structured Data | 2-3 hrs (requires editing 140+ pages or scripting) |
| H4 | **Remove page loader animation** — saves 500ms+ LCP | Performance | 15 min (edit each page template) |
| H5 | **Add `loading="lazy"` to below-fold images** | Performance | 1-2 hrs (scripted across all pages) |
| H6 | **Add `width`/`height` attributes to all images** | Performance/CLS | 2-4 hrs |

### PRIORITY: MEDIUM

| # | Fix | Category | Effort |
|---|-----|----------|--------|
| M1 | **Standardize trailing slashes on canonical tags** (about, contact, subpages) | Canonical | 30 min |
| M2 | **Add `LocalBusiness` schema to visa-services-pune page** | Structured Data | 15 min |
| M3 | **Add `WebSite` schema with SearchAction to homepage** | Structured Data | 10 min |
| M4 | **Update lastmod dates in sitemap** | Sitemap | 10 min |
| M5 | **Add breadcrumb navigation to pages lacking it** | Internal Linking | 1-2 hrs |
| M6 | **Move large inline CSS to external stylesheet** | Performance | 1 hr (scripted) |

### PRIORITY: LOW

| # | Fix | Category | Effort |
|---|-----|----------|--------|
| L1 | Remove deprecated `revisit-after` meta tag | Indexability | 5 min |
| L2 | Add `overflow-x: hidden` to body | Mobile | 2 min |
| L3 | De-duplicate country logos strip | Internal Linking | 15 min |
| L4 | Add `noindex` to thin pages (tracking-links if low value) | Indexability | 10 min |
| L5 | Add service worker for offline caching | Performance | 2-3 hrs |

---

## Implementation Code Samples

### C1: Fix Homepage Organization Schema

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "My Visa Assistance",
  "url": "https://www.myvisaassistance.com",
  "logo": "https://www.myvisaassistance.com/favicon/logo.png",
  "description": "Expert visa assistance providing comprehensive visa guides, requirements, and application support for all countries.",
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "+91-85518-05523",
    "contactType": "customer service",
    "availableLanguage": ["English", "Hindi", "Marathi"]
  },
  "address": {
    "@type": "PostalAddress",
    "addressCountry": "IN"
  }
}
```

### C2: Fix WWW/apex mismatch

**Option A (Change canonicals to apex):**
In every HTML file, change:
```
https://www.myvisaassistance.com
```
to:
```
https://myvisaassistance.com
```
Also update sitemap and OG tags.

**Option B (Setup WWW redirect):**
Add a `_redirects` file at the root (works with GitHub Pages when using Cloudflare or Netlify):
```
https://myvisaassistance.com/* https://www.myvisaassistance.com/:splat 301!
```

### C3: Sitemap additions

```xml
<url>
  <loc>https://www.myvisaassistance.com/visa-photo-requirements/</loc>
  <lastmod>2026-06-24</lastmod>
  <changefreq>monthly</changefreq>
  <priority>0.7</priority>
</url>
<url>
  <loc>https://www.myvisaassistance.com/visa-services-pune/</loc>
  <lastmod>2026-06-24</lastmod>
  <changefreq>monthly</changefreq>
  <priority>0.7</priority>
</url>
```

### H1: robots.txt fix

```diff
- Crawl-delay: 10
+ Crawl-delay: 2
```

---

## Summary Scorecard

| Category | Score | Status |
|----------|-------|--------|
| Canonical Tags | 7/10 | Inconsistent trailing slashes |
| WWW Handling | 4/10 | **CRITICAL** — mismatch between CNAME/apex and www canonical tags |
| Indexability | 9/10 | Minor: deprecated revisit-after |
| Robots.txt | 6/10 | Redundant Allows, overly aggressive Crawl-delay |
| Sitemap | 6/10 | 2+ important pages missing |
| Performance (est.) | 5/10 | Page loader, 26 scripts, no lazy loading, no image dimensions |
| Mobile Friendliness | 8/10 | Good responsive design, minor overflow concern |
| Structured Data | 5/10 | **CRITICAL** placeholder data in Organization schema, missing breadcrumbs on most pages |
| Internal Linking | 6/10 | Broken social links, duplicate logo strip entries |
| **Overall** | **6.2/10** | **3 critical, 6 high-priority issues to fix** |

---

*Generated by OpenWork AI — Technical SEO Audit 2026-06-24*
