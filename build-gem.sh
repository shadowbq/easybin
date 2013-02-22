#!/usr/bin/env bash

if [ -f ./README.md ] && [ -f ./LICENSE ];
then 
  echo "Removing old gem.."
	gem uninstall -x easybin
	echo "Building gem.."
	gem build easybin.gemspec
	echo "Installing gem.." 
	gem install easybin-`bump current |grep -o [0-9].*`.gem 
	git status
	echo "Validating gem.."
	gem list --local |grep easybin
else
	echo "not in root gem directory, existing."
fi
