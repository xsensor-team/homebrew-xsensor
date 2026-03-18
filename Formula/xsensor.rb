class Xsensor < Formula
  desc "XSensor infrastructure CLI"
  homepage "https://github.com/xsensor-team/xsensor"
  version "0.1.4"

  on_macos do
    url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.4/xsensor-aarch64-apple-darwin.tar.gz"
    sha256 "e94d634838b74bf0d2d1b29d0282f60e7bb9b0098b1691173c27122cbe010759"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.4/xsensor-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cfaa3f39f11c89814f369ab3a08774913028edda2cd4daa97452be92fd321057"
    else
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.4/xsensor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc3910c39df1114f904cd10312bff4c33ea538a52a262529380844fc8a9b3360"
    end
  end

  def install
    bin.install "xsensor"
  end

  test do
    assert_match "xsensor", shell_output("#{bin}/xsensor --version")
  end
end
