module Greeter.Hello.HelloWorld where

data HelloWorld = HelloWorld { name :: String }

newHelloWorld :: String -> HelloWorld
newHelloWorld user = HelloWorld { name = user }

hello :: HelloWorld -> String
hello hw = "Hello " ++ name hw ++ " from Haskell library!"

sayHello :: HelloWorld -> IO ()
sayHello hw = do
    let message = hello hw
    putStrLn message