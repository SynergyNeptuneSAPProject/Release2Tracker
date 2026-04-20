# Project Synergy Neptune — Release 2 Dashboard

Interactive real-time project tracker for the **R2 Integration Plan** and **R2 SCM Plan**.

🌐 **Live at:** `https://<your-username>.github.io/synergy-neptune-r2/`

---

## 🚀 Hosting on GitHub Pages

### Step 1 — Upload to GitHub

1. Go to **github.com/new** → name it `synergy-neptune-r2` → Public → Create
2. Click **Add file → Upload files** → drag all files from this ZIP → Commit
3. Go to **Settings → Pages** → Branch: `main`, folder: `/ (root)` → Save
4. Live in ~60 seconds at `https://YOUR-USERNAME.github.io/synergy-neptune-r2/`

---

## 🔥 Firebase Real-Time Sync Setup (Required for team collaboration)

Without Firebase, each person's browser stores data separately. With Firebase, all team members see each other's changes instantly.

### Step 1 — Create Firebase Project (free)

1. Go to **console.firebase.google.com**
2. Click **Add project** → name it `synergy-neptune-r2` → Continue → Create
3. In your project, click the **Web icon** `</>` → register app → name it `Dashboard`
4. Copy the `firebaseConfig` values shown — you'll need them shortly

### Step 2 — Enable Firestore Database

1. In Firebase Console → **Build → Firestore Database**
2. Click **Create database**
3. Choose **Start in test mode** → select your region → Enable

### Step 3 — Each team member connects

1. Open the dashboard URL
2. The **Firebase Setup** dialog appears automatically on first visit
3. Each person enters:
   - **API Key** (from firebaseConfig)
   - **Auth Domain** (e.g. `your-project.firebaseapp.com`)
   - **Project ID** (e.g. `synergy-neptune-r2`)
   - **Your Name** (shown to the team in the sync bar)
4. Click **Connect & Save**

That's it! The dashboard immediately loads shared data and all edits sync in real-time.

> The config is saved in each person's browser — they only enter it once.

### Firestore Security Rules (after testing)

Once the team is set up, update your Firestore rules from test mode to:

```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /r2data/{doc} {
      allow read, write: if true;
    }
  }
}
```

For stricter security, you can add Firebase Authentication later.

---

## 📋 Features

| Feature | Details |
|---|---|
| Real-time sync | All changes visible to all team members instantly |
| Dual plan | Integration Plan (72 items) · SCM Plan (100 WRICEFs) |
| Charts | System bar · Phase completion (Planned vs Actual) · Status distribution · System-wise completion |
| Gantt timeline | Per-group delivery windows |
| Deadline Missed Items | Auto-sorted by days overdue |
| Phase tracking | 7 phases per item · click to mark ✓/✗ |
| Status dropdown | 30 statuses across the lifecycle |
| Filters | Group, Status, full-text search |
| Excel import | Drag & drop .xlsx with column mapper |
| Export | CSV + Excel download |
| Sync status bar | Live indicator showing connection state and last saved time |

---

## 📁 Files

```
synergy-neptune-r2/
├── index.html                      ← Complete dashboard
├── README.md                       ← This file
├── .nojekyll                       ← Required for GitHub Pages
├── .gitignore
└── .github/workflows/deploy.yml   ← Auto-deploy on push
```

---

*Project Synergy Neptune · Release 2 · Dashboard v2.0 with Firebase Sync*
