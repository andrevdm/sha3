{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Protolude
import qualified Data.Text as Txt
import qualified Data.ByteString as BS
import qualified Data.Text.Encoding as BS
import qualified Crypto.Hash as Hash

sha3 :: Text -> Text
sha3 bs = show (Hash.hash (BS.encodeUtf8 bs) :: Hash.Digest Hash.SHA3_256)

main :: IO ()
main = do
  t <- Txt.strip <$> getContents
  putText $ sha3 t
