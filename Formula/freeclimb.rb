require "language/node"

class Freeclimb < Formula
  desc "Install FreeClimb's CLI to start managing apps, buying numbers, and testing applications from your command line."
  homepage "https://github.com/FreeClimbAPI/freeclimb-cli"
  url "https://vail-freeclimb-cli.s3.us-east-2.amazonaws.com/freeclimb-v0.4.1/freeclimb-v0.4.1.tar.gz"
  version "0.4.1"
  sha256 "43ca83269bcdbb7c1eaf39ce276082cfc36cd2f57fbaec49094b848e675b899f"
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
