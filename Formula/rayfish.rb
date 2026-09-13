class Rayfish < Formula
  desc "P2P mesh VPN powered by iroh"
  homepage "https://github.com/rayfish/rayfish"
  url "https://github.com/rayfish/rayfish/releases/download/v0.4.1/ray-macos-aarch64"
  sha256 "decc1da96b7dc9266e1eba60b675e47113844f198f6cfc7ea62d73cda2990ff4"
  license "MPL-2.0"
  version "0.4.1"

  # Apple Silicon only — this release has no ray-macos-x86_64 asset.
  depends_on arch: :arm64
  depends_on macos: :ventura # adjust down if you know it works on an older macOS

  def install
    bin.install "ray-macos-aarch64" => "ray"
  end

  test do
    system "#{bin}/ray", "--version"
  end
end
