# 7-Bit Hamming Code (Verilog)
This project implements a Hamming(7,4) error detection and correction system in Verilog.

## Modules
* Encoder
* Noise (single-bit error)
* Syndrome
* Decoder

## Run
iverilog -o hamming tb/test.v src/*.v
vvp hamming

## Example
Data=1101 Encoded=1100110 Corrupted=1100111 Error_bit=001 Decoded=1100110

## Author
Luv
