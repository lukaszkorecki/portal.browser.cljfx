# What is it?

 JavaFX-based launcher for Portal.

# Why?

[Portal](https://github.com/djblue/portal) is fantastic, but I wasn't quite happy with any of the launchers available: I don't use Chrome, so using it as a default didn't quite work for me. Even though I'm an Emacs user, and I have webkit widget module compiled, it's still quite unstable and not very well integrated.

Then I remembered that `clojure.inspect` exists, and that it can be launched from the same JVM process as the running REPL.
Then I had another realization: JavaFX provides a built-in browser engine. And we have [cljfx](https://github.com/cljfx/cljfx).


# Setup

First, add `org.clojars.lukaszkorecki/portal.browser.cljfx` to your dependencies in `.lein/profiles.clj` or `deps.edn`.

Then, to use it, register the new 'browser' and tell Portal to use it:


```clojure
(require '[portal.api :as p] '[portal.browser.cljfx])

(p/open {:launcher :cljfx})

(add-tap p/submit)
```

Obviously, since this browser is based on JavaFX, it will only work on the JVM.


# TODO/Roadmap

There's many things that can be done:

- tabbed UI to manage multiple Portal sessions
- integration with other Portal features
- more integrated styling?
