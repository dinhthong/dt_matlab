%% Program to calculate the end money you will get if you deposit money to the bank monthly
% Simly program to calculate compound interest
% I think it needs improvement for the case where I put money into the bank
% everymonth as soon as receive the paycheck

clear all;

saving_amount_per_month = 3000;
year_to_save = 5;
yearly_interest_rate = 0.06;
% number of year working

end_month = year_to_save*12-1;
final_sum = 0;
for i = 0:end_month
    current_interest = saving_amount_per_month*(1+yearly_interest_rate)^(i/12)
    final_sum = final_sum+current_interest
end
% nenkin can be received after you completing all the procedure to leave
% Japan for good
conversion_rate = 165;
final_money_sum = final_sum*conversion_rate;