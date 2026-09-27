class Claudex < Formula
  desc "Run Claude and GPT models through Claude Code with isolated provider routing"
  homepage "https://github.com/BeamoTech/Claudex"
  url "https://github.com/BeamoTech/Claudex/releases/download/v1.6.4/claudex-1.6.4.tar.gz"
  sha256 "67ce88fe9770ee55b8ac85acd8851d13e488417efdf05c7a4a8d960e2bd18163"
  license "MIT"

  depends_on "jq"
  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/claudex-package.mjs"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/claudex --package-version").strip
  end
end
