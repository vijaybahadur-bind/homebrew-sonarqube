class Sonarqube < Formula
  desc "SonarQube is an open platform to manage code quality"
  homepage "https://www.sonarqube.org/"
  url "https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.4.1.88267.zip"
  sha256 "8d3b2923d9d947527bb92eaa9d4a9735c0b45066aa0e41c661f30fc3647fa340"
  license "LGPL-3.0"

  depends_on :java => "11+"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/linux-x86-64/sonar.sh" => "sonarqube"
  end

  def caveats
    <<~EOS
      To start SonarQube:
        sonarqube start

      To stop SonarQube:
        sonarqube stop

      Default port: 9000
      Access via: http://localhost:9000
    EOS
  end
end
