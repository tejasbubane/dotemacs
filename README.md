# Usage

This config uses the awesome [use-package](https://github.com/jwiegley/use-package).
It will take care of fetching and installing all the packages on first load and byte-compiling them.
Hence starting emacs for the first time will take some time, but the later ones should be blazing fast.

It also uses [quelpa](https://github.com/quelpa/quelpa) for packages that are not available on melpa,
to get them from github.

# Update packages

`use-package` uses emacs' inbuilt [package.el](http://wikemacs.org/wiki/Package.el).
So upgrading is just telling package.el to upgrade all packages.

* Open the list of package - `M-x package-list-packages`

* Mark packages for upgrading - `U`

* Install updates - `x` - confirm - `y (yes)`


# Credits

My config has bits and pieces taken from these resources:

* The brilliant README `use-package` has got:
https://github.com/jwiegley/use-package/blob/master/README.md

* Mastering emacs' post on use-package:
https://www.masteringemacs.org/article/spotlight-use-package-a-declarative-configuration-tool

* Ruby and Rails:
http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/

* General config (Theme, font, window-config, etc):
https://github.com/larstvei/dot-emacs

* Prathamesh's dotemacs:
https://github.com/prathamesh-sonpatki/dotemacs

And some others I can't recollect.


Blog: [http://foss-geek.blogspot.in/](http://foss-geek.blogspot.in/)

Twitter: [@tejasbubane](https://twitter.com/tejasbubane)

[![](http://www.linkedin.com/img/webpromo/btn_liprofile_blue_80x15.png)](https://in.linkedin.com/in/tejasbubane)
[![](http://api.coderwall.com/purcell/endorsecount.png)](http://coderwall.com/tejasbubane)
