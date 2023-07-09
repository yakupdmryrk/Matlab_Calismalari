function y = AyrikZamanliBirimRampa(t) 
y=t.*(t>=0);
ks=find(round(t)~=t);
if(~isempty(ks))
y(ks)==NaN;
end
end