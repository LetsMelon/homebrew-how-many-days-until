class HowManyDaysUntil < Formula
    desc "Command line tool to calculate how many days are until a date, considering national holidays. "
    homepage "https://github.com/LetsMelon/how_many_days_until"
    version "1.0.0"
    license "Apache-2.0"
  
    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/LetsMelon/how_many_days_until/releases/download/1.0.0/how_many_days_until_1_0_0_darwin_x86_64.zip"
        sha256 "73323d568a46adb137e562430f26e05200b1eebb83c983bba901f9d954e5586b"
  
        def install
          bin.install "how_many_days_until"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/LetsMelon/how_many_days_until/releases/download/1.0.0/how_many_days_until_1_0_0_darwin_aarch64.zip"
        sha256 "73b133fdbb1c69cf5e5f560ff0dddec53f569c444858b064bc9d925bf64f0010"
  
        def install
          bin.install "how_many_days_until"
        end
      end
    end
  
    test do
      system "#{bin}/how_many_days_until -V"
    end
end
