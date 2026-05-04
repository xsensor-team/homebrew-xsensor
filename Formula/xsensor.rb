class Xsensor < Formula
  desc "XSensor infrastructure CLI"
  homepage "https://github.com/xsensor-team/xsensor"
  version "0.1.9"

  on_macos do
    url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.9/xsensor-aarch64-apple-darwin.tar.gz"
    sha256 "cad6f7980425dd3eb490bd1b785c56bb308dbea8cd584bfc42eabda7ce94e21b"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.9/xsensor-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9aa4629169f1ebec5e17734dc1f8e12ec1c42a065fe9ba80caf4c1e0f60c16f7"
    else
      url "https://github.com/xsensor-team/homebrew-xsensor/releases/download/v0.1.9/xsensor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abe0fb796b042d621ef50e6cd42ada79473c405c11e08d08797d762d5db2ab1d"
    end
  end

  def install
    bin.install "xsensor"
  end

  test do
    assert_match "xsensor", shell_output("#{bin}/xsensor --version")
  end
end
