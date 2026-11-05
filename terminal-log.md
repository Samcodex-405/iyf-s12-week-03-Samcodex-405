# Terminal Practice Log – Lesson 5

**Student:** Shaniz Ann Mumbua  
**GitHub Username:** Samcodex-405  
**Programme:** IYF WeCan Academy – Season 12  
**Course:** Practical Web Development  
**Week:** 03  
**Lesson:** 05 – Command Line Essentials

---

## Task 5.1: Terminal Navigation

### Exercise 1: Basic Navigation

| Command | Description |
|---|---|
| `pwd` | Displays the current working directory. |
| `ls` | Lists files and directories in the current location. |
| `cd ~/Documents` | Navigates to the Documents directory. |
| `cd ..` | Moves one directory level up. |
| `cd ~` | Navigates to the home directory. |

### Exercise 2: Creating Project Structure

Commands used:

```bash
mkdir ~/terminal-practice
cd ~/terminal-practice
mkdir my-project
mkdir -p my-project/src/css my-project/src/js my-project/src/images
mkdir my-project/docs my-project/tests
touch my-project/README.md
ls -R my-project
```

**What I learned:**

- `mkdir` creates directories.
- `mkdir -p` creates nested directories, including missing parent directories.
- `touch` creates empty files.
- `ls -R` displays directory contents recursively.

---

## Task 5.2: File Operations

### Exercise 1: Creating and Editing Files

| Command | Description |
|---|---|
| `touch index.html` | Creates an empty HTML file. |
| `cat index.html` | Displays file contents. |
| `vi index.html` | Opens the file in the Vim text editor. |
| `cp index.html backup.html` | Creates a copy of the file. |
| `mv backup.html docs/` | Moves the backup file into docs. |
| `mv index.html home.html` | Renames the HTML file. |
| `rm home.html` | Deletes the file. |

### Exercise 2: Working with Directories

| Command | Description |
|---|---|
| `cp -r src/ src-backup/` | Copies a directory and its contents. |
| `mkdir archive` | Creates an archive directory. |
| `mv src-backup/ archive/` | Moves the copied directory into archive. |
| `rm -r archive/src-backup` | Removes the copied directory and its contents. |
| `rmdir archive/` | Removes an empty directory. |
| `rm -r archive/` | Removes a directory recursively. |

**What I learned:**

- The difference between copying and moving files.
- How to rename files using `mv`.
- How to delete files and directories.
- The difference between `rm`, `rm -r` and `rmdir`.

---

## Task 5.3: Useful Terminal Commands

### Search and Find

| Command | Description |
|---|---|
| `find . -name "*.html"` | Finds HTML files. |
| `grep "class" index.html` | Searches for the word class in an HTML file. |
| `grep -r "button" ./src/` | Searches recursively for the word button. |
| `history` | Displays terminal command history. |

### View and Edit

| Command | Description |
|---|---|
| `head -10 styles.css` | Displays the first 10 lines of CSS. |
| `tail -10 styles.css` | Displays the last 10 lines of CSS. |
| `wc index.html` | Counts lines, words and bytes. |
| `wc -l index.html` | Counts lines only. |

### Assignment Questions and Results

**1. How many HTML files are in my portfolio project?**

Command:

```bash
find . -type f -name "*.html" | wc -l
```

Result: [Enter the actual number returned by the terminal.]

**2. Which files contain the word contact?**

Command:

```bash
grep -ril "contact" .
```

Result: [Enter the actual filenames returned by the terminal.]

**3. How many lines is my CSS file?**

Command:

```bash
wc -l styles.css
```

Result: [Enter the actual number returned by the terminal.]

**4. What were my last 10 terminal commands?**

Command:

```bash
history 10
```

Result: [Record your actual last 10 commands.]

---

## Task 5.4: Shell Script Basics

### Project Setup Script

**Script name:** `new-project.sh`

**Purpose:** Automates the creation of a new project with standard folders and files.

### Bash Concepts Learned

| Concept | Description |
|---|---|
| Shebang (`#!/bin/bash`) | Specifies the Bash interpreter. |
| Variables | Store reusable information. |
| `$1` | Retrieves the first command-line argument. |
| `if` statements | Execute instructions based on conditions. |
| `-z` | Checks whether a string is empty. |
| `echo` | Displays messages or writes content to files. |
| `exit 1` | Stops a script with an error status. |
| `mkdir -p` | Creates nested directories. |
| `touch` | Creates empty files. |
| `chmod +x` | Adds executable permission. |

### Script Testing

**Test 1 – Missing project name**

Command:

```bash
bash new-project.sh
```

Expected behaviour: Displays an error and usage instructions.

**Test 2 – Creating a project**

Command:

```bash
bash new-project.sh my-awesome-app
```

Expected behaviour: Creates the project directories and files.

**Test 3 – Verifying the project**

Command:

```bash
find my-awesome-app -print
```

Expected behaviour: Displays the generated project structure.

### What I Learned

- How to create and execute Bash scripts.
- How to use variables and command-line arguments.
- How to implement conditional statements.
- How to automate repetitive development tasks.
- How to verify generated files and directories.

---

## Overall Lesson 5 Reflection

This lesson introduced essential command-line skills for managing development projects.

I learned how to navigate directories, create and organize files, search for information, inspect file contents and automate project setup using shell scripting.

These skills will help me manage my development environment more efficiently and prepare me for professional software development workflows.