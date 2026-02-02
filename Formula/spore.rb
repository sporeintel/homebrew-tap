# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.8/macos/arm64/spore_0_3_8_macos_arm64_odzdstu7br.tar.gz"
      sha256 "27479a5a80a6ebb180001938af5ad5c509a4a7053c760b896886295307e156fb"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.8/linux/aarch64/spore_0_3_8_linux_aarch64_0wgbrumdby.tar.gz"
      sha256 "acd3c6157fa4d028e4f2338c89f00a9828c7ba0e115fc32a61951b9a813a139a"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.8/linux/x86_64/spore_0_3_8_linux_x86_64_uxtw9ftp61.tar.gz"
      sha256 "38c35ed3c92994071255a4d62cd90b1a5750659542264a8655fbac4f2b47f916"
    end
  end

  def install
    bin.install "spore"
  end

  def caveats
    <<~EOS
      To get started with Spore:
        1. Authenticate: spore auth
        2. Start the node: spore start

      For more information, visit https://sporeintel.com/docs
    EOS
  end

  test do
    assert_match "spore", shell_output("#{bin}/spore --version")
  end
end
