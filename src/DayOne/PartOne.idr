module DayOne.PartOne

import Data.String
import Data.List
import Data.List1

export
withString : String -> String
withString = (\x => case x of Nothing => "Error" ; Just x => show x)
           . (map $ (foldr max 0))
           . (map $ map $ foldr (+) 0)
           . (sequence)
           . (map $ traverse parsePositive)
           . (split (== ""))
           . (forget)
           . (split (== '\n'))
