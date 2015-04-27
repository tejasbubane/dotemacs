# Usage

* This config uses the [Cask](https://github.com/cask/cask) project management tool for Emacs. First install it:

```bash
curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
```

* Clone this repository in your home folder and rename it .emacs.d

* cd into ~/.emacs.d and run

```bash
cask install
```

# Language Specifics

### Ruby

* `rvm and ruby`
https://rvm.io/rvm/install

### GoLang

* `GOPATH`
This config assumes that all go code resides in `~/gocode`

* `godef`: quickly jump around the code

```bash
go get -v code.google.com/p/rog-go/exp/cmd/godef
go install -v code.google.com/p/rog-go/exp/cmd/godef
```

* `gocode`: Go aware Autocomplete

```bash
go get -u -v github.com/nsf/gocode
```

* `godoc`: shows the go documentation for a given package

```bash
go get code.google.com/p/go.tools/cmd/godoc
```

* Copy all above binaries from `$GOPATH/bin` to `~/bin` (Some weird exec-path issue)


# Credits

My config is inspired from these resources :

* Cask and Pallet:
http://www.swaroopch.com/2013/10/17/emacs-configuration-tutorial/

* Ruby and Rails:
http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/

* General config (Theme, font, window-config, etc):
https://github.com/larstvei/dot-emacs

* GoLang:
http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/

* Prathamesh's dotemacs:
https://github.com/prathamesh-sonpatki/dotemacs

And some others I can't recollect.


Blog: [http://foss-geek.blogspot.in/](http://foss-geek.blogspot.in/)

Twitter: [@tejasbubane](https://twitter.com/tejasbubane)

[![](http://www.linkedin.com/img/webpromo/btn_liprofile_blue_80x15.png)](https://in.linkedin.com/in/tejasbubane)
[![](http://api.coderwall.com/purcell/endorsecount.png)](http://coderwall.com/tejasbubane)
