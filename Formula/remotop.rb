class Remotop < Formula
  desc "Btop-style monitor for inbound SSH and remote terminal sessions"
  homepage "https://github.com/ricardusmd/remotop"
  url "https://raw.githubusercontent.com/ricardusmd/remotop/18192ffcbcf5ef499ad46193b236da304002d3f7/remotop"
  version "0.1.0"
  sha256 "134f44d1e0e1343a9aa4560ccc83a3e5e904320c164e4146d91b9bf59a3b1f0e"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "remotop"
  end

  test do
    assert_match "remotop 0.1.0", shell_output("#{bin}/remotop --version")
  end
end
