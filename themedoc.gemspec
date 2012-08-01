Gem::Specification.new do |s|
  s.name         = 'themedoc'
  s.summary      = 'themedoc is a theming frontend for pandoc'
  s.description  = 'themedoc is a theming frontend for pandoc that allows grouping
                    parameters, extra resources and output snippets into named themes'
  s.version      = '0.2'
  s.platform     = Gem::Platform::RUBY

  s.files        = ['bin/themedoc']

  s.bindir = 'bin'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.author      = 'Felix Leipold'
  s.email       = ''
  s.homepage    = 'https://github.com/fleipold/themedoc'


  s.add_dependency('trollop')
  s.add_dependency('mustache')
end

