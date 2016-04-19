using NMfE

a = Float64[0 0 16; 0 4 5; 8 -4 22]
b = Float64[0 0 0 16; 0 0 4 2; 0 8 -4 22; 13 5 9 1]
c = Float64[0 0 0 0 1; 0 0 0 2 3; 0 0 4 5 6; 0 7 8 9 10; 11 12 13 14 15]

res = frombandedmatrix(a)
@assert res == Float64[
  16  4  8;
   4  5 -4;
   8 -4 22]

res = frombandedmatrix(b)
@assert res == [
 16.0   4.0   8.0  13.0;
  4.0   2.0  -4.0   5.0;
  8.0  -4.0  22.0   9.0;
 13.0   5.0   9.0   1.0]

res = frombandedmatrix(c)
@assert res == [
 1.0   2.0   4.0   7.0  11.0;
 2.0   3.0   5.0   8.0  12.0;
 4.0   5.0   6.0   9.0  13.0;
 7.0   8.0   9.0  10.0  14.0;
11.0  12.0  13.0  14.0  15.0]