function [M]=matmul(A,B,size)

  if (size>1) 
    A11 = A(1:size/2, 1:size/2);
    A12 = A(1:size/2, size/2+1:size);
    A21 = A(size/2+1:size, 1:size/2);
    A22 = A(size/2+1:size, size/2+1:size);

    B11 = B(1:size/2, 1:size/2);
    B12 = B(1:size/2, size/2+1:size);
    B21 = B(size/2+1:size, 1:size/2);
    B22 = B(size/2+1:size, size/2+1:size);

    M1 = matmul(A11+A22, B11+B22, size/2);
    M2 = matmul(A21+A22, B11, size/2);
    M3 = matmul(A11, B12-B22, size/2);
    M4 = matmul(A22, B21-B11, size/2);
    M5 = matmul(A11+A12, B22, size/2);
    M6 = matmul(A21-A11, B11+B12, size/2);
    M7 = matmul(A12-A22, B21+B22, size/2);

    M = zeros(size, size);
    M(1:size/2, 1:size/2) = M1 + M4 - M5 +M7;
    M(1:size/2, size/2+1:size) = M3 + M5;
    M(size/2+1:size, 1:size/2) = M2 + M4;
    M(size/2+1:size, size/2+1:size) = M1 - M2 + M3 + M6;
else
    M = A*B;
  end
end
