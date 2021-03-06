function err=omp(m_tr,o_tr,m_te,o_te,s)
%The algorithm

[n,k] =size(m_tr);
x=zeros(k,1);
r=o_tr;
supporter=zeros(5,1);
lambda=[];
counter=0;

while (counter<s)
    counter=counter+1;
    temp=zeros(k,1);
    ind=setdiff([1:k],supporter);
    for i=ind
        temp(i)=m_tr(:,i)'*r;
    end
    [~,chs]=max(abs(temp));
    supporter(counter)=chs;
    lambda=[lambda m_tr(:,chs)];
    x_out=lambda\o_tr;
    r=o_tr-lambda*x_out;
end

for i=1:s
    x(supporter(i))=x_out(i);
end

o_pred=m_te*x;
err=sqrt(mean(o_te-o_pred).^2);

end 