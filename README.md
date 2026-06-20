# My Visa Assistance

A comprehensive static website providing visa information, requirements, guides, and application support for travelers worldwide. Built as a fully static site deployable to GitHub Pages.

## 🚀 Live Site

**https://www.myvisaassistance.com**

## 📋 Features

- **Visa Guides** — 35 country-specific visa guides with requirements, fees, and step-by-step instructions
- **Visa Requirements** — Detailed eligibility criteria and documentation for each country
- **Blog** — 14 informative articles on visa processes, tips, and travel guidance
- **Visa Fee Comparison** — Side-by-side visa fee comparisons across countries
- **Embassy Addresses** — Contact details and addresses for embassies and consulates
- **Passport Ranking** — Global passport strength comparison
- **Upcoming Events** — Visa-related workshops and events calendar
- **Responsive Design** — Mobile-first layout with smooth navigation

## 🏗 Architecture

- **Stack**: Pure HTML/CSS/JavaScript (static site, no backend)
- **Styling**: Inline critical CSS with deferred external stylesheet
- **Icons**: Bootstrap Icons via CDN
- **Analytics**: Google Analytics (gtag.js)
- **Fonts**: System font stack for optimal performance
- **Hosting**: GitHub Pages ready

## 📁 Project Structure

```
/
├── index.html                    # Homepage
├── 404.html                      # Custom 404 page
├── about/                        # About page
├── blog/                         # Blog articles (14 posts)
│   ├── index.html
│   └── [post-name]/index.html
├── contact/                      # Contact page
├── embassy-address/              # Embassy directory
├── passport-ranking/             # Passport index
├── privacy-policy/               # Privacy policy
├── terms-of-service/             # Terms of service
├── upcoming-events/              # Events calendar
├── visa-guide/                   # Country visa guides (35 countries)
│   ├── index.html
│   └── [country]-visa/index.html
├── visa-requirements/            # Country visa requirements (28+ countries)
│   ├── index.html
│   └── [country]-visa-requirements/index.html
├── css/
│   └── style.css                 # Main stylesheet
├── js/
│   ├── main.js                   # Core JavaScript (navigation, scroll, etc.)
│   └── countries.js              # Country data
├── favicon/                      # Favicon files
├── robots.txt                    # Search engine crawling rules
├── sitemap.xml                   # XML sitemap (91 URLs)
└── .gitignore
```

## 🚀 Deployment

### GitHub Pages (recommended)

1. Push this repository to GitHub
2. Go to **Settings > Pages**
3. Select **Deploy from a branch** → `main` / `docs` folder
4. If using a custom domain, add a `CNAME` file or configure in Settings

### Prerequisites

- No build tools required (pure static HTML)
- A GitHub account for GitHub Pages deployment
- (Optional) Custom domain with DNS configured

## 🔧 Local Development

No build step needed. Simply serve the root directory:

```bash
# Using Python
python -m http.server 8000

# Using Node.js (npx)
npx serve .
```

## 📄 License

© 2026 My Visa Assistance. All rights reserved.

*This is a private visa information portal. We are not affiliated with any government agency, embassy, or consulate.*
