# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.18/macos/arm64/spore_0_7_18_macos_arm64_lm3spxfbof.tar.gz"
      sha256 "a21d2fde214b1db81f6955c88daa09a4417e861e2c278d305d0a1e6de79d57cf"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.18/linux/aarch64/spore_0_7_18_linux_aarch64_qyylp0olhj.tar.gz"
      sha256 "ab4add89be4b333681b00ac55b7745bf3d8ed10ef372b8027c6debe6f6f5c0b1"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.18/linux/x86_64/spore_0_7_18_linux_x86_64_sgnr479ilk.tar.gz"
      sha256 "f6c75c79a71dcc3316baceae5fde4c0c5e2a3bc0422648b1b9396c53ba86d843"
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
