function [y]=DSLSI2D(h,x)
[Mh,Nh] = size(h);
[Mx,Nx] = size(x);
y = zeros(Mh+Mx-1, Nh+Nx-1);
    for kk=0:Mh-1
    for ll=0:Nh-1
    y(kk+1:kk+Mx,ll+1:ll+Nx)=y(kk+1:kk+Mx,ll+1:ll+Nx)+h(kk+1,ll+1)*x;
    end
    end
end