# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.4.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.14/macos/arm64/spore_0_4_14_macos_arm64_x649oiuzgu.tar.gz"
      sha256 "91bcf29bcd1d73354f83ea7f2f11b0315d5e19f42ec7253c41dc69307dfb4e7f"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.4.14/linux/aarch64/spore_0_4_14_linux_aarch64_hqtu9i9a25.tar.gz"
      sha256 "b0f4b4590bd42e01edae3f498dc78cda83226dfd57dc92beeaadeabf05fee8af"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.4.14/linux/x86_64/spore_0_4_14_linux_x86_64_sil0wlgg70.tar.gz"
      sha256 "45b407b1e513145827514193903757f7eda47189d5c180846ec60ac2d92b928e"
    end
  end

  def install
    bin.install "spore"
  end

  def caveats
    <<~EOS
      To get started with Spore:
        1. Authenticate: spore auth
        2. Start the node: spore start

      For more information, visit https://sporeintel.com/docs
    EOS
  end

  test do
    assert_match "spore", shell_output("#{bin}/spore --version")
  end
end
