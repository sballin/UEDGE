      real*8 function ngraph(lambda)
      integer i, m
      parameter (m=154)
      real*8 lambda, lmkm, tmp
      real*8 l(m), n(m)
      data l/
     *       3.0996d-2, 3.1389d-2, 3.1791d-2, 3.2204d-2, 3.2628d-2,
     *       3.3063d-2, 3.3510d-2, 3.3969d-2, 3.4440d-2, 3.4925d-2,
     *       3.5424d-2, 3.5938d-2, 3.6466d-2, 3.7011d-2, 3.7571d-2,
     *       3.8149d-2, 3.8745d-2, 3.9360d-2, 3.9995d-2, 4.0651d-2,
     *       4.1328d-2, 4.2029d-2, 4.2754d-2, 4.3504d-2, 4.4280d-2,
     *       4.5086d-2, 4.5920d-2, 4.6787d-2, 4.7687d-2, 4.8620d-2,
     *       4.9594d-2, 5.0606d-2, 5.1660d-2, 5.2760d-2, 5.3907d-2,
     *       5.5105d-2, 5.6357d-2, 5.7668d-2, 5.9041d-2, 6.0481d-2,
     *       6.1993d-2, 6.3582d-2, 6.5255d-2, 6.7019d-2, 6.8881d-2,
     *       7.0849d-2, 7.2932d-2, 7.5143d-2, 7.7491d-2, 7.9990d-2,
     *       8.2657d-2, 8.5507d-2, 8.8561d-2, 9.184d-2 , 9.5373d-2,
     *       9.9188d-2, 0.1033d0 , 0.1078d0 , 0.1127d0 , 0.1181d0 ,
     *       0.1240d0 , 0.1305d0 , 0.1378d0 , 0.1459d0 , 0.1550d0 ,
     *       0.1653d0 , 0.1771d0 , 0.1907d0 , 0.2066d0 , 0.2254d0 ,
     *       0.2480d0 , 0.2530d0 , 0.2583d0 , 0.2638d0 , 0.2695d0 ,
     *       0.2755d0 , 0.2818d0 , 0.2883d0 , 0.2952d0 , 0.3024d0 ,
     *       0.3100d0 , 0.3179d0 , 0.3263d0 , 0.3351d0 , 0.3444d0 ,
     *       0.3542d0 , 0.3647d0 , 0.3757d0 , 0.3875d0 , 0.4000d0 ,
     *       0.4133d0 , 0.4275d0 , 0.4428d0 , 0.4592d0 , 0.4769d0 ,
     *       0.4959d0 , 0.5166d0 , 0.5391d0 , 0.5636d0 , 0.5904d0 ,
     *       0.6199d0 , 0.6526d0 , 0.6888d0 , 0.7293d0 , 0.7749d0 ,
     *       0.8266d0 , 0.8856d0 , 0.9537d0 , 1.033d0  , 1.069d0  ,
     *       1.107d0  , 1.148d0  , 1.192d0  , 1.240d0  , 1.378d0  ,
     *       1.550d0  , 1.771d0  , 2.066d0  , 2.480d0  , 3.100d0  ,
     *       4.133d0  , 5.405d0  , 5.555d0  , 5.714d0  , 5.882d0  ,
     *       6.061d0  , 6.192d0  , 6.211d0  , 6.230d0  , 6.250d0  ,
     *       6.269d0  , 6.289d0  , 6.293d0  , 6.297d0  , 6.301d0  ,
     *       6.305d0  , 6.309d0  , 6.329d0  , 6.349d0  , 6.369d0  ,
     *       6.452d0  , 6.666d0  , 6.896d0  , 7.143d0  , 7.407d0  ,
     *       7.692d0  , 7.749d0  , 8.856d0  , 10.33d0  , 12.40d0  , 
     *       15.50d0  , 20.66d0  , 30.99d0  , 61.99d0/
      data n/
     *       0.75d0   , 0.75d0   , 0.75d0   , 0.74d0   , 0.74d0   ,
     *       0.72d0   , 0.72d0   , 0.72d0   , 0.71d0   , 0.70d0   ,
     *       0.68d0   , 0.68d0   , 0.67d0   , 0.67d0   , 0.66d0   ,
     *       0.66d0   , 0.64d0   , 0.61d0   , 0.60d0   , 0.58d0   ,
     *       0.57d0   , 0.55d0   , 0.52d0   , 0.49d0   , 0.47d0   ,
     *       0.45d0   , 0.46d0   , 0.47d0   , 0.48d0   , 0.47d0   ,
     *       0.47d0   , 0.46d0   , 0.46d0   , 0.44d0   , 0.41d0   ,
     *       0.40d0   , 0.41d0   , 0.43d0   , 0.45d0   , 0.51d0   ,
     *       0.55d0   , 0.58d0   , 0.58d0   , 0.58d0   , 0.58d0   ,
     *       0.58d0   , 0.61d0   , 0.75d0   , 0.98d0   , 1.09d0   ,
     *       1.33d0   , 1.84d0   , 2.31d0   , 2.72d0   , 2.67d0   ,
     *       2.48d0   , 2.25d0   , 2.03d0   , 1.81d0   , 1.65d0   ,
     *       1.52d0   , 1.38d0   , 1.25d0   , 1.10d0   , 0.96d0   ,
     *       0.82d0   , 0.65d0   , 0.66d0   , 0.94d0   , 1.25d0   ,
     *       1.39d0   , 1.66d0   , 1.95d0   , 2.18d0   , 2.38d0   ,
     *       2.53d0   , 2.64d0   , 2.71d0   , 2.75d0   , 2.75d0   ,
     *       2.73d0   , 2.69d0   , 2.66d0   , 2.64d0   , 2.63d0   ,
     *       2.62d0   , 2.62d0   , 2.61d0   , 2.61d0   , 2.62d0   ,
     *       2.62d0   , 2.63d0   , 2.63d0   , 2.64d0   , 2.64d0   ,
     *       2.65d0   , 2.66d0   , 2.67d0   , 2.68d0   , 2.70d0   ,
     *       2.86d0   , 2.91d0   , 2.96d0   , 3.01d0   , 3.06d0   ,
     *       3.10d0   , 3.14d0   , 3.20d0   , 3.25d0   , 3.33d0   ,
     *       3.19d0   , 3.16d0   , 3.16d0   , 3.18d0   , 3.39d0   ,
     *       3.69d0   , 3.94d0   , 4.24d0   , 4.50d0   , 4.83d0   ,
     *       5.36d0   , 5.866d0  , 5.923d0  , 6.000d0  , 6.070d0  ,
     *       6.129d0  , 6.150d0  , 6.145d0  , 6.135d0  , 6.120d0  ,
     *       6.097d0  , 6.131d0  , 6.212d0  , 6.378d0  , 6.590d0  ,
     *       6.687d0  , 6.646d0  , 6.371d0  , 6.291d0  , 6.258d0  ,
     *       6.217d0  , 6.205d0  , 6.238d0  , 6.323d0  , 6.476d0  ,
     *       6.712d0  , 6.77d0   , 6.91d0   , 6.96d0   , 7.14d0   ,
     *       7.68d0   , 8.86d0   , 11.75d0  , 22.42d0/
      
      lmkm=lambda*1.d6
      if (lmkm.lt.l(1)) then
       tmp=n(1)
      elseif (lmkm.gt.l(m)) then 
       tmp=n(m)
      else
       i=2
10     if (lmkm.gt.l(i)) then
        i=i+1
        goto 10
       endif
       tmp=n(i-1)+(n(i)-n(i-1))*(lmkm-l(i-1))/(l(i)-l(i-1))
      endif
      
      ngraph=tmp
      
      end


      real*8 function kgraph(lambda)
      integer i, m
      parameter (m=154)
      real*8 lambda, lmkm, tmp
      real*8 l(m), k(m)
      data l/
     *       3.0996d-2, 3.1389d-2, 3.1791d-2, 3.2204d-2, 3.2628d-2,
     *       3.3063d-2, 3.3510d-2, 3.3969d-2, 3.4440d-2, 3.4925d-2,
     *       3.5424d-2, 3.5938d-2, 3.6466d-2, 3.7011d-2, 3.7571d-2,
     *       3.8149d-2, 3.8745d-2, 3.9360d-2, 3.9995d-2, 4.0651d-2,
     *       4.1328d-2, 4.2029d-2, 4.2754d-2, 4.3504d-2, 4.4280d-2,
     *       4.5086d-2, 4.5920d-2, 4.6787d-2, 4.7687d-2, 4.8620d-2,
     *       4.9594d-2, 5.0606d-2, 5.1660d-2, 5.2760d-2, 5.3907d-2,
     *       5.5105d-2, 5.6357d-2, 5.7668d-2, 5.9041d-2, 6.0481d-2,
     *       6.1993d-2, 6.3582d-2, 6.5255d-2, 6.7019d-2, 6.8881d-2,
     *       7.0849d-2, 7.2932d-2, 7.5143d-2, 7.7491d-2, 7.9990d-2,
     *       8.2657d-2, 8.5507d-2, 8.8561d-2, 9.1841d-2, 9.5373d-2,
     *       9.9188d-2, 0.1033d0 , 0.1078d0 , 0.1127d0 , 0.1181d0 ,
     *       0.1240d0 , 0.1305d0 , 0.1378d0 , 0.1459d0 , 0.1550d0 ,
     *       0.1653d0 , 0.1771d0 , 0.1907d0 , 0.2066d0 , 0.2254d0 ,
     *       0.2480d0 , 0.2530d0 , 0.2583d0 , 0.2638d0 , 0.2695d0 ,
     *       0.2755d0 , 0.2818d0 , 0.2883d0 , 0.2952d0 , 0.3024d0 ,
     *       0.3100d0 , 0.3179d0 , 0.3263d0 , 0.3351d0 , 0.3444d0 ,
     *       0.3542d0 , 0.3647d0 , 0.3757d0 , 0.3875d0 , 0.4000d0 ,
     *       0.4133d0 , 0.4275d0 , 0.4428d0 , 0.4592d0 , 0.4769d0 ,
     *       0.4959d0 , 0.5166d0 , 0.5391d0 , 0.5636d0 , 0.5904d0 ,
     *       0.6199d0 , 0.6526d0 , 0.6888d0 , 0.7293d0 , 0.7749d0 ,
     *       0.8266d0 , 0.8856d0 , 0.9537d0 , 1.033d0  , 1.069d0  ,
     *       1.107d0  , 1.148d0  , 1.192d0  , 1.240d0  , 1.378d0  ,
     *       1.550d0  , 1.771d0  , 2.066d0  , 2.480d0  , 3.100d0  ,
     *       4.133d0  , 5.405d0  , 5.555d0  , 5.714d0  , 5.882d0  ,
     *       6.061d0  , 6.192d0  , 6.211d0  , 6.230d0  , 6.250d0  ,
     *       6.269d0  , 6.289d0  , 6.293d0  , 6.297d0  , 6.301d0  ,
     *       6.305d0  , 6.309d0  , 6.329d0  , 6.349d0  , 6.369d0  ,
     *       6.452d0  , 6.666d0  , 6.896d0  , 7.143d0  , 7.407d0  ,
     *       7.692d0  , 7.749d0  , 8.856d0  , 10.33d0  , 12.40d0  , 
     *       15.50d0  , 20.66d0  , 30.99d0  , 61.99d0/
      data k/
     *       0.10d0   , 0.10d0   , 0.10d0   , 0.10d0   , 0.10d0   ,
     *       0.10d0   , 0.10d0   , 0.10d0   , 0.10d0   , 0.10d0   ,
     *       0.10d0   , 0.10d0   , 0.12d0   , 0.12d0   , 0.12d0   ,
     *       0.12d0   , 0.13d0   , 0.13d0   , 0.14d0   , 0.16d0   ,
     *       0.16d0   , 0.17d0   , 0.19d0   , 0.21d0   , 0.24d0   ,
     *       0.27d0   , 0.31d0   , 0.35d0   , 0.38d0   , 0.43d0   ,
     *       0.47d0   , 0.51d0   , 0.54d0   , 0.56d0   , 0.60d0   ,
     *       0.66d0   , 0.70d0   , 0.76d0   , 0.82d0   , 0.92d0   ,
     *       1.01d0   , 1.05d0   , 1.07d0   , 1.10d0   , 1.12d0   ,
     *       1.15d0   , 1.25d0   , 1.36d0   , 1.63d0   , 1.92d0   ,
     *       2.15d0   , 2.25d0   , 1.50d0   , 1.03d0   , 0.83d0   ,
     *       0.70d0   , 0.63d0   , 0.58d0   , 0.57d0   , 0.53d0   ,
     *       0.46d0   , 0.37d0   , 0.27d0   , 0.18d0   , 0.15d0   ,
     *       0.20d0   , 0.44d0   , 0.84d0   , 1.35d0   , 1.85d0   ,
     *       2.48d0   , 2.56d0   , 2.65d0   , 2.64d0   , 2.54d0   ,
     *       2.41d0   , 2.26d0   , 2.10d0   , 1.94d0   , 1.79d0   ,
     *       1.66d0   , 1.56d0   , 1.49d0   , 1.43d0   , 1.39d0   ,
     *       1.36d0   , 1.33d0   , 1.31d0   , 1.29d0   , 1.29d0   ,
     *       1.28d0   , 1.28d0   , 1.28d0   , 1.28d0   , 1.30d0   ,
     *       1.31d0   , 1.33d0   , 1.34d0   , 1.36d0   , 1.39d0   ,
     *       1.73d0   , 1.77d0   , 1.81d0   , 1.84d0   , 1.86d0   ,
     *       1.90d0   , 1.95d0   , 2.02d0   , 2.07d0   , 2.07d0   ,
     *       2.07d0   , 2.17d0   , 2.28d0   , 2.40d0   , 2.70d0   ,
     *       2.91d0   , 3.02d0   , 3.25d0   , 3.41d0   , 3.82d0   ,
     *       4.48d0   , 5.124d0  , 5.217d0  , 5.318d0  , 5.420d0  ,
     *       5.520d0  , 5.597d0  , 5.611d0  , 5.627d0  , 5.656d0  ,
     *       5.721d0  , 5.948d0  , 6.036d0  , 6.094d0  , 6.016d0  ,
     *       5.813d0  , 5.644d0  , 5.498d0  , 5.515d0  , 5.530d0  ,
     *       5.560d0  , 5.600d0  , 5.663d0  , 5.775d0  , 5.955d0  ,
     *       6.218d0  , 6.29d0   , 6.63d0   , 7.38d0   , 8.75d0   ,
     *       10.80d0  , 14.02d0  , 20.00d0  , 33.49d0/
      
      lmkm=lambda*1.d6
      if (lmkm.lt.l(1)) then
       tmp=k(1)
      elseif (lmkm.gt.l(m)) then 
       tmp=k(m)
      else
       i=2
10     if (lmkm.gt.l(i)) then
        i=i+1
        goto 10
       endif
       tmp=k(i-1)+(k(i)-k(i-1))*(lmkm-l(i-1))/(l(i)-l(i-1))
      endif
      
      kgraph=tmp
      
      end
      