# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.27/macos/arm64/spore_0_7_27_macos_arm64_aj8d38foqn.tar.gz"
      sha256 "93d443f6ce6f43d3e3dff1b60b0aa0f325b72a4c58e7bde5a1bd05302e44f6f7"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.27/linux/aarch64/spore_0_7_27_linux_aarch64_0yx4p9jjvv.tar.gz"
      sha256 "de5dae2209637fa789c07ceb0669a480001cb07f23111aad6c3ba613ae8bb1a4"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.27/linux/x86_64/spore_0_7_27_linux_x86_64_e01vts13bh.tar.gz"
      sha256 "87684b14f8bc58fbece7d7794ccbbbf225861a7ab61636cbdf339132692338af"
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
