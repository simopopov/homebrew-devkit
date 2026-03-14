class Envdiff < Formula
  desc "Environment variable comparison & sync across .env files"
  homepage "https://github.com/simopopov/devkit"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simopopov/devkit/releases/download/v#{version}/devkit-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/simopopov/devkit/releases/download/v#{version}/devkit-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simopopov/devkit/releases/download/v#{version}/devkit-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/simopopov/devkit/releases/download/v#{version}/devkit-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "envdiff"
  end

  test do
    assert_match "Compare .env files", shell_output("#{bin}/envdiff --help")
  end
end
