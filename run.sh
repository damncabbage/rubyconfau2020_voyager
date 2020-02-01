#!/bin/bash

#while true; do find src -name "*.rs" | entr -dcs 'RUST_BACKTRACE=1 RUST_LOG=debug cargo run && imgcat 384kHzStereo.bmp'; sleep 2; done

while true; do
  find bin -type f -name "samples_learning" | entr -dcs 'bin/samples_learning'
  sleep 2
done
