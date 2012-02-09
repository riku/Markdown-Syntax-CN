all: index.html

index.html: header.html footer.html content.html
	cat header.html content.html footer.html > index.html

content.html: syntax.md
	perl Markdown_1.0.1/Markdown.pl syntax.md > content.html

