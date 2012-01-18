repositories.remote << 'http://repo1.maven.org/maven2'
repositories.remote << 'http://www.ibiblio.org/maven2'

CUCUMBER=[transitive('info.cukes:cucumber-junit:jar:1.0.0.RC6'),transitive('info.cukes:cucumber-java:jar:1.0.0.RC6')]

define 'Cuke' do
	project.version = '0.0.0'
	compile.using(:lint => 'all').with(CUCUMBER)
	package(:jar)
	test.using(:junit)

	# TODO: fix dot usage that results in duplicate feature runs because src/test/resources/*.feature is copied to target/test/resources/*.feature.
	run.using(:main => ['cucumber.cli.Main', '--format', 'html', '--out', 'reports', '--glue', 'ca/junctionbox/calculator/steps', 'src/test/resources/basic_calculator.feature'])
end
