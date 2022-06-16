# frozen_string_literal: true

require 'cucumber'
require 'cucumber/rake/task'

desc 'Analisar código'
task :rubocop do
  clean_prj
  checklist = '-r rubocop/formatter/checkstyle_formatter'
  config = '-c .rubocop.yml'
  formatter = '-f RuboCop::Formatter::CheckstyleFormatter'
  output = '-o code_analyzer/checkstyle-result.xml -f html -o code_analyzer/index.html'
  system "rubocop #{checklist} #{config} #{formatter} #{output} -P"
end

desc 'Executar os testes utilizando tag'
task :tests, [:tag] do |_task, args|
  run_tests(args[:tag])
end

def run_tests(tag)
  puts '==================================  INICIO DO TESTE ==================================='
  system "bundle exec cucumber --format progress --format html -t #{tag} --publish-quiet --out report/teste.html"
  puts '==================================== FIM DO TESTE ====================================='
end

def clean_prj
  puts 'Limpando reports...'
  path_report = 'report'
  FileUtils.rm_rf(path_report) if File.directory?(path_report)
  FileUtils.mkdir_p("#{path_report}/rubocop")
  puts 'Finalizado!'
end
