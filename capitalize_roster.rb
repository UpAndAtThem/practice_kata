def capitalize_roster!(team)
  team.map do |key, position_list|
    position_list.map! do |name| 
      name.gsub("_", " ").split.map do |word| 
        word.capitalize
      end.join(" ")
    end
    team
  end


end

baseball_roster = {first_base: %w(willie_mays charlie_booker crooks_peters quinn_rust),
                   second_base: %w(Jimmy_tulips Trent_Brockstan Philis_lepto),
                   third_base: %w(Juli_jules),
                   catcher: %w(robin_wheeler, John_mann, Guy_Ambigu),
                   pitcher: %w(throw_johnstone)}

capitalize_roster! baseball_roster
