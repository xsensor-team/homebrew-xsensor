class Xsensor < Formula
  desc "XSensor infrastructure CLI"
  homepage "https://github.com/xsensor-team/xsensor"
  version "0.1.7"

  on_macos do
    url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.7/xsensor-aarch64-apple-darwin.tar.gz"
    sha256 "a2171143464c86a2f9eec32962330f705620e8bcb860c8a593d1f47c5a2013c8"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.7/xsensor-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d5150dc53ef121b3ea26a4d8267228fe1320ed8926bde96040c97352abf2a318"
    else
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.7/xsensor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eda1cebcb5a54322cd4f3ee78cf01ea9a961289e012bd7a030a9851486a119c0"
    end
  end

  def install
    bin.install "xsensor"
  end

  test do
    assert_match "xsensor", shell_output("#{bin}/xsensor --version")
  end
end
