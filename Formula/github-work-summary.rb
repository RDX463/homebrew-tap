class GithubWorkSummary < Formula
  desc "Summarize your GitHub work from the last 24 hours"
  homepage "https://github.com/RDX463/github-work-summary"
  version "0.1.7"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.7/github-work-summary-darwin-arm64.tar.gz"
      sha256 "4f5bd8fdd4cee3a10869e00a408ff515e39ab50d825a334528cf3bd3d80455b7"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.7/github-work-summary-darwin-amd64.tar.gz"
      sha256 "b795dcdb09e9da304dd7ac23630370e98497fda456e8c1181247d8239438a859"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.7/github-work-summary-linux-arm64.tar.gz"
      sha256 "b5caae03e146cc314722c7a6348cde55ba3b9ad8c714fae13577e2eabab5325a"
    else
      url "https://github.com/RDX463/github-work-summary/releases/download/v0.1.7/github-work-summary-linux-amd64.tar.gz"
      sha256 "eac05d07ae55e36d74a70e28196e7c2998fccb636cfdb4e793c0dfed8948242d"
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
