def set_config(chances:5,dictionary:[],player_name:"Guest")
  return "Chances should be Integer" unless chances.is_a?(Integer)
  return "Dictionary should be Array  " unless dictionary.is_a?(Array)
  return "Guest Should be String " unless player_name.is_a?(String)
  
  config = {chances:chances, dictionary:["four","cat"] + dictionary, player:player_name}

end
config = set_config(chances:10 ,dictionary:"cow",player_name:"mohit")
print config
