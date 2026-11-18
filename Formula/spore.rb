# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.23/macos/arm64/spore_0_7_23_macos_arm64_kmls9gndm0.tar.gz"
      sha256 "872ddf097acdcf9812cb8e47bd9b6290c33addea35a91d607028ed6334317ac4"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.23/linux/aarch64/spore_0_7_23_linux_aarch64_7m7g7b561v.tar.gz"
      sha256 "e1bb60200ba48ccaf85e61822f4df8b41ed085bf9e3f4646e4e66deb44429941"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.23/linux/x86_64/spore_0_7_23_linux_x86_64_obo95ojy68.tar.gz"
      sha256 "4cdbcff7cba7fbf5118ace77aea4cc31fb76af6434e9737447295531c09a2aa9"
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
