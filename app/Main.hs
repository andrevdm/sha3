{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Protolude
import qualified Data.Text as Txt
import qualified Data.ByteString as BS
import qualified Data.Text.Encoding as BS
import qualified Crypto.Hash as Hash

sha3 :: ByteString -> Text
sha3 bs = show (Hash.hash bs :: Hash.Digest Hash.SHA3_256)

sha2 :: ByteString -> Text
sha2 bs = show (Hash.hash bs :: Hash.Digest Hash.SHA256)

main :: IO ()
main = do
  t <- BS.getContents
  putText $ "sha3-256: " <> sha3 t
  putText $ "sha2-256: " <> sha2 t
