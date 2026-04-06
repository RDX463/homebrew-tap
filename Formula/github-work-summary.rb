class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  url "https://github.com/RDX463/github-work-summary/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "17ac985d0f3cf501e0e92772d8d7ee2896b2314e8e4a9122d466126b8ec01ec2"
  version "2.2.0"

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
