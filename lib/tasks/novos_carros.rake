desc "Explaining what the task does"
task :novosc do
  prices = { "2020": 129.438, "2021": 139.416, "2022": 252.782, "2023": 305.291 }
  prices.each_key do |a|
    car = Vehicle.where(year: a.to_s, name: "Compass")
    car.each do |c|
      c.update(price: prices[a])
    end
  end
end
