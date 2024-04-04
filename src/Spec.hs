module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Función interés" $ do
    it "interés para un monto grande me da un porcentaje de ese valor" $ do
      interes 5000 "fulano" `shouldBe` 500
    it "interes para un valor muy grande me da el tope de devolución" $ do
      interes 5001 "fulano" `shouldBe` 500
    it "interes para un valor intermedio me da un cálculo en base al nombre de la persona" $ do
      interes 700 "fulano" `shouldBe` 60
    it "para un valor chico me devuelve una fracción del monto" $ do
      interes 350 "fulano" `shouldBe` 50