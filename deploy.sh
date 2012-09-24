#generate index.html
perl Markdown_1.0.1/Markdown.pl syntax.md > content.html
cat header.html content.html footer.html > index.html

#generate basic.html
perl Markdown_1.0.1/Markdown.pl basics.md > basic_content.html
cat header.html basic_content.html footer.html > basic.html

#commit and push to Gitcafe project
#git add .
#git commit -m "update and deploy to http://wowubuntu.com/markdown"
#git push origin
#git push github
