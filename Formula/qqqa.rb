class Qqqa < Formula
  desc "Fast, stateless LLM assistant (qq/qa)"
  homepage "https://github.com/iagooar/qqqa"
  url "https://github.com/iagooar/qqqa/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "073cdcbc68c1f65a611cf06f84468db1fa4db176bd48795bc3841a5f224f1aa3"
  version "0.10.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "qq — ask an LLM assistant", shell_output("#{bin}/qq --help")
  end
end
