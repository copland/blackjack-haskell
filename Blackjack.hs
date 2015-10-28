
import CardDeck

data BlackjackState = Prompt | Busted | Final
data Command = Hit | Stay

dealer :: BlackjackState -> Command -> BlackjackState
dealer Prompt 

getCardIntValue :: Card -> Int
getCardIntValue card = fromValue $ cardValue card

handValue :: Hand -> Int
handValue = sum . map getCardIntValue

--prompt :: IO String
prompt = do
    putStrLn "Would you like to hit or stay?"
    putStr "> "
    action <- getLine
    putStrLn ("You selected " ++ action)

hit :: Hand -> Hand


isBusted :: Hand -> Bool
isBusted hand
    | (handValue hand) > 21 = True
    | otherwise = False
