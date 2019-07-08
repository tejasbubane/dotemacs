[![](https://img.shields.io/badge/emacs-config-brightgreen.svg)](https://github.com/tejasbubane/dotemacs)

# Tejas' Emacs Configuration

## Usage

This config uses the awesome [use-package](https://github.com/jwiegley/use-package).
It will take care of fetching and installing all the packages on first load and byte-compiling them.
Hence starting emacs for the first time will take some time, but the later ones should be blazing fast.

Being actively used and tested on the latest version of emacs.

Clone this repo in `~/.emacs.d`:

```sh
cd ~/ && git clone git@github.com:tejasbubane/dotemacs.git .emacs.d
```

Now just open emacs and `use-package` will install all packages and byte-compile them.

If there are any issues with fresh install please feel free to open an issue.

## Dependencies

1. **Font** : The font I use is [Fira Code](https://github.com/tonsky/FiraCode).
   Make sure it is installed on your system.
   Otherwise emacs will throw an error on startup.
   If you prefer to use some other font, change it [here](config/theme-font-config.el).
   Ligatures are configured [here](utils/fira-code-mode.el), but enabled only for Haskell-mode right now
   and require Fira Code Symbol font installed from [here](https://github.com/tonsky/FiraCode/issues/211#issuecomment-239058632).
   Comment the entire thing out if you plan not to use Fira-code.


2. **rgrep**: `rg` is used for code searching. More about `rgrep` and installation instructions are
   [here](https://github.com/BurntSushi/ripgrep).
   Invoke it using `M-x rg` more info - [rg.el](https://github.com/Wilfred/ag.el).


## Update packages

### Auto:

Auto updates are configured. Once every `4 days` you will be prompted to perform upgrade of all installed packages.

### Manual:

`use-package` uses emacs' inbuilt [package.el](http://wikemacs.org/wiki/Package.el).
So upgrading is just telling `package.el` to upgrade all packages.

* Open the list of package - `M-x package-list-packages`

* Mark packages for upgrading - `U`

* Install updates - `x` - confirm - `y (yes)`

Git submodules (use-package itself and reason-mode) can be updated by running

```sh
git submodule update --remote
```


## Credits

My config has bits and pieces taken from these resources:

* The brilliant README `use-package` has got:
https://github.com/jwiegley/use-package/blob/master/README.md

* Mastering emacs' post on use-package:
https://www.masteringemacs.org/article/spotlight-use-package-a-declarative-configuration-tool

* Ruby and Rails:
http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/

* General config (Theme, font, window-config, etc):
  - https://github.com/larstvei/dot-emacs
  - https://www.youtube.com/playlist?list=PL9a5xOjVw3jajVLC-539iAZINvOpRhHfz

* Prathamesh's dotemacs:
https://github.com/prathamesh-sonpatki/dotemacs

And some others I can't recollect.

___


* Blog: [http://tejasbubane.github.io/](http://tejasbubane.github.io/)

* Twitter: [@tejasbubane](https://twitter.com/tejasbubane)
