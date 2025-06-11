class Bashmark < Formula
  desc "Bashmark is a cli based benchmarking utility, it can perform matrix math on cpu and gpu to test graphical performance."
  homepage "https://github.com/Samrat079/Bashmark"
  url "https://github.com/Samrat079/Bashmark/releases/download/v1.0.1/bashmark-1.0.0.tar.gz"
  sha256 "4ca8d794980ca4b8431c3cd7290f0e4f5c9c93757a87c647865dd09ad87def56"
  license "MIT"

  depends_on "opencl-headers" # or whatever dependency is appropriate for OpenCL

  def install
    bin.install "bashmark"
  end

  test do
    system "#{bin}/bashmark", "--version"
  end
end

