class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  version "0.1.6"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.6/github-work-summary-darwin-arm64.tar.gz"
      sha256 "638a9286e8f75a1f7b52391437f60be2adc2352fce296913c4c33093764e1b6d"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.6/github-work-summary-darwin-amd64.tar.gz"
      sha256 "77e5d798c98a99cff2d00b3b96d9c0cce342dcebc4a6e4356f037d887948056b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.6/github-work-summary-linux-arm64.tar.gz"
      sha256 "ed5941a7ac682d613fd5fcaec3536856a29883aaa62f8c6c6e95224bc75a67dd"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.6/github-work-summary-linux-amd64.tar.gz"
      sha256 "e4dae0965e7f7787a026a56cd901b2e4477e35994cbf0c90a082db5300e2c750"
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
