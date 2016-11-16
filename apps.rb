dep "zsh.bin"

dep "watch.bin"
dep "tcping.bin"
dep "ack.bin"
dep "tree.bin"

dep "wget.bin"
dep "curl.bin"
dep "axel.bin"

dep "xz.bin"
dep "unrar.bin"

dep "autoconf.bin"
dep "automake.bin"

dep "go.bin

dep "nvm" do
  met? {
    File.directory?(File.expand_path("~/.nvm"))
  }
  meet {
    shell("curl https://raw.github.com/creationix/nvm/master/install.sh | sh")
  }
end

dep "git.bin"

dep "bazaar.bin" do
  provides "bzr"
end

dep "mercurial.bin" do
  provides "hg"
end

dep "ssh-copy-id.bin"

dep "nmap.bin"

dep "all-packaged-apps" do
  requires "zsh.bin"
  requires "watch.bin"
  requires "tcping.bin"
  requires "ack.bin"
  requires "tree.bin"

  requires "wget.bin"
  requires "axel.bin"
  requires "curl.bin"

  requires "xz.bin"
  requires "unrar.bin"

  requires "autoconf.bin"
  requires "automake.bin"

  requires "go"

  requires "maven.bin"

  requires "git.bin"
  requires "bazaar.bin"
  requires "mercurial.bin"

  requires "ssh-copy-id.bin"

  requires "nmap.bin"
end
