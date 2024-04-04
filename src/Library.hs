module Library where
import PdePreludat

interes:: Number -> String -> Number
interes montoDepositado nombre 
  | montoDepositado > 1000 = min (montoDepositado * 0.1) 500
  | montoDepositado > 500 = 10 * length nombre
  | otherwhise = montoDepositado / 7
