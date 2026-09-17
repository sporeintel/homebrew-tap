# Homebrew formula for Spore CLI
# Automatically generated - do not edit manually

class Spore < Formula
  desc "Distributed AI inference node for the Spore network"
  homepage "https://sporeintel.com"
  version "0.7.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.9/macos/arm64/spore_0_7_9_macos_arm64_noroo82hxd.tar.gz"
      sha256 "b4c56fbe67bafe1ed01549650b5170dc2d5288e5e65489213ce872f26f436ac9"
    end
  end

  on_linux do
    on_arm do
      url "https://api.sporeintel.com/api/releases/0.7.9/linux/aarch64/spore_0_7_9_linux_aarch64_3ctyip9zcd.tar.gz"
      sha256 "cb434597cc4a4a26e66417dcd82e6918671a4b3e112b60ffb79b98c21f686f44"
    end
    on_intel do
      url "https://api.sporeintel.com/api/releases/0.7.9/linux/x86_64/spore_0_7_9_linux_x86_64_6a7jx6duhi.tar.gz"
      sha256 "23b1fb8b103ff5eca47664d62be038092bf41f19fdfac884860b9a7b75a9d4f4"
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
