# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.20/macos/arm64/spore_0_7_20_macos_arm64_uefjrpeuc2.tar.gz"
      sha256 "47c871655b4aa258683fe894fb46f4347068ff70e501be6736709eb7157526e9"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.20/linux/aarch64/spore_0_7_20_linux_aarch64_hmy1lc4sxd.tar.gz"
      sha256 "74d7f668905554d6cd918876d4895ae403c78b0fe65d526f6bdecac0904e0600"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.20/linux/x86_64/spore_0_7_20_linux_x86_64_c9m3ywfqah.tar.gz"
      sha256 "cbc633d0c4c361627ac2740303a049d7314550a5bfef107f0894848435ab9230"
    end
  end

  def install
    bin.install "spore"
    libexec.install "libexec/automation-pi-runner"
  end

  def caveats
    <<~EOS
      To get started with Spore:
        1. Authenticate: spore auth
        2. Start the node: spore start

      Automations with runtime: pi use the bundled Node under
      libexec/automation-pi-runner/runtime/ (no system Node or npm install).

      For more information, visit https://sporeintel.com/docs
    EOS
  end

  test do
    assert_match "spore", shell_output("#{bin}/spore --version")
    assert_predicate libexec/"automation-pi-runner/src/run.mjs", :exist?
  end
end
