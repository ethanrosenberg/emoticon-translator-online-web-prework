require "yaml"
  
def load_library(emoticon_file)
  emoticons = YAML.load_file(emoticon_file)
  
   #emoticonindex = {}
   emoticonindex = {'get_meaning'  => {}, 'get_emoticon' => {} }

   emoticons.each do |key, value| 
    eng = value[0]
    jap = value[1]
    
    emoticonindex['get_emoticon'][eng] = jap
    emoticonindex['get_meaning'][jap] = key
    
    
  end
  return emoticonindex
end

def get_japanese_emoticon(emoticon_file, emoticon)
  emoti_library = load_library(emoticon_file)
  japanese_emoticon = emoti_library['get_emoticon'][emoticon]
  if japanese_emoticon
    return japanese_emoticon
  else
    return 'Sorry, that emoticon was not found'
  end
  
end	

def get_english_meaning
  # code goes here
end

load_library("./lib/emoticons.yml")