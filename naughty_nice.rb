require 'yaml'

def naughty_nice(list)
  return list["naughty"], list["nice"]
end

santas_list = YAML.load_file("santas_list.yml")

naughty, nice = naughty_nice(santas_list)

p nice
