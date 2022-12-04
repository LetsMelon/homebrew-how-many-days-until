class HowManyDaysUntil < Formula
    desc "Command line tool to calculate how many days are until a date, considering national holidays. "
    homepage "https://github.com/LetsMelon/how_many_days_until"
    version "1.0.0"
    license "Apache-2.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/LetsMelon/how_many_days_until/releases/download/1.0.0/how_many_days_until_1_0_0_darwin_x86_64.tar.gz"
        sha256 "49eda88e82fba50dac15253bdbeb0dae31eb6f935bfd439635164dc18ddfbf10"
  
        def install
          bin.install "how_many_days_until"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/LetsMelon/how_many_days_until/releases/download/1.0.0/how_many_days_until_1_0_0_darwin_aarch64.tar.gz"
        sha256 "4d2a6ad35aa5d1fbbd67fc30f00995674b89cbcf1eb97c545e315da0886482c3"
  
        def install
          bin.install "how_many_days_until"
        end
      end
    end
  
    test do
      system "#{bin}/how_many_days_until -V"
    end
end
