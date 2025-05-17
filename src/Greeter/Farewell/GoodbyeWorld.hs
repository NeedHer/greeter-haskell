module Greeter.Farewell.GoodbyeWorld where

data GoodbyeWorld = GoodbyeWorld { name :: String }

newGoodbyeWorld :: String -> GoodbyeWorld
newGoodbyeWorld user = GoodbyeWorld { name = user }

goodbye :: GoodbyeWorld -> String
goodbye gw = "Goodbye " ++ name gw ++ " from Haskell library!"

sayGoodbye :: GoodbyeWorld -> IO ()
sayGoodbye gw = do
    let message = goodbye gw
    putStrLn message