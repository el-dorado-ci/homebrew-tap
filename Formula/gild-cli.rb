class GildCli < Formula
  desc "A changelog tool that turns structured changefiles into releases"
  homepage "https://github.com/el-dorado-ci/gild"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/el-dorado-ci/gild/releases/download/v0.2.2/gild-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "3c678126e05dd96a106982e29a38e2edb4696d545449d16520dcc399f2020cfd"
    end
    on_intel do
      url "https://github.com/el-dorado-ci/gild/releases/download/v0.2.2/gild-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "1f237a168215b64cbd83e912ce3504cc2e8bb8ae9a2467940f8ad8b065efe5f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/el-dorado-ci/gild/releases/download/v0.2.2/gild-v0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a48e8ec39fc5f8a7ceaaaf49aeb6e70554a6b48b1d77d801cdf31ccaa1416de"
    end
    on_intel do
      url "https://github.com/el-dorado-ci/gild/releases/download/v0.2.2/gild-v0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e5915ad813116a03271c9376940928fed3a177a0bbb5708838d9d93a5ac1a6c"
    end
  end

  def install
    bin.install "gild"
  end

  test do
    assert_match "generate", shell_output("#{bin}/gild --help")
  end
end
