class Awstools < Formula
  homepage "https://github.com/jordiprats/awstools"
  url "https://github.com/jordiprats/awstools/archive/refs/tags/1.0.tar.gz"
  sha256 "004d6fafabe0b84a2b147fcffa7eeb6abee896a5186a1c044df1fae44cd1873d"

  def install
    system "python3", "-m", "pip", "install", "-r", "requirements.txt"
    system "mkdir", "-p", "~/awstools"
    system "sh", "./helpers/macinstall.sh", "#{prefix}"
  end

  test do
    system "python3 awstools.py"
  end
end
