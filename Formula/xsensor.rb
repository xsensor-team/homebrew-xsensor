class Xsensor < Formula
  desc "XSensor infrastructure CLI"
  homepage "https://github.com/xsensor-team/xsensor"
  version "0.1.8"

  on_macos do
    url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.8/xsensor-aarch64-apple-darwin.tar.gz"
    sha256 "59cff7736a42b1f7a04fe38c72fc58a6e2cb8d17da897c95019101e4c883689c"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.8/xsensor-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e902e645c00a7ba81ea403dd6f6bd284b22abf121f78395f6456334ac333a76"
    else
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.8/xsensor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c11c8deb51596a127a79c46c362898e7f3385e7e8a111e22dd2facfbb8045c7"
    end
  end

  def install
    bin.install "xsensor"
  end

  test do
    assert_match "xsensor", shell_output("#{bin}/xsensor --version")
  end
end
