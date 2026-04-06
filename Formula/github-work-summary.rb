class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  url "https://github.com/RDX463/github-work-summary/archive/refs/tags/v3.1.0.tar.gz"
  sha256 "0df83a55ac1c8a61481492b4181b3db4b375295943fcd2ec714911575752cf0b"
  version "3.1.0"

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
