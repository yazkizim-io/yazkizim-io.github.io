serve:
	podman run --rm --volume="$(PWD):/srv/jekyll:Z" \
				 --publish [::1]:4000:4000 jekyll/jekyll:4.2.0 jekyll serve

build:
	podman run --rm --volume="$(PWD):/srv/jekyll:Z" \
				 --publish [::1]:4000:4000 jekyll/jekyll:4.2.0 jekyll build

bash:
	podman run --rm -it --volume="$(PWD):/srv/jekyll:Z" \
				 --publish [::1]:4000:4000 jekyll/jekyll:4.2.0 bash

.PHONY: livereload bash
