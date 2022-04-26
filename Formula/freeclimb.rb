require "language/node"

class Freeclimb < Formula
  desc "Install FreeClimb's CLI to start managing apps, buying numbers, and testing applications from your command line."
  homepage "https://github.com/FreeClimbAPI/freeclimb-cli"
  url "https://vail-freeclimb-cli.s3.us-east-2.amazonaws.com/freeclimb-v0.5.3/freeclimb-v0.5.3.tar.gz"
  version "0.5.3"
  sha256 "e66eb1129c9974b0cdc8b3b22a673ebcc7ad6a870befc0cf19395c9a85865363"
  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/freeclimb"
  end

  def post_install
    ohai "************************************************"
    ohai "*                                              *"
    ohai "* The FreeClimb CLI installation has finished. *"
    ohai "*                                              *"
    ohai "* To read the help resources, you can run:     *"
    ohai "*       freeclimb --help                       *"
    ohai "*                                              *"
    ohai "************************************************"
  end
end
