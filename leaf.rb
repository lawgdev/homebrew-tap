# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Leaf < Formula
  desc "Connect your application's logs and feed them into Lawg in realtime."
  homepage "https://lawg.dev/"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lawgdev/leaf/releases/download/v0.2.0/leaf_0.2.0_darwin_arm64.tar.gz"
      sha256 "6c00d927eec7a15c5ddb6c3d0e38803492ed70a9e08495d133465da8806e0319"

      def install
        bin.install "leaf"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lawgdev/leaf/releases/download/v0.2.0/leaf_0.2.0_darwin_amd64.tar.gz"
      sha256 "328b659cbd6b40015b5e228524cf70ad1d1c16da907c66c675d8797e696c2426"

      def install
        bin.install "leaf"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lawgdev/leaf/releases/download/v0.2.0/leaf_0.2.0_linux_arm64.tar.gz"
      sha256 "688af662814c366fabec49ab46edf169830d0a2571458d39e5e1ae39b2631bac"

      def install
        bin.install "leaf"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lawgdev/leaf/releases/download/v0.2.0/leaf_0.2.0_linux_amd64.tar.gz"
      sha256 "83a11a4e31c734018e23dc4b8ac5ffadc56cc4dc222b66f7911eb9cd2b81994c"

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
