class Bashmark < Formula
  desc "Bashmark is a cli based benchmarking utility, it can perform matrix math on cpu and gpu to test graphical performance."
  homepage "https://github.com/Samrat079/Bashmark"
  url "https://github.com/Samrat079/Bashmark/releases/download/v1.0.1/bashmark-1.0.1.tar.gz"
  sha256 "e3a92ed0e8849792762f6e11b7525631cb69b83ab3c6cf238e058652d703dd9e"
  license "MIT"

  depends_on "opencl-headers" # or whatever dependency is appropriate for OpenCL

  def install
    bin.install "build/bashmark"
  end

  test do
    system "#{bin}/bashmark", "--version"
  end
end

