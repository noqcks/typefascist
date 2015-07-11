# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: typefascist 0.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "typefascist"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Benji Visser"]
  s.date = "2015-07-11"
  s.description = "A simple gem to convert fonts from almost anything to almost anything"
  s.email = "theodore.r.visser@gmail.com"
  s.executables = ["typefascist"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/typefascist",
    "lib/typefascist.rb",
    "lib/typefascist/convert.rb",
    "test/helper.rb",
    "test/test_typefascist.rb"
  ]
  s.homepage = "http://github.com/noqcks/typefascist"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "The font conversion gem"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0"])
      s.add_development_dependency(%q<reek>, ["~> 1.2"])
      s.add_development_dependency(%q<roodi>, ["~> 2.1"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<yard>, ["~> 0.7"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_dependency(%q<simplecov>, ["~> 0"])
      s.add_dependency(%q<reek>, ["~> 1.2"])
      s.add_dependency(%q<roodi>, ["~> 2.1"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<yard>, ["~> 0.7"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0"])
    s.add_dependency(%q<simplecov>, ["~> 0"])
    s.add_dependency(%q<reek>, ["~> 1.2"])
    s.add_dependency(%q<roodi>, ["~> 2.1"])
  end
end

