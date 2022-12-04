class HowManyDaysUntil < Formula
    desc "Command line tool to calculate how many days are until a date, considering national holidays. "
    homepage "https://github.com/LetsMelon/how_many_days_until"
    version "1.0.0"
    license "Apache-2.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/LetsMelon/how_many_days_until/releases/download/1.0.0/how_many_days_until_1_0_0_darwin_x86_64.zip"
        sha256 "68ab6a7a020c17b31ea8d0214c409d126e6e2493950fa36f10e9559a3950d74c"
  
        def install
          bin.install "how_many_days_until"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/LetsMelon/how_many_days_until/releases/download/1.0.0/how_many_days_until_1_0_0_darwin_aarch64.zip"
        sha256 "537836b0245c45a8a49ad7261216dd8a3f9be0c3ca559047bbae86b2fc7f3ad7"
  
        def install
          bin.install "how_many_days_until"
        end
      end
    end
  
    test do
      system "#{bin}/how_many_days_until -V"
    end
end
