def stock_picker(arr_prices)
	profit = [0,0]
	for x1 in 0...arr_prices.length
		for x2 in x1...arr_prices.length
				profit = [arr_prices[x1], arr_prices[x2]] if (arr_prices[x2] - arr_prices[x1]) > (profit[1] - profit[0])
		end
	end
	[arr_prices.index(profit[0]), arr_prices.index(profit[1])]
end

user_arr_prices = [17,3,6,9,15,8,6,1,10]
buy_day = stock_picker(user_arr_prices)[0]
sell_day = stock_picker(user_arr_prices)[1]

puts "Best day for buy was #{buy_day + 1} (#{user_arr_prices[buy_day]} USD) and for sell was #{sell_day + 1} (#{user_arr_prices[sell_day]} USD). Your profit would be #{user_arr_prices[sell_day] - user_arr_prices[buy_day]} USD."