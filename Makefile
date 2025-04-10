setup:
	brew install rbenv
	brew upgrade ruby-build
	rbenv install
	rbenv local
	rbenv init
	eval "$(rbenv init - --no-rehash zsh)"
	which ruby
	ruby -v

install:
	bundle install

serve:
	bundle exec bin/jekyll serve

update:
	bundle update jekyll

fix:
	rm Gemfile.lock
	bundle lock --add-platform x86_64-linux
	bundle install

clean:
	rm -fr _site cache build_info cache extensions gems specifications
