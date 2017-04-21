class SphinxAT2010 < Formula
  desc "Full-text search engine"
  homepage "http://www.sphinxsearch.com"
  url "http://sphinxsearch.com/downloads/sphinx-2.0.10-release-osx10.9-x86_64.tar.gz/thankyou.html"
  version "2.0.10"
  sha256 ""

  option 'mysql', 'Force compiling against MySQL'

  depends_on :mysql if build.include? 'mysql'

  def install
    system "./configure", "--with-mysql",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"

    system "make", "install"
  end

  test do
    system "false"
  end
end
