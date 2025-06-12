class Bashmark < Formula
  desc "Bashmark is a cli based benchmarking utility, it can perform matrix math on cpu and gpu to test graphical performance."
  homepage "https://github.com/Samrat079/Bashmark"
  url "https://github.com/Samrat079/Bashmark/releases/download/v1.0.2/bashmark-1.0.2.tar.gz"
  sha256 "1f441f24eeffaed0b018035bf3cb5938152a38059496b3922f5abc41f49e384c"
  version "1.0.2"
  license "MIT"

  depends_on "opencl-icd-loader"

  def install
    bin.install "bin/bashmark"
    pkgshare.install "share/bashmark/assets"
  end

  test do
    system "#{bin}/bashmark", "--version"
  end
end

def caveats
  <<~EOS
    To use Bashmark's OpenCL GPU features, please ensure the appropriate GPU drivers and OpenCL runtimes are installed:

      - Intel: intel-opencl
      - AMD: rocm-opencl-runtime
      - NVIDIA: nvidia-opencl-icd 

    Check opencl compatablity with clinfo, without the above mentioned runtimes bashmark can't identify the GPU and will print "No GPU devices found.     GPU benchmark cannot run."
  EOS
end

