class Qqqa < Formula
  desc "Fast, stateless LLM assistant (qq/qa)"
  homepage "https://github.com/iagooar/qqqa"
  url "https://github.com/iagooar/qqqa/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a1274ad02b74ccab7be9dbe2034cdcc817096ad8067c1d42b639a40c94abf864"
  version "1.0.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "qq — ask an LLM assistant", shell_output("#{bin}/qq --help")
  end
end
