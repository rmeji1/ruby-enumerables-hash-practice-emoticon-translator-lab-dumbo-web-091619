# require modules here
require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  memo = { get_meaning: {}, get_emoticon: {} }
  
  memo = emoticons.reduce( memo ) do |memo, (key, pair)|
    memo[]
    memo
  end
  
  # p emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end