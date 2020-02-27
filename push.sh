#!/bin/sh

setup_git() {
  git config --global user.email "mazeran.paul@gmail.com"
  git config --global user.name "paulmazeranensg"
}

commit_website_files() {
  git checkout -b gh-pages
  git add . 
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${59825589046d4fb5a994c0e862024006a8bb2cee}@github.com/paulmazeranensg/TP_CI_CD_Mazeran.git
  git push --quiet --set-upstream origin-pages gh-pages 
}

setup_git
commit_website_files
upload_files
