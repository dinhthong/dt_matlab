%% Program to calculate the end money you will get if you deposit money to the bank monthly
% Assume that year nenshuu doesn't increase
% Doesn't care about bonuses

clear all;

% User Input Variables
daily_overtime_inhour = 1.5;
yearly_salary = 1000*10000; %% [Japanese yen]
year_to_save = 25;

c_rate_yentovnd = 175;
work_days = 240 % employment contract


rate_hourly = yearly_salary/(work_days*8);

% normal minute rate 
bunkyuu = rate_hourly/60;
bunkyuu_vnd = bunkyuu*c_rate_yentovnd;
% work in overtime hourly rate

daily_rate=rate_hourly*8;
% work_days=yearly_salary/daily_rate;

leave_days = 365-work_days;
% currency exchange rate

overtime_rate_hourly=rate_hourly*1.2; %% overtime rate per hour [Japanese yen]

% overtime is 1 hour per day on average
yearly_overtime_salary = work_days*overtime_rate_hourly*daily_overtime_inhour; % [Japanese yen]

actual_yearly_salary = yearly_salary + yearly_overtime_salary;
actual_monthly_salary = actual_yearly_salary/12;

%% calculating all the consumption every month
tax = actual_monthly_salary*0.2;
housing_rent = 55000;
other_expense = 90000; %% foods
utilities_fee_monthly = 6500; %% kou.netsu.hi
gas_fee_monthly = 6000;

saving_amount_per_month_yen = actual_monthly_salary-housing_rent-other_expense-tax;
saving_amount_per_month_yen = saving_amount_per_month_yen - utilities_fee_monthly - gas_fee_monthly;

yearly_interest_rate = 8/100;
% number of year working

end_month = year_to_save*12-1;
final_sum = 0;
for i = 0:end_month
    current_interest = saving_amount_per_month_yen*(1+yearly_interest_rate)^(i/12)
    final_sum = final_sum+current_interest
end
% nenkin can be received after you completing all the procedure to leave
% Japan for good
nenkin = year_to_save*1.1*yearly_salary/12; % [JP yen]
final_money_vnd = final_sum*c_rate_yentovnd + nenkin*c_rate_yentovnd;
