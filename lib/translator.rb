# require modules here
require "yaml"
  
def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  memo = { get_meaning: {}, get_emoticon: {} }
  
  english_index = 0
  japanese_index = 1
  
  memo = emoticons.reduce( memo ) do |memo, (key, value)|
    japanese_emoticon = value[english_index]
    english_emoticon = value[japanese_index]
    memo[:get_meaning][japanese_emoticon] = key
    memo[:get_emoticon][english_emoticon] = english_emoticon
    memo
  end
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end