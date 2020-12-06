Vin = 5;        % Enter maximum Input voltage
Vf = 0.7;       % specify cut-off voltage for diode
Ron = 0.3;      % specify on-resistance of diode
VolRange = [-Vin:0.1:Vin]'; %voltage range
%mapping of current values w.r.t voltage level
OffState = [-Vin:0.1:0.7]'*0; % values when diode in Off-state
OnState = [([0.8:0.1:Vin]' - Vf)/Ron]; % values when diode in On-state
Iout = vertcat(OffState,OnState); %total current values
%plot(range,total);