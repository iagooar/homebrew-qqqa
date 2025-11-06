class Qqqa < Formula
  desc "Fast, stateless LLM assistant (qq/qa)"
  homepage "https://github.com/iagooar/qqqa"
  url "https://github.com/iagooar/qqqa/releases/download/v0.8.4/qqqa-v0.8.4-src.tar.gz"
  sha256 "081b89e9f35a7525f933938d663db098c37c0c714054d68f2319b00cd15b7264"
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
