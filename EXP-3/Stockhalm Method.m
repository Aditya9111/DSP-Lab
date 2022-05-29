     x1 = [1 1 0 3];
     x2 = [1 1 8 0];
     N=4;
     
     %x1 = input("Enter value of x1");
     %x2 = input("Enter sequence x2");
     %N = input("Enter value of N");
     
     lnx1 = length(x1);
     lnx2 = length(x2);
     
     x1 = [x1  zeros(1, (N-lnx1)) ];
     x2 = [x2  zeros(1, (N-lnx2)) ];
     
     
     % stockhalm method
     n = 0:1:N-1;
     k = 0:1:N-1;
     
     nk = n'.*k;
     w = exp((-1i*2*pi*nk) /N);
     
     X1 = w*x1';
     X2 = w*x2';
     
     Y = X1.*X2;
     
     y = (1/N).*w'*Y
     
    
     %stem(n ,abs(X1));
     %figure;
     %stem(k ,angle(X1));
     
     
     
     