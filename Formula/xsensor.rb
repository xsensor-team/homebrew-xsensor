class Xsensor < Formula
  desc "XSensor infrastructure CLI"
  homepage "https://github.com/xsensor-team/xsensor"
  version "0.2.0"

  on_macos do
    url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.2.0/xsensor-aarch64-apple-darwin.tar.gz"
    sha256 "79cba36a1bb9e097e6f8cfb4e8fc57621036551a50bcb6805f803745c2a54e7b"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.2.0/xsensor-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29e51c7ac3a798296619536c383cdab82f82a72104d710fe2d5a19184325441a"
    else
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.2.0/xsensor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e8ee630dc5b7c716f6c10a5d5706d1a8fc73e0441d48e690dce53994e6dfb5e"
    end
  end

  def install
    bin.install "xsensor"
  end

  test do
    assert_match "xsensor", shell_output("#{bin}/xsensor --version")
  end
end
