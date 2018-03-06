# mac-hep
The goal is to keep everything linked in MacOSX both for simulation and analysis packages. 
Decrease time for debugging installation issues. Faster time-to-physics. 

Assuming pip or pip3 and virtualenv are installed, do
```bash

$ virtualenv ~/path/to/project/
$ cd ~/path/to/project/
$ source activate

```
To deactivate,

```bash

$ source deactivate

```
## Pip Requirements
A recommended list of requirements are in requirements.txt. Use a hash # to comment out. 
To install requirements:
```bash

$ pip3 install --user -U requirements.txt

```

## Homebrew-hep etc
We will also need a number of packages from [homebrew-hep: High energy physics packages for mac](http://davidchall.github.io/homebrew-hep/http://davidchall.github.io/homebrew-hep/). 

After creating a `Brewfile` (see instructions from [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle/blob/master/Readme.md)), dependencies can be easily installed with the following command: 
```bash

$ brew bundle

```
