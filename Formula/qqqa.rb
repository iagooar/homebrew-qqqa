class Qqqa < Formula
  desc "Fast, stateless LLM assistant (qq/qa)"
  homepage "https://github.com/iagooar/qqqa"
  url "https://github.com/iagooar/qqqa/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "b7360c786ed2dba34426d1dde44d669f17570fd5f2205392eaa8d2e789cf6a3c"
  version "1.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "qq — ask an LLM assistant", shell_output("#{bin}/qq --help")
  end
end
