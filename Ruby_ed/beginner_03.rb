require "csv"

prefectureHash = Hash.new

CSV.foreach("popu-pref.csv") do |row|
  year = row[0]
  prefecture = row[1]
  value = prefectureHash[prefecture]
  if (!value)
    value = {
      popu10: 0,
      popu15: 0,
      change: nil,
    }
  end

  if (year == "2010")
    value[:popu10] = row[3].to_i + value[:popu10]
  end
  if (year == "2015")
    value[:popu15] = row[3].to_i + value[:popu15]
  end
  prefectureHash[prefecture] = value
end

prefectureHash.each do |hash|
  if hash[1][:popu10] != 0 || hash[1][:popu15] != 0
    hoge = hash[1][:popu15] / hash[1][:popu10]
    hash[1][:change] = hoge
  end
  p hash
end
