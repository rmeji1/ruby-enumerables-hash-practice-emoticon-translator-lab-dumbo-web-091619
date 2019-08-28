# require modules here
require "yaml"
  
def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  memo = { get_meaning: {}, get_emoticon: {} }
  
  ENGLISH_INDEX = 0
  JAPANESE_INDEX = 1
  
  memo = emoticons.reduce( memo ) do |memo, (key, value)|
    memo[:get_meaning][value[JAPANESE_INDEX]] = key
    memo[:get_emoticon][value[ENGLISH_INDEX]] = value[JAPANESE_INDEX]
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