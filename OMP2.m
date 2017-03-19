function  err= OMP2(m_tr,o_tr,m_te,o_te,s)


x= zeros(size(m_tr,2),1);
r=o_tr;
lambda=[];

for i = 1:s  
    temp = abs(m_tr' * r);
    [v, IX] = max(temp);
    lambda = [lambda IX];
    x_out = m_tr(:, lambda)\o_tr;
    r = o_tr-m_tr(:,lambda)*x_out;
end

x(lambda') = x_out;
o_pred=m_te*x;
err=sqrt(mean((o_te-o_pred).^2));

end