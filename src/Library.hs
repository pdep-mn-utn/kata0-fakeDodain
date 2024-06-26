module Library where
import PdePreludat
type Nombre = String
interes:: Number -> String -> Number
interes montoDepositado nombre 
  | montoDepositado > 1000 = min (montoDepositado * 0.1) 500
  | montoDepositado > 500 = 10 * length nombre
  | otherwise = montoDepositado / 8

siguiente :: Number -> Number
siguiente = (+) 1

doble :: Number -> Number
doble = (*) 2
