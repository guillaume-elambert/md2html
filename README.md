# md2html<!-- omit in toc -->

## Summary<!-- omit in toc -->

- [1. Introduction](#1-introduction)
- [2. Getting started](#2-getting-started)
  - [2.1. Install with Makefile](#21-install-with-makefile)
  - [2.2. Install manually](#22-install-manually)
- [3. Usage](#3-usage)
  - [3.1. Options](#31-options)
  - [3.2. Examples](#32-examples)
  - [3.3. Result](#33-result)


<br/>

## 1. Introduction

This script was created to simplify the conversion of Markdown files into HTML files.
It uses the Github API (see the [documentation](https://docs.github.com/en/rest/reference/markdown)) to create a fully styled HTML file.

<br/>

> ⚠️&emsp; Some HTML element seem not to be accepted by GitHub API or at least not kept in the converted result. For now, I have seen this happen on the `<video>` and `<iframe>` elements. &emsp;⚠️

<br/>

## 2. Getting started

By doing one of the following options, the [`md2html`](./md2html) script will be added to the global variable `PATH` so that you can access it from anywhere.<br/>

### 2.1. Install with Makefile

Download or clone this repository.<br/>
Go to the newly created folder, open a terminal and type :
```bash
   make install
or make clean-install # This will delete the folder after it's done
```

<br/>

### 2.2. Install manually

You can also do it manually by putting the [`md2html`](./md2html) file in `/usr/bin/` and executing the commmand :
```bash
sudo chmod 755 /usr/bin/md2html
```

<br/>

## 3. Usage

```bash
md2html@linux:~/path/to/folder$ md2html
md2html@linux:~/path/to/folder$ md2html [options] md-file
md2html@linux:~/path/to/folder$ md2html [oprions] md-file-url
```

<br/>

### 3.1. Options

| Option                    | Comment                                                  |
| :------------------------ | :------------------------------------------------------- |
| -o, --output \<file-path> | Specify the output file for the converted Markdown file. |
| --light                   | Create the HTML using the light theme.                   |
| --dark                    | Create the HTML using the dark theme. (default)          |
| --dark-dimmed             | Create the HTML using the dark dimmed theme.             |
| -h, --help                | Display the help and exit.                               |
| -v, --version             | Display versionversion information and exit.             |


<br/>
<details>
<summary>Note</summary><br/>

> Even if you have set the theme, when the file is opened in a browser you can change it.<br/>
In other word, by setting one of the three theme options, you are just defining the default theme when the file is opened.
</details>

<br/>


### 3.2. Examples

```bash
# To convert all Markdown files in the current directory
md2html@linux:~/path/to/folder$ md2html

# To convert the Markdown file hosted at https://raw.githubusercontent.com/guillaume-elambert/stage-docker/master/README.md
md2html@linux:~/path/to/folder$ md2html -o ~/GeneratedHTML/Myfile.html https://raw.githubusercontent.com/guillaume-elambert/stage-docker/master/README.md
md2html@linux:~/path/to/folder$ md2html --output ~/GeneratedHTML/Myfile.html https://raw.githubusercontent.com/guillaume-elambert/stage-docker/master/README.md

# To convert the Markdown file ../MyFolder/MardownFile.md with the light theme
md2html@linux:~/path/to/folder$ md2html --light ../MyFolder/MardownFile.md
```


<br/>

### 3.3. Result 

![présentation-md2html](https://user-images.githubusercontent.com/55977520/125066227-0904a800-e0b3-11eb-84a4-4a893730c322.gif)
