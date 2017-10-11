#!/bin/bash
# knit
# add export PATH="$PATH:/usr/lib/rstudio/bin/pandoc" to your PATH in order for the following to work
Rscript -e 'library(rmarkdown); rmarkdown::render("analysis/main.Rmd", "html_document")' --vanilla || { echo "ERROR: knitting failed. Please try to knit main.Rmd in RStudio in order to debug."; exit 1; }
# make temporary copy of preprocessing folder with all data we need in build
cp -r analysis tmp
mv deploy.sh tmp/
# switch to gh-pages branch
git checkout gh-pages
# copy over index file (the processed main.Rmd) from master branch
cp tmp/main.html index.html
# clean
rm -rf rscript/
mkdir rscript
# copy over necessary scripts from master branch 
cp tmp/main.Rmd rscript
# cp index.html rscript
# copy over other nessecary output files from master branch
cp -r tmp/output rscript/
# copy over other necessary input files from master branch
cp -r tmp/input rscript/
cp -r tmp/scripts rscript/
cp -r tmp/images rscript/
cp tmp/main.pdf rscript/
# zip the rscript folder
zip -r rscript.zip rscript
# remove the rscript folder
rm -rf rscript
# remove analysis folder
rm -rf analysis
# add everything for committing
git add .
git add -u
# commit in gh-pages
git commit -m "analysis: build and deploy to gh-pages"
# push to remote:gh-pages
git push origin gh-pages 
# checkout master again
git checkout master
# copy back deploy.sh
mv tmp/deploy.sh .
# remove temporary folder
rm -rf tmp
