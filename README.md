# Introduction
Engineering practice increasingly relies on computational tools and data analysis approaches. This one-semester course introduces computational thinking into engineering analysis. We integrate data science and statistics, artificial intelligence, and mathematical modeling approaches into the context of contemporary problems in the design and analysis of processes, products, and systems. 

## Requirements
This course uses [the Julia programming language](https://julialang.org/downloads/) to introduce fundamental concepts of technical computing, data science, machine learning, and artificial intelligence. 
In addition, we use other tools and languages, such as [Python via the Anaconda distribution](https://www.anaconda.com) and [Jupyter Notebooks](https://jupyter.org), [GitHub Desktop](https://desktop.github.com/) for repository management, [GitHub classroom](https://classroom.github.com) for assignments. Finally, we use [Visual Studio Code (VSCode)](https://code.visualstudio.com/download) for development. 

### GitHub Desktop
GitHub Desktop is a free, open-source application that allows you to work with code hosted on GitHub, such as this course repository. With GitHub Desktop, you can perform Git commands in a graphical user interface, such as committing and pushing changes, rather than using the command line. To download and install GitHub Desktop, follow the instructions: [here](https://desktop.github.com/)

### Anaconda
Anaconda is a distribution of the Python and R programming languages for scientific computing that aims to simplify package management and deployment. To install Anaconda on your machine (if you don’t already have a working Python/Jupyter installation), follow the instructions [here](https://www.anaconda.com/download). 

* Install GitHub desktop to your machine: 

### Julia
`Julia` is a high-level, general-purpose dynamic programming language for numerical analysis and computational science. To download and install the latest version of [Julia](https://julialang.org/downloads/), follow the instructions [here](https://julialang.org/downloads/).

#### Windows users
For Windows users: Select the `add to path` option during installation to add Julia to your search path. You'll need this so that we can start [Julia](https://julialang.org/downloads/) from the terminal in [VSCode](https://code.visualstudio.com/download).

#### For macOS users
Update your `.zshrc` file in your home directory to include the path entry (edit using Nano or some other text editor): 

```zsh
export PATH=“$PATH:/Applications/Julia-1.10.app/Contents/Resources/Julia/bin”
```

Alternatively, for macOS users, follow the instructions on the [Julia website for updating the macOS path from the terminal](https://julialang.org/downloads/platform/#optional_add_julia_to_path):

### Visual Studio Code (VSCode)
Visual Studio Code is a streamlined code editor that supports development operations such as debugging, task running, and version control. It is free and runs on all major platforms. 
To download and install VSCode, follow the instructions [here](https://code.visualstudio.com/download). Once VSCode is installed, add the Julia language extension via the extensions menu (open the extensions, search for Julia, and install the extension). 

* Open up a terminal window (zsh for macOS) in VSCode and type the command: julia
* Enter package mode by typing the ] key, and enter the command: add IJulia
