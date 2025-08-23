# YouTube Transcript Automation

Automate the process of collecting **YouTube transcripts** in bulk using a combination of:
- **AutoHotkey script** (Windows only)
- **Chrome extensions** for grabbing video URLs and mouse coordinates
- A **local HTML dashboard** to manage links and track progress

This workflow helps you copy transcripts from hundreds of videos into a text file, which can then be split and imported into tools like [NotebookLM](https://notebooklm.google/).

---

## ✨ Features
- Bulk import video URLs using **Link Grabber**
- Customizable **AutoHotkey script** to auto-click transcript and copy text
- Progress tracking and completion screen
- Saves all transcripts into a text file for backup
- Simple HTML interface for pasting, generating, and managing URLs

---

## 📦 Installation

### 1. Clone the repo
```bash
git clone https://github.com/sagehawk/youtube-transcript-automation.git
cd youtube-transcript-automation
```

### 2. Install dependencies
- [AutoHotkey v2.0](https://www.autohotkey.com/)  
- Chrome extensions:
  - [YouTube Summary](https://chromewebstore.google.com/detail/youtube-summary-with-chat/nmmicjeknamkfloonkhhcjmomieiodli)  
  - [Link Grabber](https://chromewebstore.google.com/detail/link-grabber/jfkaiopedjohkgccocjchpbpekbfnidc)  
  - [Mouse Coordinates](https://chromewebstore.google.com/detail/mouse-coordinates/mfohnjojhopfcahiddmeljeholnciakl)  

### 3. Open the dashboard
- Open `index.html` in your browser.
- Paste YouTube video URLs into the text box.

### 4. Configure AutoHotkey script
1. Open any YouTube video in a maximized browser window.
2. Use **Mouse Coordinates** to copy the XY positions of:
   - The **Transcript dropdown** button  
   - The **Clipboard icon**  
3. Paste these values into `transcript_grabber.ahk` (Point 1 and Point 2).  
4. Save and run the script.

---

## 🚀 Usage

1. Use **Link Grabber** to grab all video links from a channel’s Videos tab.  
2. Paste them into the dashboard and click **Generate Links**.  
3. Open a blank text file and go back to the dashboard.  
4. Click **Ready**, then press **Ctrl+Alt+S** to start automation.  
5. Wait until all transcripts are copied.  
6. Press **Ctrl+Alt+P**, then go to your text editor and press **Ctrl+S** to save.  

⚠️ **Important:** Don’t undo or edit until the file is saved — you could lose everything.  

---

## 📝 Post-Processing
- Visit [wordcounter.io](https://wordcounter.io/)  
- Split your transcript file into chunks (up to **500,000 words each**)  
- Import into **NotebookLM** or your preferred analysis tool.  

---

## 📂 Repo Structure
```text
youtube-transcript-automation/
├── index.html              # Main dashboard UI
├── transcript_grabber.ahk  # AutoHotkey script
├── complete.html           # Completion page
├── success.mp3             # Completion sound
└── README.md               # Documentation
```

---

## ⚠️ Disclaimer
This tool is for **personal research and productivity** only.  
Respect YouTube’s [Terms of Service](https://www.youtube.com/t/terms) and avoid overloading requests.  

---

## 📜 License
MIT License © 2025
