class Bashmark < Formula
  desc "Bashmark is a cli based benchmarking utility, it can perform matrix math on cpu and gpu to test graphical performance."
  homepage "https://github.com/Samrat079/Bashmark"
  url "https://github.com/Samrat079/Bashmark/releases/download/v1.0.2/bashmark-1.0.2.tar.gz"
  sha256 "1f441f24eeffaed0b018035bf3cb5938152a38059496b3922f5abc41f49e384c"
  version "1.0.2"
  license "MIT"

  depends_on "opencl-headers" # or whatever dependency is appropriate for OpenCL

  def install
    bin.install "bin/bashmark"
    pkgshare.install "share/bashmark/assets"
  end

  test do
    system "#{bin}/bashmark", "--version"
  end
end

