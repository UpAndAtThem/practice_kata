mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

mailing_campaign_leads.each_with_index do |lead, index|
  capitalized_name = lead[:name].split.map { |name| name.capitalize}.join(" ")
  mailing_campaign_leads[index][:name] = capitalized_name
end

leads = mailing_campaign_leads.select do |lead|
          lead[:days_since_login] < 60 && lead[:mailing_list]
        end

mailing_campaign_leads

puts leads
