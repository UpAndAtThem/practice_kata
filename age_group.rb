# add age_group to the munsters adult if 18+ and adolecent if under

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |member, details|
  details["age"] >= 18 ? details["age group"] = 'adult' : details["age group"] = 'adolecent'
end

