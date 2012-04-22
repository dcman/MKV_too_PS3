require 'find'

# This script will find all mkv and m2ts files
# Then create txt files with the file paths to each
mkv_paths = []
m2ts_paths = []
Dir.mkdir('Z:\MKV_to_PS3') unless File.exists?('Z:\MKV_to_PS3')

Find.find('Z:\Shared Videos') do |path|
#if path =~ /.*\.r(\d+)$ | .*\.rar$/ rar regex
  if path =~ /.*\.mkv$/
    if path=~ /.Apple(\w+)/
      puts path
    else
    mkv_paths << path
    end
  end
  if path =~ /.*\.m2ts$/
    if path=~ /.Apple(\w+)/
      puts path 
    else
    m2ts_paths << path
    end
  end
end

file = File.open('Z:\MKV_to_PS3/MKV.txt', 'w')
mkv_paths.each do |line|
  file.write(line << "\n")
end

file = File.open('Z:\MKV_to_PS3/M2TS.txt', 'w')
m2ts_paths.each do |line|
  file.write(line << "\n")
end
