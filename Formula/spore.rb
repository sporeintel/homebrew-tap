# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.19/macos/arm64/spore_0_7_19_macos_arm64_x2fzavhhq1.tar.gz"
      sha256 "6e0027f21776a30ea0071b35f61ceabe3501d770c4059b013609bb014920ee8d"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.19/linux/aarch64/spore_0_7_19_linux_aarch64_xgy34s3voy.tar.gz"
      sha256 "dfce0fe85805ea32ec10e3d260fa9e73783221e0b3b65ef77bc48224fed224c9"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.19/linux/x86_64/spore_0_7_19_linux_x86_64_b0p4iysa0v.tar.gz"
      sha256 "012b0a6b163fef5751ba6c99d2516b62d15d19e11b063ce30f1d8f6c10d083d0"
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
