module CardDeck where

import Shuffle

data Suit = Clubs | Diamonds | Hearts | Spades deriving (Show, Eq, Enum)
data Value = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace deriving (Show, Eq, Ord, Enum)
data Card = Card Value Suit deriving (Show, Eq)
type Hand = [Card]
type Deck = [Card]

toValue x   = toEnum (x - 2)
fromValue x = (fromEnum x) + 2

cardValue :: Card -> Value
cardValue (Card v _) = v

cardSuit :: Card -> Suit
cardSuit (Card _ s) = s 

allSuits  = [Clubs ..]
allValues = [Two ..]

getStdDeck :: [Card]
getStdDeck = [ Card i j | i <- allValues, j <- allSuits] 
