class Gitwho < Formula
  desc "Find the right person to ask about any code"
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
    bin.install "gitwho"
  end

  test do
    assert_match "Find the right person", shell_output("#{bin}/gitwho --help")
  end
end
