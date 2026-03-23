class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  version "0.1.5"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.5/github-work-summary-darwin-arm64.tar.gz"
      sha256 "9bae34d8280cccf357b290e32f2e4a6bbbfb19550b8abc20ce9d702dc4c21201"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.5/github-work-summary-darwin-amd64.tar.gz"
      sha256 "a1aee0c7c7f85106db46b17f5946f21c5c4074fae19362e104cff844f10a505e"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.5/github-work-summary-linux-arm64.tar.gz"
      sha256 "09d91ed77596db2479d92e3fb0f1d232b2178a397147e26ab4bdeb1f5ff7e589"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.5/github-work-summary-linux-amd64.tar.gz"
      sha256 "ecc5d38542ef1b197d4ed901023ba0892aaa2929ef85aeb34a585b88d2ec569e"
    end
  end

  def install
    bin.install "github-work-summary"
    bin.install_symlink "github-work-summary" => "gws"
  end

  test do
    assert_match "Summarize your GitHub work", shell_output("#{bin}/github-work-summary --help")
  end
end
