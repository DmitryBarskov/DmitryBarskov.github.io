present:
	reveal-md . -w --theme solarized --highlight-theme monokai

serve:
	bundle exec jekyll serve

aspell:
	cat _posts/* | aspell --encoding=UTF-8 --lang=en --camel-case list | aspell --encoding=UTF-8 --lang=ru list | sed "s/\(.*\)/\\\\b\1\\\\b/" | grep -R -f - _posts -n --color=always

nuspell:
	cat _posts/* | nuspell -i UTF-8 -d ru_RU -l | sed -r 's/([a-z0-9])([A-Z])/\1 \L\2/g' | sed -E 's/[\.:_]([a-z])/ \1/g' | nuspell -i UTF-8 -d en_US -l | sed "s/\(.*\)/\\\\b\1\\\\b/" | grep -R -f - _posts -n --color=always

hunspell:
	hunspell -l -i utf-8 -d ru_RU,en_US _posts/*

ispell:
	cat _posts/2021-10-21-effective-java.markdown | ispell -l -d russian
	
