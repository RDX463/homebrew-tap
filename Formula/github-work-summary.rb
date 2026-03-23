class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  version "0.1.9"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.9/github-work-summary-darwin-arm64.tar.gz"
      sha256 "77ef4dc13c94c76908e957cdafd32426fffcc16ba8cff061cf31735a5aa48371"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.9/github-work-summary-darwin-amd64.tar.gz"
      sha256 "586d2b63aa17bf9a3c69b28363c5e965e31cbcf136279fff8f071bef7e521543"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.9/github-work-summary-linux-arm64.tar.gz"
      sha256 "35e17f4c7ff667eba95525dc422a51e3cf82a50c4abdc70dff2100ab16d87899"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.9/github-work-summary-linux-amd64.tar.gz"
      sha256 "fe54093fed55b8708d74f1895757844b7c85620d86f0dffda0982a087a81b737"
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
