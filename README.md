# iforgor
iforgor is a customisable and easy to use command line tool to manage code samples. It's a good way to quickly get your hand on syntax you dont remember right from your terminal without wasting time looking on the internet.

## Installation
### Method
Creates symlinks of iforgor.py and the snippets folder to a directory in your $PATH so that it can be run from anywhere on the terminal.

### Requirements
- Git
- Bash
- Python
  - pygments
  - argcomplete

### Step by step procedure
1. Open a terminal and cd into the directory you want to install the program into.
2. Run `git clone https://github.com/Solirs/iforgor/`
3. Cd into the newly created `iforgor` directory
4. Run `pip install -r requirements.txt`
5. Run `./setup.sh`
    Must be run as root unless the argument `local` is specified.
    Use the `ungit` argument to remove unnecessary files related to the git repository.
6. Run `iforgor -h`

If it works, the install was successful. You can now delete setup.sh if you'd like.

### Uninstall
To uninstall, simply delete the `iforgor` and `snippets` symlinks in `/usr/local/bin` and/or `~/.local/bin`. Then delete the iforgor folder.

## iforgor 101
To display a piece of code, run the following:

```sh
iforgor LANGUAGE SNIPPET
```

The `language` argument represents a folder in the "snippets" directory. You can add any language you want by creating a folder in it. Make sure it matches the relevant [short name](https://pygments.org/docs/lexers/) if you want syntax highlighting to work.

The `snippet` argument represents a .txt file in the specified language directory that containd the code sample you want to display. You can add any code sample by creating a .txt in a desired language folder.

So for example if you want to add a function sample for the Rust language, you will have to create a directory named `rust` in the snippets folder and create a `function.txt` file in the `rust` folder with the code you want inside. You can then print it out by running `iforgor rust function`.

## Pro tips:
- Languages and snippets are case insensitive. So you can run `iforgor lAnGuAgE sNiPpeT`.
- You dont need to do the setup process, but it's required if you want to be able to run iforgor easily from anywhere.
- There are default snippets yes, but iforgor is designed to be customized, don't hesitate to add your own custom snippets and languages.

## Screenshots:
![demo image](resources/screenshot.png)

## Compatibility
iforgor should work on any Linux or Unix based system that has Python installed. It may also work on Windows, aside from `setup.sh`.

# Want to contribute?
Sure. All help is accepted.

The code is very commented if you want to take a look at it.

PLEASE don't forget to star the project if you find it interesting, it helps out a ton.
