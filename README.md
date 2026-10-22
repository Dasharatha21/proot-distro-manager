<div align="center">

# 🐧 Termux Proot-Distro Easy Manager (v2.0)
### **Apne Android Phone mein Linux Chalayein — Bina Root aur Bina Coding Ke!**

![Termux](https://img.shields.io/badge/Platform-Termux%20(Android)-green?style=for-the-badge&logo=android)
![Linux](https://img.shields.io/badge/OS-Ubuntu%20%7C%20Debian%20%7C%20Arch%20%7C%20Alpine-blue?style=for-the-badge&logo=linux)
![Beginner Friendly](https://img.shields.io/badge/Level-100%25%20Beginner%20Friendly-orange?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-purple?style=for-the-badge)

*Naye aur non-technical users ke liye sabse aasan Hinglish Menu Tool! Ab aapko lambe commands yaad rakhne ki zaroorat nahi hai—bas **1, 2, 3** number dabayein aur Linux chalayein.*

</div>

---

## 🌟 Yeh Tool Kya Karta Hai? (What is this?)

Agar aap apne Android phone mein computer jaisa **Linux (Ubuntu, Debian, Arch, etc.)** chalana chahte hain, toh aam taur par bahut saare mushkil commands likhne padte hain. 

**Proot-Distro Easy Manager** aapko ek **ATM machine jaisa simple menu** deta hai:
- ❌ Koi mushkil command yaad nahi rakhna.
- ❌ Spelling mistake ka darr nahi (Number daba kar Linux install karein).
- ❌ Phone ko **Root** karne ki zaroorat nahi (100% Safe).

---

## 🗺️ Visual Guide: Shuru Se Aakhir Tak (How It Works)

```mermaid
flowchart LR
    A[📱 Step 1: Install Termux App] --> B[📋 Step 2: Copy-Paste 1 Command]
    B --> C[🔢 Step 3: Press '3' to Install Ubuntu]
    C --> D[🚀 Step 4: Press '4' to Start Linux!]
    style A fill:#1e293b,stroke:#38bdf8,stroke-width:2px,color:#fff
    style B fill:#1e293b,stroke:#4ade80,stroke-width:2px,color:#fff
    style C fill:#1e293b,stroke:#facc15,stroke-width:2px,color:#fff
    style D fill:#065f46,stroke:#34d399,stroke-width:2px,color:#fff
```

---

## 📥 Step 1: Sahi Termux App Download Karein

> ⚠️ **Zaroori Soochana:** Google Play Store wala Termux purana ho chuka hai aur kaam nahi karta. 

1. Niche diye gaye button par click karke **F-Droid** ya **GitHub** se official Termux APK download aur install karein:
   - 👉 **[Download Termux APK (F-Droid Official)](https://f-droid.org/repo/com.termux_1020.apk)**
2. App open karein. Aapke samne ek black screen (Terminal) khulegi.

---

## ⚡ Step 2: One-Click Installation (Sabse Aasan Tarika)

Non-technical users ko alag-alag commands likhne ki zaroorat nahi hai! Bas niche diye gaye **ek single command** ko copy karein, Termux mein **Long Press -> Paste** karein aur **Enter** daba dein:

```bash
pkg update -y && pkg install git -y && rm -rf proot-distro-manager && git clone https://github.com/Dasharatha21/proot-distro-manager.git && cd proot-distro-manager && chmod +x distro-manager.sh && ./distro-manager.sh
```

*(💡 **Tip:** Agar beech mein kahin `[Y/n]` pooche, toh bas `y` likh kar Enter daba dein).*

---

## 🖥️ Step 3: Visual Preview (Aapko Screen Par Kya Dikhega?)

Jab aap tool run karenge, toh aapko aisi colorful screen dikhegi:

```text
=======================================================
         🐧 TERMUX LINUX EASY MANAGER v2.0 🐧
       (Non-Technical Users Ke Liye Aasan Tool)
=======================================================
 Status: [✓] Ready (Proot-Distro Installed Hai)
-------------------------------------------------------

Kripya ek number chunein (Choose an option):

  [1] 🛠️  First Time Setup & Update (Sabse Pehle Ye Karein)
  [2] 📋  Available Linux List Dekhein
  [3] 📥  Naya Linux Install Karein (Ubuntu, Debian, etc.)
  [4] 🚀  Linux Start / Login Karein (Use Linux)
  [5] 🗑️  Linux Delete (Remove) Karein
  [6] ❓  Help & Guide (Kaise Use Karein?)
  [0] ❌  Exit (Bahar Niklein)

👉 Apna option number likhein (0-6): 
```

---

## 📖 Step-by-Step: Linux Install Aur Use Kaise Karein?

### 🟢 1. Pehli Baar Setup Karein
- Menu mein **`1`** likh kar **Enter** dabayein.
- Yeh aapke Termux ko update karega aur zaroori system (`proot-distro`) apne aap install kar dega.

### 🟢 2. Apna Manpasand Linux Install Karein
- Menu mein **`3`** likh kar **Enter** dabayein.
- Ab aapko naam likhne ki zaroorat nahi hai! Aapke samne ek choti list aayegi:
  ```text
  Kaunsa Linux install karna chahte hain?
    [1] Ubuntu      (🌟 Best for Beginners - Sabse Aasan)
    [2] Debian      (Stable aur Fast)
    [3] Alpine      (Bahut Chota - Sirf ~50MB Internet lagega)
    [4] Arch Linux  (Advanced Users ke liye)
    [5] Fedora      (Modern Linux)
    [6] Koi Dusra   (List dekh kar naam likhein)
  ```
- Agar aap naye hain, toh bas **`1` (Ubuntu)** dabayein aur **Enter** karein. (Ismein 200MB - 500MB internet data lagega).

### 🟢 3. Linux ke Andar Jayein (Login)
- Jab install ho jaye, toh Main Menu mein **`4`** dabayein.
- Phir **`1` (Ubuntu)** chunein.
- Ab aap dekhenge ki screen par `root@localhost:~#` likha aa gaya hai — **Badhai ho! Ab aapke phone mein Linux chal raha hai!** 🎉

### 🔴 4. Linux se Wapas Bahar Kaise Niklein?
- Jab aapka kaam khatam ho jaye aur wapas Termux menu mein aana ho, toh bas yeh likhein aur Enter dabayein:
  ```bash
  exit
  ```

---

## 🔄 Dubara Open Kaise Karein? (Next Time Usage)

Jab aap Termux app band karke agle din dubara kholenge, toh tool start karne ke liye bas yeh chota command likhein:

```bash
cd ~/proot-distro-manager && ./distro-manager.sh
```

---

## 🛠️ Manual Commands (Agar Aap Khud Commands Sikhna Chahte Hain)

Agar aap bina menu ke direct commands chalana chahte hain, toh yeh table dekhein:

| Kaam (Action) | Command | Example |
| :--- | :--- | :--- |
| **Termux Update karein** | `apt update && yes \| apt upgrade` | - |
| **Proot-Distro dalein** | `pkg install proot-distro -y` | - |
| **Linux ki List dekhein** | `proot-distro list` | - |
| **Linux Install karein** | `proot-distro install <naam>` | `proot-distro install ubuntu` |
| **Linux Start karein** | `proot-distro login <naam>` | `proot-distro login ubuntu` |
| **Linux Delete karein** | `proot-distro remove <naam>` | `proot-distro remove ubuntu` |

---

## ❓ Aksar Pooche Jane Wale Sawal (FAQ for Beginners)

<details>
<summary><b>Q1: Kya isse mera phone kharab ya Root hoga?</b></summary>
Nahi! Yeh 100% safe hai. Yeh Termux app ke andar ek virtual container banata hai. Agar aap Termux uninstall kar denge, toh sab kuch pehle jaisa normal ho jayega.
</details>

<details>
<summary><b>Q2: Kitna Internet (Data) aur Storage chahiye?</b></summary>
- <b>Alpine Linux:</b> ~50 MB data aur ~150 MB phone storage.<br>
- <b>Ubuntu / Debian:</b> ~250 MB data aur ~1.5 GB phone storage.
</details>

<details>
<summary><b>Q3: Permission Denied error aa raha hai, kya karu?</b></summary>
Agar <code>./distro-manager.sh</code> chalane par Permission Denied aaye, toh pehle <code>chmod +x distro-manager.sh</code> likh kar Enter dabayein, ya seedha <code>bash distro-manager.sh</code> likhein.
</details>

---

<div align="center">
  <b>Made with ❤️ by <a href="https://github.com/Dasharatha21">Dasharatha21</a> for the Termux Community</b><br>
  <i>Agar yeh tool aapko pasand aaya, toh upar ⭐ <b>Star</b> button zaroor dabayein!</i>
</div>
