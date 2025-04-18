class Sonarqube < Formula
  desc "SonarQube is an open platform to manage code quality"
  homepage "https://www.sonarqube.org/"
  url "https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.4.1.88267.zip"
  sha256 "8163c2a507405b02491c1a3d97c564fb6dc7702b2eb7a0f3b6e7728cd6288207"
  license "LGPL-3.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/linux-x86-64/sonar.sh" => "sonarqube"
  end

  def caveats
    <<~EOS
      To start SonarQube:
        export JAVA_HOME="$(brew --prefix openjdk@11)/libexec/openjdk.jdk/Contents/Home"
        sonarqube start

      To stop SonarQube:
        sonarqube stop

      Access via: http://localhost:9000
      Default login: admin / admin
    EOS
  end
end
