# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.21/macos/arm64/spore_0_7_21_macos_arm64_seec343ell.tar.gz"
      sha256 "68495db570c36df8daf2b1c3721ad31619dafe4327417db834b95a290138951c"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.21/linux/aarch64/spore_0_7_21_linux_aarch64_sjko83638m.tar.gz"
      sha256 "ae4f35add9967e82256372ead01d03c013205c6e5d1c6608dd24e48fd81fa466"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.21/linux/x86_64/spore_0_7_21_linux_x86_64_q4yx7itrjx.tar.gz"
      sha256 "652309bab57689c53b72b0c490bbb76c89c522e400059999ab0f9c69a501c80e"
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
