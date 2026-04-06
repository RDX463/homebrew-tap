class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  url "https://github.com/RDX463/github-work-summary/archive/refs/tags/v2.2.1.tar.gz"
  sha256 "8bb4a467030fe0235aaed2ef18f76356efe3fd5e78818d2b85abc010e2b8771b"
  version "2.2.1"

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
