x = [1:1:100]
dc31 = x(22:1:56); %y = [x22 x23 x24 ... x55 x56 ]
dc32 = x(61:-1:41); %y = [x61 x60 x59 ... x42 x41 ]
dc33 = x(2:2:100); %y = [x2 x4 x6 ... x98 x100 ]
dc34 = x(1:2:99); %y = [x1 x3 x5 ... x97 x99 ]
dc35 = x(12:7:82); %y = [x12 x19 x26 ... x75 x82 ]
dc36 = x(97:-5:32); %y = [x97 x92 x87 ... x37 x32 ] 
dc37 = zeros(1,400); 
dc37(1:4:400)=x; %y = [x1 0 0 0 x2 0 0 0 x30 0 0 ... x990 0 0 x1000 0 0 ]
dc38 = zeros(1,400); 
dc38(3:4:400)=x; %y = [0 0 x1 0 0 0 x2 0 0 0 x30 ... 0 0 x990 0 0 x1000 0 ]
dc39 = zeros(1,300); 
dc39(2:3:300) = x(100:-1:1); %y = [0 x100 0 0 x99 0 0 x980 ... 0 x20 0 x1 0 ]
dc310 = zeros(1,55);
dc310(3:5:53) = x(42:4:82); %y = [0 0 x42 0 0 0 0 x46 0 0 0 0 x500 0 ... 0 0 x78 0 0 0 0 x820 0 ]
dc311 = zeros(1,48);
dc311(3:3:48) = x(95:-4:35); %y = [0 0 x95 0 0 x91 0 0 x870 0 ... 0 0 x390 0 x35 ]