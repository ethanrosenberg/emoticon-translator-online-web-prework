require "yaml"
  
def load_library
  # code goes here
  
  emoticons = YAML.load_file('./lib/emoticons.yml')

   emoticonindex = {'meaning'  => {}, 'emoticon' => {} }

   emoticons.each do |key, value| 
    english = value[0]
    japanese = value[1]
    emoticon_lib['get_meaning'][japanese] = meaning
    emoticon_lib['get_emoticon'][english] = japanese
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