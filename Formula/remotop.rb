class Remotop < Formula
  desc "Btop-style monitor for inbound SSH and remote terminal sessions"
  homepage "https://github.com/ricardusmd/remotop"
  url "https://raw.githubusercontent.com/ricardusmd/remotop/43e11166a8b1be7feec1196c9441bce9d0b216fe/remotop"
  version "0.1.2"
  sha256 "f45512e3cfb85ceac0889648374dd2f7c57d1e5e961c611ae55274ae9145ee39"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "remotop"
  end

  test do
    assert_match "remotop 0.1.2", shell_output("#{bin}/remotop --version")
  end
end
