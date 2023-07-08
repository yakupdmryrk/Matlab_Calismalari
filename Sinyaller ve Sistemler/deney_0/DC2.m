t = [-1:0.001:1]; %t zaman vektörü
dc21 = ones(size(t)); %x(t) = 1
dc22 = 2*t+3 ; % x(t) = 2t + 3 
dc23 = 3*t.^(2) - 5*t + 1; %x(t) = 3t^2 - 5t + 1
dc24 = (2*t.^(2)-4*t+1)./(3*t.^(3)-2*t.^(2)+5*t+2); %Buralarda noktalara dikkat etmemiz gerekiyor.
dc25 = 2*cos(2*pi*5*t+1); %x(t) = 2cos(2pi5t + 1)
dc26 = sin(2*pi*7*t).^(3);  %x(t) = sin^3(2pi7t)
dc27 = cos(2*pi*2*t.^(2)).^(5); % x(t) = cos^5(2pi2t^2)
dc28 = 3*sin(2*pi*(4*t+3)./(2*t.^(2)+1)) -4 ;
dc29 = (2*cos(sqrt(((2*abs(t)+1)./(4*t.^(2)+1)).^0.5)))./(3*sin(5*t-2).^(3)+4); 
dc210 = exp(j*2*pi*10*t); %x(t) = e^(j2pi10t)
dc211 = exp(j*pi*3*t.^(3));%x(t) = e^(jpi3(t^2))
dc212 = exp(-t.^(2)/2);%x(t) = e^((-t^2)/2)
dc213 = exp(-abs(t)); %x(t) = e^-|t|