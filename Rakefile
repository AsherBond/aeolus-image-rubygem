#   Copyright 2011 Red Hat, Inc.
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rubygems/package_task'
require 'rdoc/task'
require 'rake/testtask'
require 'rspec/core/rake_task'
require './rake/rpmtask'

RPMBUILD_DIR = "#{File.expand_path('~')}/rpmbuild"
RPM_SPEC = "rubygem-aeolus-image.spec"
RPM_SPEC_IN = "rubygem-aeolus-image.spec.in"
PKG_VERSION = "0.6.0"

spec = Gem::Specification.new do |s|
  s.name         = 'aeolus-image'
  s.version      = PKG_VERSION
  s.platform     = Gem::Platform::RUBY
  s.authors      = 'Jason Guiditta, Martyn Taylor'
  s.email        = 'jguiditt@redhat.com, mtaylor@redhat.com'
  s.license      = 'ASL 2.0'
  s.homepage     = "https://github.com/aeolusproject/aeolus-image-rubygem"
  s.summary      = 'Ruby Client for Image Warehouse and Image Factory for the Aeolus cloud suite'
  s.description  = "aeolus-image is a Ruby library used by Conductor to connect with Image Factory and Image Warehouse."

  s.files        = Dir["lib/**/*.rb","README.md","COPYING","Rakefile","rake/rpmtask.rb"]
  s.test_files   = Dir["spec/**/*.*",".rspec","examples/aeolus-cli"]
  s.require_path = "lib"
  s.add_dependency('activeresource')
  s.add_dependency('nokogiri')
  s.add_dependency('oauth')
  s.add_dependency('rest-client')

  s.add_development_dependency('rspec', '>=1.3.0')
end

Gem::PackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = true
  p.need_zip = true
end

Rake::RDocTask.new do |rdoc|
  files =['README', 'COPYING', 'lib/**/*.rb']
  rdoc.rdoc_files.add(files)
  rdoc.main = "README" # page to start on
  rdoc.title = "aeolus-image Docs"
  rdoc.rdoc_dir = 'doc/rdoc' # rdoc output folder
  rdoc.options << '--line-numbers'
end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*.rb']
end

RSpec::Core::RakeTask.new do |t|
  t.pattern = FileList['spec/**/*.rb']
end

Rake::RpmTask.new(RPM_SPEC, {:suffix => '.in', :pkg_version => PKG_VERSION}) do |rpm|
  rpm.need_tar = true
  rpm.package_files.include("lib/*")
  rpm.topdir = "#{RPMBUILD_DIR}"
end
