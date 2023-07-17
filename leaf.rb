# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Leaf < Formula
  desc "Connect your application's logs and feed them into Lawg in realtime."
  homepage "https://lawg.dev/"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lawgdev/leaf/releases/download/v0.0.1/leaf_0.0.1_darwin_arm64.tar.gz"
      sha256 "9cab36ee5dfd839abc0e2e79552610083b1ecce72b8b5336ac320c9d878c034e"

      def install
        bin.install "leaf"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lawgdev/leaf/releases/download/v0.0.1/leaf_0.0.1_darwin_amd64.tar.gz"
      sha256 "36b02beaf73c5b971e9c29950444c1eb6716d3a589298feda05ccde90993979d"

      def install
        bin.install "leaf"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lawgdev/leaf/releases/download/v0.0.1/leaf_0.0.1_linux_arm64.tar.gz"
      sha256 "7cb6219f26d84fbb313731845e2aab5c4e2c874594fd53a8198379e122dc3726"

      def install
        bin.install "leaf"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lawgdev/leaf/releases/download/v0.0.1/leaf_0.0.1_linux_amd64.tar.gz"
      sha256 "d52cc9f66a1fd1daf866c16befc7528db4d9341100893c224dd195b971270069"

      def install
        bin.install "leaf"
      end
    end
  end

  def caveats
    <<~EOS
      Make sure to have a lawg.dev account
    EOS
  end
end
