class Remotop < Formula
  desc "Btop-style monitor for inbound SSH and remote terminal sessions"
  homepage "https://github.com/ricardusmd/remotop"
  url "https://raw.githubusercontent.com/ricardusmd/remotop/23cc4c10c5bd423f9a05a1ac572ff4a1eb2c41e5/remotop"
  version "0.1.1"
  sha256 "8fc1da27d154a0db5d913600d4821646ee4cdaf05833d99372a721b67b540ddf"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "remotop"
  end

  test do
    assert_match "remotop 0.1.1", shell_output("#{bin}/remotop --version")
  end
end
