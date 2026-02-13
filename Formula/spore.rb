# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.1/macos/arm64/spore_0_4_1_macos_arm64_lkuaa17i27.tar.gz"
      sha256 "d4483a865c8c4bff135fb3f4e1c010fe712ac84d799d1bb3069b638605525274"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.1/linux/aarch64/spore_0_4_1_linux_aarch64_6ir3kjgnpz.tar.gz"
      sha256 "be62a6875ae9df835955ae70702ecc47ea419225ddd4e58c8ac7b2b17e428675"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.4.1/linux/x86_64/spore_0_4_1_linux_x86_64_wdkbidi52v.tar.gz"
      sha256 "ee5c7639386099b17590a35af59e00be985ff0e39b7bd2ecf7777c4271d13821"
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
