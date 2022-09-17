class Awstools < Formula
  homepage "https://github.com/jordiprats/awstools"
  url "https://github.com/jordiprats/awstools/archive/refs/tags/1.0.tar.gz"
  sha256 "ed3d2d9d0c46dd25d099d092ad6cd68f738c0b20c0f4d6d612534a89d0f2f608"

  def install
    system "python3", "-m", "pip", "install", "-r", "requirements.txt"
    system "mkdir", "-p", "~/awstools"
    system "sh", "./helpers/macinstall.sh", "#{prefix}"
  end

  test do
    system "python3 awstools.py"
  end
end
