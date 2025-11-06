class Qqqa < Formula
  desc "Fast, stateless LLM assistant (qq/qa)"
  homepage "https://github.com/iagooar/qqqa"
  url "https://github.com/iagooar/qqqa/releases/download/v0.8.3/qqqa-v0.8.3-src.tar.gz"
  sha256 "6b843e3dfe0344ca254aecd2a231402a4165780927631ba55652162b56224dff"
  version "0.8.3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "qq — ask an LLM assistant", shell_output("#{bin}/qq --help")
  end
end
