# Explore Bihar — Tourism & Heritage Website

> A hand-coded, six-page tourism website celebrating the history, folk art, culture, and travel destinations of Bihar, India. Built with pure HTML5 and CSS3 — no frameworks, no libraries.

---

## Overview

**Explore Bihar** is a static tourism website that guides visitors through one of India's most historically significant states. The site is themed around Bihar's internationally recognised **Madhubani folk art** tradition — every colour choice, border style, SVG motif, and animation is rooted in that visual language.

The project was developed as an individual submission for **COM4014 Web Development** and demonstrates end-to-end static web development: information architecture, responsive layout, accessibility, character encoding hygiene, and original content writing.

---

## Pages

| Page | File | Description |
|------|------|-------------|
| Home | `index.html` | Hero, stats bar, featured destinations, Madhubani art showcase |
| Destinations | `destinations.html` | Full profiles of 5 Bihar destinations |
| Culture | `culture.html` | Art, festivals, food, music and dance |
| Travel Guide | `travelguide.html` | Season table, transport, hotels, budget, safety, checklist |
| Gallery | `gallery.html` | Filterable photo grid |
| Contact | `contact.html` | Enquiry form with validation + FAQ |

---

## Project Structure

```
bihar_tour/
│
├── index.html              ← Homepage
├── destinations.html       ← Five destination profiles
├── culture.html            ← Cultural traditions deep-dive
├── travelguide.html        ← Practical travel information
├── gallery.html            ← Photo gallery with category filter
├── contact.html            ← Contact form and FAQ
│
├── css/
│   ├── style.css           ← Core layout, grid, components, responsiveness
│   └── madhubani.css       ← Madhubani art theme, SVG motifs, animations
│
└── images/
    ├── hero-bg.png
    ├── nalanda.png
    ├── rajgir.png
    ├── chhath.png
    ├── madhubani.png
    └── valmiki.png
```

---

## Tech Stack

| Layer | Technology | Notes |
|-------|-----------|-------|
| Structure | HTML5 | Semantic elements throughout |
| Styling | CSS3 | Grid, Flexbox, custom properties, keyframe animations |
| Interactivity | Vanilla JavaScript | Hamburger nav, form validation, gallery filter, scroll-reveal |
| Fonts | Google Fonts | Tiro Devanagari Hindi + Poppins |
| Icons / Art | Inline SVG | All motifs hand-written — fish, peacock, mandala, wave borders |
| No frameworks | — | Zero Bootstrap, Tailwind, jQuery, or React |

---

## Design System

### Colour Palette

Each colour is drawn from the natural pigments traditionally used in Madhubani painting.

| Name | Hex | Source Pigment |
|------|-----|---------------|
| Indigo | `#1a237e` | Indigofera plant |
| Crimson | `#c0392b` | Vermilion / Sindoor |
| Saffron | `#e67e22` | Turmeric + pomegranate rind |
| Turmeric | `#f1c40f` | Haldi |
| Cream | `#fdf6e3` | Handmade Mithila paper |
| Teal | `#00695c` | Neel (indigo wash) |
| Earth | `#5d4037` | Kohl / lampblack |

### Typography

- **Headings:** Tiro Devanagari Hindi — chosen for its calligraphic affinity with Mithila script traditions
- **Body & UI:** Poppins — clean, geometric, highly legible at small sizes

### Card Style

Cards use a **hard offset shadow** (`4px 4px 0 saffron`) to echo the flat, two-dimensional quality of Madhubani paintings — avoiding the soft, blurred shadows of conventional modern UI.

---

## Key Features

- **Madhubani art banner** — continuous CSS marquee across every page
- **Animated SVG motifs** — fish (fertility), peacock (beauty), mandala (cosmic order)
- **Scroll-reveal** — cards and sections animate into view using `IntersectionObserver`
- **Responsive navigation** — desktop horizontal nav collapses to hamburger on mobile
- **Season table** — HTML `<table>` comparing Bihar's four seasons with star ratings
- **Gallery filter** — category buttons show/hide items without page reload
- **Contact form** — HTML5 required fields + JS `checkValidity()` + success message
- **Zero encoding errors** — all special characters use safe HTML entities

---

## Madhubani Motifs & Their Meanings

| Symbol | HTML Entity | Meaning in Madhubani Tradition |
|--------|-------------|-------------------------------|
| Fish (Matsya) | `&#x1F41F;` | Fertility, abundance, auspiciousness |
| Lotus (Kamal) | `&#x273F;` | Purity, transcendence, divine energy |
| Peacock (Mor) | `&#x1F99A;` | Eternal beauty, monsoon, love |
| Sun (Surya) | `&#x2600;` | Cosmic life force, Chhath Puja |
| Serpent (Nag) | `&#x1F40D;` | Protection, household guardian |
| Elephant (Hathi) | `&#x1F418;` | Wisdom, royalty, Ganesh |

---

## Responsive Breakpoints

| Breakpoint | Viewport | Layout |
|------------|----------|--------|
| Desktop | ≥ 1200px | 3-column grid; two-column feature layouts |
| Tablet | 769px – 1199px | 2-column grid; reduced spacing |
| Mobile | ≤ 768px | Single column; hamburger menu; decorative SVGs hidden |
| Small Mobile | ≤ 480px | Stat cards collapse to single column |

---

## Accessibility

- Single `<h1>` per page; correct `h1 → h2 → h3` hierarchy throughout
- `aria-label` on every landmark navigation element
- `aria-expanded` updated dynamically on the hamburger button
- `aria-hidden="true"` on all decorative SVGs and ornamental elements
- `role="alert"` + `aria-live="polite"` on the contact form success message
- Descriptive `alt` text on every `<img>` element
- All form `<input>` and `<select>` elements linked to `<label>` via `for` / `id`

---

## How to Run

No build step required. Open directly in any modern browser:

```bash
# Option 1 — Open the file directly
start index.html          # Windows
open index.html           # macOS

# Option 2 — Serve locally (optional, for cleaner file paths)
npx serve .
# Then visit http://localhost:3000
```

---

## Animations Reference

| Animation | Element | Duration |
|-----------|---------|---------|
| `pageLoad` | Body fade-in on every page load | 0.6s |
| `fishFloat` | Hero fish SVGs — gentle sway | 4s loop |
| `artMarquee` | Top banner continuous scroll | 28s loop |
| `mandalaRotate` | About section watermark | 30s loop |
| `folkSpin` | Section divider icon | 8s loop |
| `ornamentPulse` | Section symbol rows | 3s loop |
| `statPop` | Stats bar numbers spring in | 0.5s |
| `badgeFloat` | About section badge hover | 4s loop |
| Scroll-reveal | Cards and sections on scroll | 0.6s |

---

## Academic Context

- **Module:** COM4014 — Web Development
- **Year:** 2025
- **Requirement:** Static website using HTML and CSS only; no frameworks
- **Original content:** All written content is original — no text is reproduced from external sources
- **Purpose:** Educational demonstration only

---

## Author

**Ritik**
COM4014 Student | 2025

---

*Explore Bihar — original content and code created for educational purposes only.*
