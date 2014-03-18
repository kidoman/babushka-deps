dep "watch.bin"
dep "tcping.bin"
dep "ack.bin"
dep "tree.bin"

dep "wget.bin"
dep "curl.bin"

dep "apple-gcc42.bin" do
  provides "gcc-4.2"
end
dep "autoconf.bin"
dep "automake.bin"
dep "go.bin"

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

dep "all-packaged-apps" do
  requires "watch.bin"
  requires "tcping.bin"
  requires "ack.bin"
  requires "tree.bin"

  requires "wget.bin"
  requires "curl.bin"

  requires "apple-gcc42.bin"
  requires "autoconf.bin"
  requires "automake.bin"
  requires "go.bin"

  requires "git.bin"
  requires "bazaar.bin"
  requires "mercurial.bin"

  requires "axel.bin"
  requires "ssh-copy-id.bin"

  requires "xz.bin"
end
