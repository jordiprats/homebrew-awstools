class Awstools < Formula
  homepage "https://github.com/jordiprats/awstools"
  url "https://github.com/jordiprats/awstools/archive/refs/tags/1.0.tar.gz"
  sha256 "74adca8176aad78dbe1d6064d370514a7154dc3c2e7ee4a88d868d87fa34b878"

  def install
    system "python3", "-m", "pip", "install", "-r", "requirements.txt"
    system "mkdir", "-p", "~/awstools"
    system "sh", "./helpers/macinstall.sh", "#{prefix}"
  end

  test do
    system "python3 awstools.py"
  end
end
