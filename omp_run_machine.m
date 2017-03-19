clear all;
m=csvread("machine.csv");
sz=size(m,1);
tr=round(0.7*sz);
te=sz-tr;

m_tr=m(1:tr,:);
o_tr=m_tr(:,end);
m_tr=m_tr(:,1:end-1);

m_te=m(end-te+1:end,:);
o_te=m_te(:,end);
m_te=m_te(:,1:end-1);

z=OMP2(m_tr,o_tr,m_te,o_te,3)