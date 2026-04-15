# How to Run a Shell Script (For Complete Beginners)

This guide explains how to run a `.sh` shell script on **Linux**, **macOS**, and **Windows**.

---

## For Linux and macOS

### Step 1: Fix "Permission Denied" Error

Open the **Terminal**, go to the folder where your script is saved, and run:

```bash
chmod +x your-script-name.sh
```

**Example:**
```bash
chmod +x setup.sh
```

> `chmod +x` gives the script permission to run.

### Step 2: Run the Script

```bash
./your-script-name.sh
```

**Alternative way:**
```bash
bash your-script-name.sh
```

### Quick Summary (Linux/macOS)

```bash
# 1. Go to the folder with your script
cd path/to/your/folder

# 2. Make it executable (Fix Permission Denied)
chmod +x your-script-name.sh

# 3. Run the script
./your-script-name.sh
```

---

## For Windows PC

Windows does not run `.sh` files natively like Linux/macOS.

### Using PowerShell / Command Prompt (without extra tools)

```powershell
bash your-script-name.sh
```

---

## Common Issues & Fixes

| Problem                        | Solution                                                                 |
|-------------------------------|--------------------------------------------------------------------------|
| Permission denied             | Run `chmod +x your-script-name.sh`                                      |
| Command not found             | Make sure you are in the correct folder (`cd` to the folder first)      |
| On Windows - nothing happens  | Use **Git Bash** (Option 1) — easiest for beginners                     |
| "bash: command not found"     | Install Git or WSL                                                      |
| Script needs admin rights     | On Windows: Right-click Git Bash → "Run as administrator"               |

### How to Check Current Folder

- **Linux/macOS/Git Bash**: `pwd` (shows current path)
- **Windows**: `cd` (shows current path)