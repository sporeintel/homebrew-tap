# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.14/macos/arm64/spore_0_3_14_macos_arm64_y2lmielw6v.tar.gz"
      sha256 "7c066de1c95ce5ffc352faba8ee86591a01f3ba0a8122d152b5137f26b5d6cc2"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.3.14/linux/aarch64/spore_0_3_14_linux_aarch64_jlb79vq5ko.tar.gz"
      sha256 "d260bc80f5dbd17d49865acbeb5249a4e618572fe420b88e4f055d1359ac302e"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.3.14/linux/x86_64/spore_0_3_14_linux_x86_64_k9is62eemx.tar.gz"
      sha256 "efea15687e808b15e868ea0cc3cc4143ada04bf2525826c5ac176c58ac46bf9a"
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
