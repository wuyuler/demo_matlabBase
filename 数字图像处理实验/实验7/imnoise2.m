function R = imnoise2(type, M, N, a, b)
if nargin == 1
   a = 0; b = 1;
   M = 1; N = 1;
elseif nargin == 3
   a = 0; b = 1;
end
switch lower(type)
case 'gaussian'
   R = a + b*randn(M, N);%高斯噪声
case 'salt & pepper'
   if nargin <= 3
      a = 0.05; b = 0.05;
   end
   % Check to make sure that Pa + Pb is not > 1.
   if (a + b) > 1
      error('The sum Pa + Pb must not exceed 1.')
   end
   R(1:M, 1:N) = 0.5;
   
   X = rand(M, N);
   c = find(X <= a);%a表示椒噪声的概率
   R(c) = 0;
   u = a + b;
   c = find(X > a & X <= u);%概率为a的盐噪声
   R(c) = 1;
otherwise
   error('Unknown distribution type.')
end

