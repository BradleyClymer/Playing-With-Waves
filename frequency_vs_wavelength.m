clc
close all

f = 10 .^ [ 0 : 0.1 : 18 ] ;
lambda = c ./ f ; 
loglog( f , lambda , 'LineSmoothing' , 'on' ) , 

xlabel( 'Frequency, Hz' ) , 
ylabel( '\lambda, meters' ) , 
y_ticks         = 10 .^ [ -9 -6 -3 -2 0 3 6 9 ]
set( gca , 'XTick' , 10 .^ [ 0 : 3 : 18 ] , 'YTick' , y_ticks )
old_y_labels    = get( gca , 'YTickLabel' )
new_y_labels    = { 'nm' , 'um' , 'mm' , 'cm' , 'm' , 'km' , 'Mm' , 'Gm' }
set( gca , 'YTickLabel' , new_y_labels )
by_frequency    = 10 .^ ( 0 : 3 : 18 )
lambda_freq     = c ./ by_frequency

hold on 
scatter( by_frequency , lambda_freq , '.r' )

% text( 
% 
grid on , 
% axis tight , 