require "yaml"
  
def load_library
  # code goes here
  
  emoticons = YAML.load_file('./lib/emoticons.yml')

   emoticonindex = {'meaning'  => {}, 'emoticon' => {} }

   emoticons.each do |key, value| 
    japanese_meaning = value[1]
    english_meaning = value[0]
    
    emoticonindex['get_meaning'][japanese] = meaning
    emoticonindex['get_emoticon'][english] = japanese
  end
  emoticon_lib
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library