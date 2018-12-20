function yint = implicint(func,wgtfun,LB,UB,Npoints,x0)
%func is a function that its inverse does not have an (easy) analytical
%solution and should be sovled for y = imp_fun(x) given the form of x = func(y) 
%LU and UB are the lower and upper bound to find inverse and take integral over
%increase Npoints to inprove accuracy, this may result in low speed.
% wgtfun is an optional weight function, such as a PDF function to integral over. 
%It could be ignored by giving by y = 1 function instead.
if nargin ==5
    x0 =0;
    warning('Not having an starting point might slow down the extimation or end up giving no answer')
end
if nargin <5
    error('implicint needs at least 5 arguments');
end


[nodes,weights] = lgwt(Npoints, LB,UB);
f_nodes = zeros(size(nodes));

%find the inverse points 
zerofn = @(y,x0) fzero(@(x) func(x) - y,x0);
for i = 1:length(nodes)
    if i>1
        x0 = f_nodes(i-1);
    end
    fn_to_int = @(x) zerofn(x,x0).*wgtfun(x);
    f_nodes(i) = fn_to_int(nodes(i));
end

yint = weights'*f_nodes;
end
