# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.14/macos/arm64/spore_0_7_14_macos_arm64_mwyta2e7gr.tar.gz"
      sha256 "417aa36eb379077f79590c02c822ffffb05f3fbe399f3f9cc361aeacec11ddf1"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.14/linux/aarch64/spore_0_7_14_linux_aarch64_cyz6pzsspf.tar.gz"
      sha256 "70658ee9a0dfca5aead36ef2db39b0d3f922358a8a75aa456eebc1052b14b18f"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.14/linux/x86_64/spore_0_7_14_linux_x86_64_eykv1044s8.tar.gz"
      sha256 "a836aed21f8cf31456256088403b66c6a1c8b9080f7c1da9d2ab28d67a548627"
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
