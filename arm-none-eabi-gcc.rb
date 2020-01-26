require 'formula'

class ArmNoneEabiGcc < Formula

  homepage 'https://launchpad.net/gcc-arm-embedded/5.0/5-2015-q4-major'
  version '5-2015-q4-major'

  url 'https://launchpad.net/gcc-arm-embedded/5.0/5-2015-q4-major/+download/gcc-arm-none-eabi-5_2-2015q4-20151219-mac.tar.bz2'
  sha256 '1249f860d4155d9c3ba8f30c19e7a88c5047923cea17e0d08e633f12408f01f0'

  def install
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
