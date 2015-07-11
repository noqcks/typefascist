require "rubypython"

module Convert
  @@fontforge_enabled = [
                    'woff', 'otf', 'ufo', 'svg', 'eot', 'afm', 'bin', 'cff', 
                    'dfont', 'pdf', 'pfa', 'pfb', 'pfm', 'ps', 'pt3', 'suit', 
                    't11', 't42', 'tfm', 'ttc', 'ttf'
                    ];

  # /////////////////
  # /// TO WOFF2 ////
  # /////////////////

  def self.to_woff2(file, from)
    forge(file, from, 'otf')
    system "#{Pathname.pwd}/src/woff2/sfnt_to_woff2 #{file}"
    system "rm -rf #{file}"
  end

  # //////////////////////////////
  # /// TO BASICALLY ANYTHING ////
  # //////////////////////////////

  def self.fontforge(file, from, to)
    RubyPython.start()
    fontforge = RubyPython.import("fontforge")
    font = suppress_output { fontforge.open(file) }
    file.sub! from, to
    suppress_output { fontforge.font.generate(font, file) }
    RubyPython.stop
  end

  def self.forge(file, from, to)
    fonts = [from, to];
    if (fonts & @@fontforge_enabled).length.eql? 2
      self.fontforge(file, from, to)
    else
      conversion = "to_#{to}"
      if(self.respond_to? :"#{conversion}")
        self.method(conversion).call(file, from)
      else
        p "FONT CONVERSION NOT SUPPORTED"
      end
    end
  end

  # Suppresses all output to terminal
  def self.suppress_output
    begin
      original_stderr = $stderr.clone
      original_stdout = $stdout.clone
      $stderr.reopen(File.new('/dev/null', 'w'))
      $stdout.reopen(File.new('/dev/null', 'w'))
      retval = yield
    rescue Exception => e
      $stdout.reopen(original_stdout)
      $stderr.reopen(original_stderr)
      raise e
    ensure
      $stdout.reopen(original_stdout)
      $stderr.reopen(original_stderr)
    end
    retval
  end

end
