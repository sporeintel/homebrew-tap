# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.23/macos/arm64/spore_0_7_23_macos_arm64_uidehpnpwe.tar.gz"
      sha256 "0ab1ffb65447bb2885e67771590e8cb9d1ba17ee142b48b38c053b33752d0dd2"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.23/linux/aarch64/spore_0_7_23_linux_aarch64_6ewbza5ihh.tar.gz"
      sha256 "c5e21b456c1dcc8a0bec04d25f7679529ddd42e3caf58a453cac70ad62380e28"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.23/linux/x86_64/spore_0_7_23_linux_x86_64_qv5nr4s0bi.tar.gz"
      sha256 "5b267d976d536a61065eda09ec71a3e60dde4e728b4e62a6c1cad54899a83f1e"
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
