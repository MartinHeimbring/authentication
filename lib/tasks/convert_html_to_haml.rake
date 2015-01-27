namespace :abc do
  desc "Convert all .erb files to .haml"
  task :html2haml => :environment do
    sh("find . -name \\*.erb -print | sed 'p;s/.erb$/.haml/' | xargs -n2 html2haml")
    # alternative: using %x{} instead of sh(), both run commands
  end
end