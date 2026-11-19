# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.24/macos/arm64/spore_0_7_24_macos_arm64_ulf39xo7g8.tar.gz"
      sha256 "74b105ebf92bd764822848f6aefe3a53c3a4127fe451b33ae6a7193393a0de6f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.24/linux/aarch64/spore_0_7_24_linux_aarch64_i30auai3k6.tar.gz"
      sha256 "da4a570f9f2e7a4a946656ffbb2bdf5b67930180bbbeb6930aa36e513053b199"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.24/linux/x86_64/spore_0_7_24_linux_x86_64_l7h42av45u.tar.gz"
      sha256 "aefefe81b1c1a5c02287f4ea7cf6bd10c67259c59025e7c057ffbb24920465ef"
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
