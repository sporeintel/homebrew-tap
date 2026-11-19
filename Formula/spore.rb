# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.25/macos/arm64/spore_0_7_25_macos_arm64_ic0eagn9o7.tar.gz"
      sha256 "f371f41a0274c78b3d4da932d11e1e8a55994657701f05dfcded4084c607b251"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.25/linux/aarch64/spore_0_7_25_linux_aarch64_pxjaesybwd.tar.gz"
      sha256 "87048182c65197c060fb37ec6ccf561d2d962c983a442b98559967a921f3fa70"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.25/linux/x86_64/spore_0_7_25_linux_x86_64_h7x0ama5eu.tar.gz"
      sha256 "99a6cea141830a908922745ec128e8f8ed216a9ca41e4e0018b5101cad3eef45"
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
