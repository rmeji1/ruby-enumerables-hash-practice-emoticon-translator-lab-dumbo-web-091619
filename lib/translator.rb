# require modules here
require "yaml"

ENGLISH_INDEX = 0
JAPANESE_INDEX = 1
  
def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  memo = { get_meaning: {}, get_emoticon: {} }
  
  memo = emoticons.reduce( memo ) do |memo, (key, value)|
    p memo[:get_meaning][value] = value[JAPANESE_INDEX] 
    break
    memo
  end
  
  p memo
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end