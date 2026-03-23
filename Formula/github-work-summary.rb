class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  version "0.1.4"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.4/github-work-summary-darwin-arm64.tar.gz"
      sha256 "2f16892d93b4dba8100931f0a6bdd3aa9c4d9668c4c138866eb40811e5c2fab2"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.4/github-work-summary-darwin-amd64.tar.gz"
      sha256 "dbf59785e3a67fd5a3a55fe6c5aa354b0105dc2289a35470ae34662d384b0e76"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.4/github-work-summary-linux-arm64.tar.gz"
      sha256 "538deddd5708bfe998c69bce8f68f761bafdfefbdef8ea2b391969f8a29fe070"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.4/github-work-summary-linux-amd64.tar.gz"
      sha256 "7d0606343236ab4e255f33907312c33ac76aff020b82fbe2ec00f98ff04afb36"
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
