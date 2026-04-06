class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  url "https://github.com/RDX463/github-work-summary/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "85b3ecb0acc73fad6604ce57606dc537758ac363a00fe698928b00c6b0086ed6"
  version "1.5.0"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "github-work-summary", "main.go"
    bin.install "github-work-summary"
    bin.install_symlink "github-work-summary" => "gws"
  end

  test do
    assert_match "Summarize your GitHub work", shell_output("#{bin}/github-work-summary --help")
  end
end
