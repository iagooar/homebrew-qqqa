class Qqqa < Formula
  desc "Fast, stateless LLM assistant (qq/qa)"
  homepage "https://github.com/iagooar/qqqa"
  url "https://github.com/iagooar/qqqa/releases/download/v0.8.4/qqqa-v0.8.4-src.tar.gz"
  sha256 "81e8ac7dde70d3ad8ccb8709428eabd62285d79708ac1932f01d452d0010f934"
  version "0.8.4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "qq — ask an LLM assistant", shell_output("#{bin}/qq --help")
  end
end
