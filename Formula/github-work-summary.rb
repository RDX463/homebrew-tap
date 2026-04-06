class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  url "https://github.com/RDX463/github-work-summary/archive/refs/tags/v2.2.2.tar.gz"
  sha256 "acc330a3f610e98c1c258ac30ae348ec694b83070e732a600d21ce98fd721f0a"
  version "2.2.2"

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
