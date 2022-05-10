# frozen_string_literal: true

require 'cucumber'
require 'cucumber/rake/task'

desc 'Analisar código'
task :rubocop do
  checklist = '-r rubocop/formatter/checkstyle_formatter'
  config = '-c .rubocop.yml'
  formatter = '-f RuboCop::Formatter::CheckstyleFormatter'
  output = '-o code_analyzer/checkstyle-result.xml -f html -o code_analyzer/index.html'
  system "rubocop #{checklist} #{config} #{formatter} #{output} -P"
end

desc 'Executar as features criticas sequencial'
task :tests do
  clean_prj
  sh 'bundle exec cucumber --format progress --format html --out report_test/teste.html'
end

def clean_prj
  puts 'Limpando reports...'
  path_report = 'report'
  FileUtils.rm_rf(path_report) if File.directory?(path_report)
  FileUtils.mkdir_p("#{path_report}/rubocop")
  puts 'Finalizado!'
end
