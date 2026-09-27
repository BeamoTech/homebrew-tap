class Claudex < Formula
  desc "Run Claude and GPT models through Claude Code with isolated provider routing"
  homepage "https://github.com/BeamoINT/Claudex"
  url "https://github.com/BeamoINT/Claudex/releases/download/v1.6.3/claudex-1.6.3.tar.gz"
  sha256 "67d5c279f2aa2094a0bb9293bf4cfe3b5d1cfdcaba410468b8f34f7f0f1a059b"
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
