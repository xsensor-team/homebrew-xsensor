class Xsensor < Formula
  desc "XSensor infrastructure CLI"
  homepage "https://github.com/xsensor-team/xsensor"
  version "0.1.0"

  on_macos do
    url "https://github.com/xsensor-team/xsensor/releases/download/xsensor-cli-v#{version}/xsensor-aarch64-apple-darwin.tar.gz"
    sha256 "PLACEHOLDER"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xsensor-team/xsensor/releases/download/xsensor-cli-v#{version}/xsensor-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/xsensor-team/xsensor/releases/download/xsensor-cli-v#{version}/xsensor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "xsensor"
  end

  test do
    assert_match "xsensor", shell_output("#{bin}/xsensor --version")
  end
end
