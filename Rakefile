
desc "Build site using Jekyll"
task :build do
  jekyll "build"
end

desc "Serve on Localhost with port 4000"
task :default do
  jekyll "serve"
end

desc "Deploy to webserver"
task :deploy => :build do
  rsync "teriiehina.pf/blog"
end

def jekyll(opts="", path="")
  sh "rm -rf _site"
  sh path + "jekyll " + opts
end

def rsync(domain)
  sh "rsync -rtz --delete _site/ teriiehina@teriiehina.pf:~/#{domain}/"
end
