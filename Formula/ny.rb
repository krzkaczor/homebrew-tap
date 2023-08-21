
class Ny < Formula
  desc "Universal Node Package Manager"
  homepage "https://github.com/krzkaczor/ny"
  version "0.1.1"

  
on_macos do
  
  if Hardware::CPU.arm?
    url "https://github.com/krzkaczor/ny/releases/download/v0.1.1/ny-aarch64-apple-darwin.zip"
    sha256 "94360858b2561504496389e7d2b8f0c6f0fe40e2b9426edd4e430c574d195c11"

    def install
      bin.install "ny"
    end
  end
  

  if Hardware::CPU.intel?
    url "https://github.com/krzkaczor/ny/releases/download/v0.1.1/ny-x86_64-apple-darwin.zip"
    sha256 "3577059cd43b7b1f86a48bade16dcf04cd9cf1e638a8ab66a1e8837f527716b1"

    def install
      bin.install "ny"
    end
  end
  
end
  

  
on_linux do
  
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/krzkaczor/ny/releases/download/v0.1.1/ny-aarch64-unknown-linux-musl.tar.gz"
    sha256 "fe0c4dd4d518d128353e1a093038183fde024336a1af807a48f76e5ae70bed34"

    def install
      bin.install "ny"
    end
  end
  

  if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/krzkaczor/ny/releases/download/v0.1.1/ny-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f52edca4859bbbb3bfa2be3d1eb75802b80c7bf305a9c7e97f98cf33613e0aa8"

    def install
      bin.install "ny"
    end
  end
  
end
  

  test do
    system "#{bin}/ny --version"
  end
end
