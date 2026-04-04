class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  url "https://github.com/RDX463/github-work-summary/releases/download/v1.0.0/github-work-summary-darwin-arm64.tar.gz"
  sha256 "a44c462d668b1a20972f180fc6e2e6ef93f0fb58f8bb559b6a91253fe9e46637"
  version "1.0.0"

  def install
    bin.install "github-work-summary"
    bin.install_symlink "github-work-summary" => "gws"
  end

  test do
    assert_match "Summarize your GitHub work", shell_output("#{bin}/github-work-summary --help")
  end
end
