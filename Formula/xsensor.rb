class Xsensor < Formula
  desc "XSensor infrastructure CLI"
  homepage "https://github.com/xsensor-team/xsensor"
  version "0.1.6"

  on_macos do
    url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.6/xsensor-aarch64-apple-darwin.tar.gz"
    sha256 "fcd837c5410495df3bdb2c9e8ab667ee7e9670a67f0061b5ac1b98302c78317d"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.6/xsensor-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45f07cc5ffd31f011122a897e8dacbedec8e1e010df9640ff10be1cdca69b9e6"
    else
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.6/xsensor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3003a43e39d3a12c1a81a7909533199aaf361c09801b4b70f4ebf958bbca1f34"
    end
  end

  def install
    bin.install "xsensor"
  end

  test do
    assert_match "xsensor", shell_output("#{bin}/xsensor --version")
  end
end
