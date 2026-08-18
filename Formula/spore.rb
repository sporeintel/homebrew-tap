# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.5/macos/arm64/spore_0_7_5_macos_arm64_esvep4vsfa.tar.gz"
      sha256 "ff62ffeaa6e484f171b5579770b8bd386ea304a1231d95b8e907b55f4c328e74"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.5/linux/aarch64/spore_0_7_5_linux_aarch64_6jkp7nldqq.tar.gz"
      sha256 "d6418305a7066bb438f7ff45888085ac4cbd6dd3a0f7d4751fd1eefcb07431ed"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.5/linux/x86_64/spore_0_7_5_linux_x86_64_5stpgbsd2x.tar.gz"
      sha256 "7564a367c684360e33f3ca7f3bfdd29d7df16881e73bb18ddaf67cfad6f532cc"
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
