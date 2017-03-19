clear all;
m=dlmread("winequality-red.csv",";");
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

clear all;
m1=dlmread("winequality-white.csv",";");
sz1=size(m1,1);
tr1=round(0.7*sz1);
te1=sz1-tr1;

m_tr1=m1(1:tr1,:);
o_tr1=m_tr1(:,end);
m_tr1=m_tr1(:,1:end-1);

m_te1=m1(end-te1+1:end,:);
o_te1=m_te1(:,end);
m_te1=m_te1(:,1:end-1);

z1=OMP2(m_tr1,o_tr1,m_te1,o_te1,3)


