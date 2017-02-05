# require modules here
require "yaml"

def load_library(path)
  # code goes here
  file = YAML.load_file(path)
  output = {"get_meaning" => {}, "get_emoticon" => {}}
  file.each do |meaning, emoticons|
    output["get_meaning"][emoticons[1]] = meaning
    output["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  output
end

def get_japanese_emoticon(path, emoticon)
  output = load_library(path)
  output["get_emoticon"][emoticon]
  case output["get_emoticon"][emoticon]
  when nil
    "Sorry, that emoticon was not found"
  else
    output["get_emoticon"][emoticon]
  end


end

def get_english_meaning(path, emoticon)
  output = load_library(path)
  case output["get_meaning"][emoticon]
  when nil
    "Sorry, that emoticon was not found"
  else
    output["get_meaning"][emoticon]
  end


  # code goes here
end
