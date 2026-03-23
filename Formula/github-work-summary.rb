class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  version "0.1.8"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.8/github-work-summary-darwin-arm64.tar.gz"
      sha256 "734d721bafaf2d7ee7414e7ecb90149004c130aaa8eeec13ed99f24383e7c4fe"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.8/github-work-summary-darwin-amd64.tar.gz"
      sha256 "987b00e3889e85b6da90f0b738a570ab88e85139124ff546b75acbb0c0ee2b91"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.8/github-work-summary-linux-arm64.tar.gz"
      sha256 "9fabde1f79feb537b85dd23f77e2ab5676472f47ab77dd17a271d52cbd35fc91"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.8/github-work-summary-linux-amd64.tar.gz"
      sha256 "74fbb29feba99d7999783ce9cd0390e38dd1eee01fa76481e963bf8e291ed2fe"
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
