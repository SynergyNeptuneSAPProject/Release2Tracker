# Project Synergy Neptune — Release 2 Dashboard

An interactive project tracker dashboard for the **R2 Integration Plan** and **R2 SCM Plan**.

🌐 **Live at:** `https://<your-username>.github.io/synergy-neptune-r2/`

---

## 🚀 Hosting on GitHub Pages (Step-by-step)

### Step 1 — Create a GitHub account
If you don't have one: https://github.com/signup

---

### Step 2 — Create a new repository

1. Go to https://github.com/new
2. Fill in:
   - **Repository name:** `synergy-neptune-r2`
   - **Visibility:** Choose **Public** (required for free GitHub Pages) or **Private** (requires GitHub Pro)
   - ✅ Check **"Add a README file"** — or leave it unchecked (we have our own)
3. Click **Create repository**

---

### Step 3 — Upload the dashboard file

**Option A — Using the GitHub website (easiest):**

1. Open your new repository
2. Click **"Add file"** → **"Upload files"**
3. Drag and drop **`index.html`** into the upload area
4. Scroll down, add a commit message (e.g. `Initial dashboard upload`)
5. Click **"Commit changes"**

**Option B — Using Git on your computer:**

```bash
# Clone your new repo
git clone https://github.com/<your-username>/synergy-neptune-r2.git
cd synergy-neptune-r2

# Copy index.html into the folder
# (place the index.html file here)

git add index.html
git commit -m "Add Project Synergy Neptune R2 dashboard"
git push origin main
```

---

### Step 4 — Enable GitHub Pages

1. In your repository, click **Settings** (top tab)
2. Scroll down to **"Pages"** in the left sidebar
3. Under **"Source"**, select:
   - Branch: **`main`**
   - Folder: **`/ (root)`**
4. Click **Save**
5. Wait ~60 seconds, then refresh the page
6. You'll see: **"Your site is live at `https://<your-username>.github.io/synergy-neptune-r2/`"**

---

### Step 5 — Share the link with your team

Send the URL to all team members. They can open it in any browser — no installation needed.

---

## 🔄 Updating the Dashboard

Whenever you make changes (new data, config tweaks, etc.):

**Via GitHub website:**
1. Open the repository
2. Click on `index.html`
3. Click the ✏️ **pencil (edit) icon**
4. Make changes or replace content
5. Click **"Commit changes"**
6. The live site updates in ~30–60 seconds

**Via Git:**
```bash
# Replace index.html with the updated file, then:
git add index.html
git commit -m "Update dashboard data"
git push origin main
```

---

## ⚠️ Important: Team Data Sync

This dashboard stores edits (phase toggles, status changes) in **each user's own browser localStorage**. This means:

- Changes made by User A are **not automatically visible** to User B
- Each person's browser has its own copy of the data

**Recommended workflow for teams:**

1. Designate **one person** as the data owner
2. They make updates → use **Export → Download CSV** or **Download Excel**
3. Upload the updated `index.html` to GitHub (with embedded data) — OR share the exported file for others to import via **Import / Export tab**

> For real-time multi-user sync, see the Firebase upgrade section below.

---

## 📁 Repository Structure

```
synergy-neptune-r2/
├── index.html      ← The complete self-contained dashboard
└── README.md       ← This file
```

No build tools, no dependencies, no server required. Everything is in `index.html`.

---

## ✨ Features

| Feature | Details |
|---|---|
| Dual-plan switcher | Integration Plan (72 items) · SCM Plan (100 WRICEFs) |
| KPI cards | Animated counters with click-to-expand popups |
| Charts | System/Category bar · Phase completion doughnut · Status distribution |
| Gantt timeline | Per-group delivery windows with hover tooltips |
| Deadline Missed Items | Auto-sorted by days overdue with urgency colour coding |
| Phase tracking | 7-phase dots per row · hover preview · click to mark ✓/✗ |
| Filters | Group, Status (active values only), full-text search |
| Edit data | Inline editor with status dropdown (30 statuses) |
| Excel import | Drag & drop .xlsx upload with column mapper |
| Export | CSV + Excel (.xlsx) download |
| Particle background | Animated canvas with mouse interaction |
| Responsive | Works on desktop, tablet, and mobile |

---

## 🌐 Custom Domain (Optional)

To use your own domain (e.g. `dashboard.yourcompany.com`):

1. In repository **Settings → Pages**, enter your domain in **"Custom domain"**
2. In your DNS provider, add a **CNAME record**:
   - Name: `dashboard`
   - Value: `<your-username>.github.io`
3. Check **"Enforce HTTPS"**

---

## 🔒 Making it Private

Free GitHub Pages requires a **public** repository. Options for private hosting:

| Option | Cost | Notes |
|---|---|---|
| GitHub Pro + private repo | ~$4/month | Pages works with private repos |
| Netlify | Free tier | Drag-and-drop deploy, private with paid plan |
| SharePoint / OneDrive | Free (if licensed) | Share the HTML file directly |
| Internal web server | Varies | Place `index.html` on any web server |

---

## 🔥 Firebase Real-time Upgrade (Future)

To enable real-time sync so all team members see each other's updates instantly:

1. Create a free Firebase project at https://firebase.google.com
2. Enable **Firestore Database**
3. Replace the `localStorage` calls in `index.html` with Firestore reads/writes
4. Add Firebase Authentication for user identification

> Contact your developer to implement this upgrade (~2–3 hours of work).

---

*Project Synergy Neptune · Release 2 · Dashboard v1.0*
