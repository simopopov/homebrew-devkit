class Portwatch < Formula
  desc "Port monitoring & conflict resolution for macOS"
  homepage "https://github.com/simopopov/devkit"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simopopov/devkit/releases/download/v#{version}/devkit-darwin-arm64.tar.gz"
      sha256 "a326b6449355e30eaa6c26f9d12817e3645f86d9e1eb4d407bd24aed6a153f4f"
    else
      url "https://github.com/simopopov/devkit/releases/download/v#{version}/devkit-darwin-amd64.tar.gz"
      sha256 "3afb0f15a719088ff46f47e9cab1a435c4be42600f9dd5936cd5d737d06b922b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simopopov/devkit/releases/download/v#{version}/devkit-linux-arm64.tar.gz"
      sha256 "e30a1f72e03502e68d7cf8475d9108231f1cdac0a92ae184a5d6fed82625bf02"
    else
      url "https://github.com/simopopov/devkit/releases/download/v#{version}/devkit-linux-amd64.tar.gz"
      sha256 "fb32cd01c034012a88214b539871ddabacecc72097c0b4263eb2f7126d3b2589"
    end
  end

  def install
    bin.install "pw"
  end

  test do
    assert_match "Port monitoring", shell_output("#{bin}/pw --help")
  end
end
