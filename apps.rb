dep "zsh.bin"

dep "watch.bin"
dep "tcping.bin"
dep "ack.bin"
dep "tree.bin"

dep "wget.bin"
dep "curl.bin"
dep "unrar.bin"

dep "apple-gcc42.bin" do
  provides "gcc-4.2"
end
dep "autoconf.bin"
dep "automake.bin"
dep "go" do
  met? {
    in_path? "go"
  }
  meet {
    shell("brew install go --cross-compile-common")
  }
end

dep "nvm" do
  met? {
    File.directory?(File.expand_path("~/.nvm"))
  }
  meet {
    shell("curl https://raw.github.com/creationix/nvm/master/install.sh | sh")
  }
end

dep "maven.bin" do
  provides "mvn"
end

dep "git.bin"

dep "bazaar.bin" do
  provides "bzr"
end

dep "mercurial.bin" do
  provides "hg"
end

dep "axel.bin"
dep "ssh-copy-id.bin"

dep "xz.bin"

dep "nmap.bin"

dep "redis.bin" do
  provides "redis-cli"
end
dep "mysql.bin"

dep "all-packaged-apps" do
  requires "zsh.bin"
  requires "watch.bin"
  requires "tcping.bin"
  requires "ack.bin"
  requires "tree.bin"

  requires "wget.bin"
  requires "curl.bin"
  requires "unrar.bin"

  # requires "apple-gcc42.bin"
  requires "autoconf.bin"
  requires "automake.bin"
  requires "go"
  requires "nvm"

  requires "maven.bin"

  requires "git.bin"
  requires "bazaar.bin"
  requires "mercurial.bin"

  requires "ssh-copy-id.bin"

  requires "xz.bin"

  requires "nmap.bin"

  requires "redis.bin"
  requires "mysql.bin"
end
