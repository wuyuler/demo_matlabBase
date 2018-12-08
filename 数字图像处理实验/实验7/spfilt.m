function f = spfilt(g, type, m,n,parameter)

% process the inputs
if nargin == 2
   m = 3; n = 3; q = 1.5; d = 2;
elseif nargin == 4
   q = 1.5; d = 2;
elseif nargin == 5
   q = parameter(1); d = parameter(1);
else 
   error('Wrong number of inputs.');
end

% Do the filtering.
switch type
case 'amean'%算数均值
   w = fspecial('average',[m n]);
   f = imfilter(g, w, 'replicate');
case 'gmean'%几何均值
   inclass = class(g);
    g = im2double(g);
    % Disable log(0) warning.
    warning off;
    f = exp(imfilter(log(g), ones(m, n), 'replicate')).^(1 / m / n);
    warning on;
    f = changeclass(inclass, f);
case 'chmean'
   inclass = class(g);
    g = im2double(g);
    f = imfilter(g.^(q+1), ones(m, n), 'replicate');
    f = f ./ (imfilter(g.^q, ones(m, n), 'replicate') + eps);
    f = changeclass(inclass, f);
case 'atrimmed'
    inclass = class(g);
    g = im2double(g);
    f = imfilter(g, ones(m, n), 'symmetric');
    for k = 1:d/2
       f = imsubtract(f, ordfilt2(g, k, ones(m, n), 'symmetric'));
    end
    for k = (m*n - (d/2) + 1):m*n
       f = imsubtract(f, ordfilt2(g, k, ones(m, n), 'symmetric'));
    end
    f = f / (m*n - d);
    f = changeclass(inclass, f);



end

