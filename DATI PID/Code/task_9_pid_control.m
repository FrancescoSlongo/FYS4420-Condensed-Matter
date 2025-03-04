
%--- Initiate channel for read and write ----
ai=analoginput('nidaq','dev1');
addchannel(ai,2:3);
ao=analogoutput('nidaq','dev1');  
addchannel(ao,0);

set(ai,'Samplerate',1000)                %configure  samplingrate 
set(ai,'SamplesPerTrigger',500)

set(ai.Channel(1), 'InputRange', [-0.05 0.05] )
set(ai.Channel(2), 'InputRange', [-10 10] )
   
v_in=zeros(2,1000);
v_in_ave=zeros(2,1);
% --- Set system parameters ----
T1=190;
T2=3.7;
H0=8.7465;

% --- Calculate closed-loop parameters ---
P=(1/3)*((T1+T2)^2)/(T1*T2)-1;
I=(1/27)*((T1+T2)^3)/((T1*T2)^2);
Kp=P/H0;
Ki=I/H0;

% --- Set reference temperature ---
Treference=30;

% --- iniialize variables ---
samples=1000;   % one samples = 0.18 sec

Tref=zeros(1,samples);
T=zeros(1,samples);
V=zeros(1,samples);
TI=0;

reftime=clock;
sfigure(60); %Silent version of figure
hold on;
for i=1:samples

    
  %--- Start sampling ---
   start(ai)                    %start sampling
   v_in=getdata(ai);
   v_in_ave=mean(v_in);
   temp=clock;
   c=etime(temp,reftime);
    
   %--- Calculate resitance in both thermistors t1 and ----
   R1=1598400;
   
   V=v_in_ave(2);
   r_T=v_in_ave(1).*R1./(V-v_in_ave(1));
  
   
   %--- Calculate temperature ----
   A0=0.00128285;
   A1=0.000236664;
   A2=8.99037e-8;
   
   T1=1./(A0+log(r_T).*(A1+A2.*(log(r_T)).^2));

  
   %--- Store Temperature, preasure and time ---
   
   T(i)=T1';
   cm(i)=c';
   
   Tref(i)=Treference+273.15;
   
   %--- Calculate the excitation ---
   if i>1
      Terr=Tref(i)-T(i);
      TI=TI+Terr*(cm(i)-cm(i-1));
   else
      TI=0;
   end    
   E=Kp*(Tref(i)-T1)+Ki*TI;
   Em(i)=E;
   
   if E<-4 E=-4;
   end
   if E>4 E=4;
   end
   
   %--- Write data to Peltier element ---
   putdata(ao,[E])
   %putdata(ao,0)      %que  the  data  in the  engine
   start(ao) 
   
   %--- Show data in window ---
   [i,c,Tref(i)-273.15,T(i)-273.15,E]
   
   %--- Reset read and write processes ---
   stop([ai ao])  
   sfigure(60);
   title('PID Controll');
   xlabel('Time (s)');
   ylabel('Temperature (K)');
   plot(c,T1,'.r')
   hold on;
   drawnow;
   save task_9_pid_control.mat cm T V Tref Kp Ki
end    

%--- Reset daq-card ---
putdata(ao,[0])
start(ao)
stop(ao)
daqreset
reset_pid