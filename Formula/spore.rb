# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.22/macos/arm64/spore_0_7_22_macos_arm64_7wfwfhexpe.tar.gz"
      sha256 "420b6709cae59fe79bb6c064a25bb2cdf10e0f887d72a2edd16d99bc8a21658c"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.22/linux/aarch64/spore_0_7_22_linux_aarch64_72j29rwcju.tar.gz"
      sha256 "7f7db6aa03e4720cc00336c4d5c8380d0d15c5ca799141ab52f2a9303d55ee78"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.22/linux/x86_64/spore_0_7_22_linux_x86_64_ktsoi1gl5r.tar.gz"
      sha256 "2de85c0325d58fa7ceffdaa2ad80b6d6f487bd1ed5d1df841b1c2872e35d1136"
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
