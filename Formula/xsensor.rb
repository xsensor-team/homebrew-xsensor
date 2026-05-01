class Xsensor < Formula
  desc "XSensor infrastructure CLI"
  homepage "https://github.com/xsensor-team/xsensor"
  version "0.1.5"

  on_macos do
    url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.5/xsensor-aarch64-apple-darwin.tar.gz"
    sha256 "16d160c646ee6684eeef22520466bf1878a9207c593b3588e148ac9ecd3ffc97"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.5/xsensor-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e88cd5dd326d875fbf53614a78fdd94c0f02e881a523d569559040cc0ac48d45"
    else
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.5/xsensor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb85642f7a9877b2203309054a4e8db4309ed216074b9ccaf383a17a74d2cb1b"
    end
  end

  def install
    bin.install "xsensor"
  end

  test do
    assert_match "xsensor", shell_output("#{bin}/xsensor --version")
  end
end
