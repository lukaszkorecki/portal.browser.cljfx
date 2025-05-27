# What is it?

 JavaFX-based launcher for Portal.

# Why?

[Portal](https://github.com/djblue/portal) is fantastic, but because I'm quite disorganized using my browser as the viewer is not a great experience for me. I wanted something that would allow me to use Portal in a more built-in way, similar to `clojure.inspector`.


# Setup

First, add `org.clojars.lukaszkorecki/portal.browser.cljfx` to your dependencies in `.lein/profiles.clj` or `deps.edn`.

Then, to use it, register the new 'browser' and tell Portal to use it on launch:


```clojure
(require '[portal.api :as p] '[portal.browser.cljfx])

(p/open {:launcher :cljfx})

(add-tap p/submit)
```

Obviously, since this browser is based on JavaFX, it will only work on the JVM.


# TODO/Roadmap

This is a work in progress, and there are some features that I would like to add:

- [ ] better window/app icon :-)

Then, maybe:

- tabbed UI to manage multiple Portal sessions (?)
- integration with other Portal features
- more integrated styling?
- remove/hide address bar?
