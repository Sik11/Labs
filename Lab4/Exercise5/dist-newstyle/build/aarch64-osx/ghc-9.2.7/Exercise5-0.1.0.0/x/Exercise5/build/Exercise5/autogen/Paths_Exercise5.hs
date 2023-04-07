{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_Exercise5 (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where


import qualified Control.Exception as Exception
import qualified Data.List as List
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude


#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath



bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "/Users/orasikiwellington/.cabal/bin"
libdir     = "/Users/orasikiwellington/.cabal/lib/aarch64-osx-ghc-9.2.7/Exercise5-0.1.0.0-inplace-Exercise5"
dynlibdir  = "/Users/orasikiwellington/.cabal/lib/aarch64-osx-ghc-9.2.7"
datadir    = "/Users/orasikiwellington/.cabal/share/aarch64-osx-ghc-9.2.7/Exercise5-0.1.0.0"
libexecdir = "/Users/orasikiwellington/.cabal/libexec/aarch64-osx-ghc-9.2.7/Exercise5-0.1.0.0"
sysconfdir = "/Users/orasikiwellington/.cabal/etc"

getBinDir     = catchIO (getEnv "Exercise5_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "Exercise5_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "Exercise5_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "Exercise5_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "Exercise5_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "Exercise5_sysconfdir") (\_ -> return sysconfdir)




joinFileName :: String -> String -> FilePath
joinFileName ""  fname = fname
joinFileName "." fname = fname
joinFileName dir ""    = dir
joinFileName dir fname
  | isPathSeparator (List.last dir) = dir ++ fname
  | otherwise                       = dir ++ pathSeparator : fname

pathSeparator :: Char
pathSeparator = '/'

isPathSeparator :: Char -> Bool
isPathSeparator c = c == '/'
