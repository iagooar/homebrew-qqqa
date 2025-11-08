class Qqqa < Formula
  desc "Fast, stateless LLM assistant (qq/qa)"
  homepage "https://github.com/iagooar/qqqa"
  url "https://github.com/iagooar/qqqa/archive/refs/tags/v0.9.2.tar.gz"
  sha256 "66a3c0563a17560ff5b1a712e9b6d74a4a4b5cc9b00b29ce5ae161e13161d44b"
  version "0.9.2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "qq — ask an LLM assistant", shell_output("#{bin}/qq --help")
  end
end
