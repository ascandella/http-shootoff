(ns shootoff.core
  (:gen-class)
  (:require [immutant.web :refer [run]]
            [compojure.core :refer [defroutes GET]]
            [compojure.handler :refer [site]]))

(defn handler [request]
  {:status 200
   :headers {"Content-Type" "text/plain"}
   :body "hello"})

(defroutes app 
  (GET "/simple" [] handler))

(defn -main [& args]
  (run (site app) {:port (Integer/parseInt (or (first args) "8080"))}))
