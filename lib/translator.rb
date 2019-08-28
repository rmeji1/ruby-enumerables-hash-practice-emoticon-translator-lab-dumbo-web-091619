# require modules here
require "yaml"
  
def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  memo = { get_meaning: {}, get_emoticon: {} }
  
  english_index = 0
  japanese_index = 1
  
  memo = emoticons.reduce( memo ) do |memo, (key, value)|
    japanese_emoticon = value[JAPANESE_INDEX]
    english_emoticon = value[ENGLISH_INDEX]
    memo[:get_meaning][japanese_emoticon] = key
    memo[:get_emoticon][english_emoticon] = venglish_emoticon
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