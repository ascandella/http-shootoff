(defproject shootoff "0.1.0"
  :dependencies [[org.clojure/clojure "1.6.0"]
                 [org.immutant/web "2.0.1"]
                 [compojure "1.3.4"]]
  :profiles {:uberjar {:aot :all}}
  :main shootoff.core)
