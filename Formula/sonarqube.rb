class Sonarqube < Formula
  desc "SonarQube - Continuous Code Quality"
  homepage "https://www.sonarqube.org/"
  url "https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.4.1.88267.zip"
  sha256 "c5cc9b93f8a236d8e0e0d4e1466c1f9beaa0d7ae0281d7b6a5a3b870ad1b6c5d"
  license "LGPL-3.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/linux-x86-64/sonar.sh" => "sonarqube"
  end

  def caveats
    <<~EOS
      To start SonarQube:
        sonarqube start

      Then open http://localhost:9000 in your browser.
      Default login: admin / admin
    EOS
  end
end
