class Portwatch < Formula
  desc "Port monitoring & conflict resolution for macOS"
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
    bin.install "pw"
  end

  test do
    assert_match "Port monitoring", shell_output("#{bin}/pw --help")
  end
end
