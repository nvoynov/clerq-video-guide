require 'clerq'
require 'thor'

class Guide < Thor
  include Thor::Actions

  desc "pdf", "Create PDF"
  def pdf
    puts "Directory: #{Dir.pwd}"
    puts Clerq.settings.document
    puts Clerq.settings.title

    `clerq build -t=pandoc.md.erb`
    Dir.chdir('bin') {
      `pandoc -s --toc clerq-video-guide.md -o "Clerq Video Guide.pdf"`
    }
    say "'bin/Clerq Video Guide.pdf' created!"
  end

  desc "stat", "Print statistic"
  def stat
    nodes = Clerq::Interactors::JoinNodes.()
    say "#{nodes.to_a.drop(1).size} nodes total"
  end

end
