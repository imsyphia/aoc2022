module Main

import System.File.ReadWrite

import DayOne.PartOne
import DayOne.PartTwo

export
main : IO ()
main = do putStr "Puzzle: "
          d <- getLine
          putStr "Input: "
          input <- getLine
          Right str <- readFile input
            | Left err => putStrLn $ show err
          putStrLn (case d of
            "1A" => DayOne.PartOne.withString str
            "1B" => DayOne.PartTwo.withString str
            _ => "Invalid"
            )
          pure ()
