class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.0/github-work-summary-darwin-arm64.tar.gz"
  sha256 "7eee8d5b8b972223e987e47f5d1c41c3d6f14bdc1d763cd241115854a6c30eb0"
  version "0.1.0"

  def install
    bin.install "github-work-summary"
    bin.install_symlink "github-work-summary" => "gws"
  end

  test do
    assert_match "Summarize your GitHub work", shell_output("#{bin}/github-work-summary --help")
  end
end
