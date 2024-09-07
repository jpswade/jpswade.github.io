setup:
	brew install rbenv
	rbenv install
	rbenv local
	rbenv init
	ruby -v

install:
	bundle install

serve:
	bundle exec jekyll serve

update:
	bundle update jekyll

fix:
	rm Gemfile.lock
	bundle install
