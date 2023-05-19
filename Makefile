serve:
	docker run --rm --volume="$(PWD):/srv/jekyll" \
				 --publish [::1]:4000:4000 jekyll/jekyll:4.2.0 jekyll serve

build:
	docker run --rm --volume="$(PWD):/srv/jekyll" \
				 --publish [::1]:4000:4000 jekyll/jekyll:4.2.0 jekyll build

bash:
	docker run --rm -it --volume="$(PWD):/srv/jekyll" \
				 --publish [::1]:4000:4000 jekyll/jekyll:4.2.0 bash

.PHONY: livereload bash
