{-# LANGUAGE OverloadedStrings #-}
module Main where

import Control.Applicative
import System.Environment (getArgs)
import Network.Wai.Handler.Warp (run)
import Network.Wai (responseLBS)
import Network.HTTP.Types (status200)

main :: IO ()
main = do
    port <- read . head <$> getArgs
    run port $ \_ respond ->
        respond (responseLBS status200 [] "hello")
