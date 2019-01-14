require "yaml"
  
def load_library
  # code goes here
  
  emoticons = YAML.load_file('./lib/emoticons.yml')

   emoticonindex = {'meaning'  => {}, 'emoticon' => {} }

   emoticons.each do |key, value| 
    english = value[0]
    japanese = value[1]
    emoticonindex['meaning'][japanese] = meaning
    emoticonindex['emoticon'][english] = japanese
  end
  emoticonindex
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library