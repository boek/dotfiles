require 'rake'
require 'fileutils'

HOME = ENV['HOME']

IGNORE_FILES = %w[Rakefile README.mdown]

def make_symlink(file)
  system "ln -s \"$PWD/#{file}\" \"$HOME/.#{file}\""
end

def replace(file)
  FileUtils.remove_entry File.join(HOME, ".#{file}")
  make_symlink file
end

task :default => [:install]

task :install do
  Dir['*'].each do |file|
    puts file
    next if (IGNORE_FILES.include? file)  || ((file =~ /\.sample$/) != nil) 
    if File.exist?(File.join(HOME, ".#{file}"))
      replace file
    else
      make_symlink file
    end
  end
end
