#!/usr/bin/env ruby
#
#

ME=File.basename($0)
MD=File.dirname($0)

MDDIR=File.realpath(File.join(MD, ".."))

reference_md=File.join(MDDIR, "REFERENCE.md")
GNOME_SHELL_JS="https://github.com/GNOME/gnome-shell/tree/master/js"

lines=File.read(reference_md).split(/\r|\r\n|\n/)

re_section=/#\sFiles\s`imports.(?<section>ui|misc)`/
re_file_anchor=/^\s*\*\s\[(?<file>[^\]]+)\]\s*\((?<anchor>[^)]+)\)/

# ^## [accessDialog.js](https://github.com/GNOME/gnome-shell/tree/master/js/ui/accessDialog.js)
# ^## altTab.js
re_file_target=/^##\s+(?<file>[^\[\]\(\)]+)/

def update_line(anchors, file)
  subdir=anchors[file][:subdir]
  section=anchors[file][:section]
  if subdir.nil?
    line="## [#{file}](#{GNOME_SHELL_JS}/#{section}/#{file})"
  else
    line="## [#{file}](#{GNOME_SHELL_JS}/#{section}/#{subdir}/#{file})"
  end
  line
end

anchors={}
section=nil
subdir=nil
lines.each_index { |idx|
  line=lines[idx]

  # # Files `imports.ui`
  # # Files `imports.misc`
  m = re_section.match(line)
  unless m.nil?
    unless m[:section].eql?(section)
      section=m[:section]
      subdir=nil
      puts "Matched section: #{idx} #{section}"
    end
    next
  end

  next if section.nil?

  # ^* [components](#components) directory
  # ^* [status](#status-indicators) directory: This contains the files for all the standard status indicators in the `Status Area`
  re_subdir=/^*\s\[(?<subdir>[^\]]+)\].*?directory/
  m = re_subdir.match(line)
  unless m.nil?
    subdir=m[:subdir]
    puts "Matched subdir #{idx} #{line} - #{subdir}"
    next
  end

  # * [accessDialog.js](#accessdialogjs)
  m = re_file_anchor.match(line)
  unless m.nil?
    puts "Matched file anchor: #{idx} #{line} - #{m[:file]} #{m[:anchor]}"
    file=m[:file]
    anchor=m[:anchor]
    anchors[file]={
      idx: idx,
      section: section,
      anchor: anchor,
      subdir: subdir
    }
    next
  end

  m = re_file_target.match(line)
  unless m.nil?
    #puts "Matched target: #{idx} #{line} - #{m[:file]}"
    # rewrite as ^## [m[:file]](https://github.com/GNOME/gnome-shell/tree/master/js/#{section}/#{file})
    file=m[:file]
    if anchors.key?(file)
      lines[idx]=update_line(anchors, file)
      puts lines[idx]
    else
      ## keyboard.js 2 <- #keyboardjs-2
      anchor="#"+file.downcase.gsub(/\./, "").gsub(/\s/, "-")
      re_file_n=/(?<file>.*?\.js)\s/
      m=re_file_n.match(file)
      if m.nil?
        puts "Ignoring target #{idx} #{line} for file=#{file}"
      else
        file=m[:file]
        puts "Found #{file} - #{anchor} - #{anchors[file]}"
        if anchors.key?(file) && anchor.eql?(anchors[file][:anchor])
          puts "Found numbered anchor"
          lines[idx]=update_line(anchors, file)
          puts lines[idx]
        else
          puts "WARN: Ignore target #{idx} #{line}"
        end
      end
    end
    next
  end
}

File.open(File.join(MDDIR, "REFERENCE2.md"), "w+") { |fd|
  lines.each { |line|
    fd.puts(line)
  }
}
