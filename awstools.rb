class Awstools < Formula
  homepage "https://github.com/jordiprats/awstools"
  url "https://github.com/jordiprats/awstools/archive/refs/tags/1.0.tar.gz"
  sha256 "0824fb1c906d87a82bd35e48be9f8aa616dc7e8ba227091691af514e8a60cebf"

  def install
    system "python3", "-m", "pip", "install", "-r", "requirements.txt"
    system "mkdir", "-p", "~/awstools"
    system "sh", "./helpers/macinstall.sh"
  end

  test do
    system "python3 awstools.py"
  end
end
