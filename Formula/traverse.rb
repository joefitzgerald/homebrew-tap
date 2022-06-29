# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Traverse < Formula
  desc "Build and maintain groups on the basis of reporting hierarchy."
  homepage "https://github.com/joefitzgerald/traverse"
  version "0.0.16"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joefitzgerald/traverse/releases/download/v0.0.16/traverse_v0.0.16_darwin_arm64.tar.gz"
      sha256 "669dee582d2963e9d977cecb7da38d9d3b6038c471221be2613491b2e24557b9"

      def install
        bin.install "traverse"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/joefitzgerald/traverse/releases/download/v0.0.16/traverse_v0.0.16_darwin_x86_64.tar.gz"
      sha256 "42bfcc94b7a9663d8f0cea3403262006ce1ac78339e58fa3d4b02700f4ed4250"

      def install
        bin.install "traverse"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/joefitzgerald/traverse/releases/download/v0.0.16/traverse_v0.0.16_linux_x86_64.tar.gz"
      sha256 "7259833f20a25d4a2a8c67cfd7f5a97b9d6a47baef341ba0f2ad8dcbad94ef7b"

      def install
        bin.install "traverse"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/joefitzgerald/traverse/releases/download/v0.0.16/traverse_v0.0.16_linux_arm64.tar.gz"
      sha256 "46b522b8be157ab07128bb5d8a9e7a8aa3b4a01881334acd2f95a5993f59df9e"

      def install
        bin.install "traverse"
      end
    end
  end

  test do
    system "#{bin}/traverse --version"
  end
end
