require 'yaml'
  
def load_library
  # code goes here
  
  emoticons = YAML.load_file('lib/emoticons.yml')
   #emoticonindex = {}
   emoticonindex = {'meaning'  => {}, 'emoticon' => {} }

   emoticons.each do |key, value| 
    eng = value[0]
    jap = value[1]
    
    emoticonindex['emoticon'][eng] = jap
    emoticonindex['meaning'][jap] = key
    
    
  end
  return emoticonindex
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library