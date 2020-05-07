module Main where

import Criterion.Main

add_10                     :: Integer -> Integer
add_10 x                   =  x + 10

execute_seq x = sum (map add_10 (take x [  (i) | i <- [1..]   ] ))

main = defaultMain [
  bgroup "execute_seq" [ bench "w1-10"  $ whnf execute_seq 10
                       , bench "w2-10"  $ whnf execute_seq 10
                       , bench "i1-10"  $ whnf execute_seq 10
                       , bench "i2-10"  $ whnf execute_seq 10
                       , bench "i3-10"  $ whnf execute_seq 10
                       , bench "w1-100"  $ whnf execute_seq 100
                       , bench "w2-100"  $ whnf execute_seq 100
                       , bench "i1-100"  $ whnf execute_seq 100
                       , bench "i2-100"  $ whnf execute_seq 100
                       , bench "i3-100"  $ whnf execute_seq 100
                       , bench "w1-1000"  $ whnf execute_seq 1000
                       , bench "w2-1000"  $ whnf execute_seq 1000
                       , bench "i1-1000"  $ whnf execute_seq 1000
                       , bench "i2-1000"  $ whnf execute_seq 1000
                       , bench "i3-1000"  $ whnf execute_seq 1000
                       , bench "w1-10000"  $ whnf execute_seq 10000
                       , bench "w2-10000"  $ whnf execute_seq 10000
                       , bench "i1-10000"  $ whnf execute_seq 10000
                       , bench "i2-10000"  $ whnf execute_seq 10000
                       , bench "i3-10000"  $ whnf execute_seq 10000
                       , bench "w1-100000"  $ whnf execute_seq 100000
                       , bench "w2-100000"  $ whnf execute_seq 100000
                       , bench "i1--100000"  $ whnf execute_seq 100000
                       , bench "i2-100000"  $ whnf execute_seq 100000
                       , bench "i3-100000"  $ whnf execute_seq 100000
                       , bench "w1-1000000"  $ whnf execute_seq 1000000
                       , bench "w2-1000000"  $ whnf execute_seq 1000000
                       , bench "i1-1000000"  $ whnf execute_seq 1000000
                       , bench "i2-1000000"  $ whnf execute_seq 1000000
                       , bench "i3-1000000"  $ whnf execute_seq 1000000
                       ]
  ]
