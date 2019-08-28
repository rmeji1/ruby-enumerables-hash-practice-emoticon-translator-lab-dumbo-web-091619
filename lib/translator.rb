# require modules here
require "yaml"

ENGLISH_INDEX = 0
JAPANESE_INDEX = 1
  
def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  memo = { get_meaning: {}, get_emoticon: {} }
  
  memo = emoticons.reduce( memo ) do |memo, (key, value)|
    memo[:get_meaning][value[JAPANESE_INDEX] ] = key
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