class Xsensor < Formula
  desc "XSensor infrastructure CLI"
  homepage "https://github.com/xsensor-team/xsensor"
  version "0.1.3"

  on_macos do
    url "https://github.com/xsensor-team/xsensor/releases/download/xsensor-cli@v#{version}/xsensor-aarch64-apple-darwin.tar.gz"
    sha256 "3ce990b1501db04546414833269bfeb096100a424bfcd5f9cb665391f20fdba4"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xsensor-team/xsensor/releases/download/xsensor-cli@v#{version}/xsensor-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eedb6669c60ea9c646a1cdfc6eb0eca1eaa8b2bc0aae237a7c146b10bb100fc5"
    else
      url "https://github.com/xsensor-team/xsensor/releases/download/xsensor-cli@v#{version}/xsensor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "203742e3e193876006be88f1b9135722d83da0aae7694f73c04557a6fa84eb6c"
    end
  end

  def install
    bin.install "xsensor"
  end

  test do
    assert_match "xsensor", shell_output("#{bin}/xsensor --version")
  end
end
