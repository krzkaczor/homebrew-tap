
class Ny < Formula
  desc "Universal Node Package Manager"
  homepage "https://github.com/krzkaczor/ny"
  version "0.1.0"

  
on_macos do
  
  if Hardware::CPU.arm?
    url "https://github.com/krzkaczor/ny/releases/download/v0.1.0/ny-aarch64-apple-darwin.zip"
    sha256 "9eaf98eb12b0dfe6d65bb18331f15df78d27cbe4dad7b8aac091b30a951f8c9f"

    def install
      bin.install "ny"
    end
  end
  

  if Hardware::CPU.intel?
    url "https://github.com/krzkaczor/ny/releases/download/v0.1.0/ny-x86_64-apple-darwin.zip"
    sha256 "0186ee9e6b1960ab5f976cac1953f00e0ccc318a21d9d9e9c86037ffa7cde4bc"

    def install
      bin.install "ny"
    end
  end
  
end
  

  
on_linux do
  
  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/krzkaczor/ny/releases/download/v0.1.0/ny-aarch64-unknown-linux-musl.tar.gz"
    sha256 "25fa88f276704da0089b1633b7cf28a03551ea7806ab1a0f8a6a1db495de1bd2"

    def install
      bin.install "ny"
    end
  end
  

  if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
    url "https://github.com/krzkaczor/ny/releases/download/v0.1.0/ny-x86_64-unknown-linux-musl.tar.gz"
    sha256 "e8dd527597b0c5897ecc5cb26cf3bfec1e3a97d843bbaa7617ebf0104327bc8f"

    def install
      bin.install "ny"
    end
  end
  
end
  

  test do
    system "#{bin}/ny --version"
  end
end
