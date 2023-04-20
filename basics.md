<< [访问主页](/)

**声明：** 这份文档派生(fork)于[繁体中文版](http://markdown.tw/)，在此基础上进行了繁体转简体工作，并进行了适当的润色。此文档用 Markdown 语法编写，你可以到这里[查看它的源文件][src]。「繁体中文版的原始文件可以[查看这里][src]」--By @[riku][t] / 获取 [Linode VPS](https://www.linode.com/lp/refer/?r=8f172925d426d78cd6f6119de00b34f209a66abd)

**注：** 本项目托管于 [GitHub][]上，请通过"派生"和"合并请求"来帮忙改进本项目。

[src]: https://github.com/othree/markdown-syntax-zhtw/blob/master/basics.md
[t]: http://twitter.com/riku
[g]: http://gitcafe.com/riku/Markdown-Syntax-CN
[GitHub]: https://github.com/riku/Markdown-Syntax-CN

Markdown: Basics （快速入门） / ([点击查看完整语法说明](./index.html))
================

Getting the Gist of Markdown's Formatting Syntax
------------------------------------------------

此页提供了 Markdown 的简单概念， [语法说明][s] 页提供了完整详细的文档，说明了每项功能。但是 Markdown 其实很简单就可以上手，此页文档提供了一些范例，并且每个范例都会提供输出的 HTML 结果。

[s]: http://github.com/riku/Markdown-Syntax-CN/blob/master/syntax.md "Markdown Syntax"
[d]: http://daringfireball.net/projects/markdown/dingus "Markdown Dingus"

其实直接试试看也是一个很不错的方法， [Dingus][d] 是一个网页应用程序，你可以把自已编写的 Markdown 文档转成 XHTML。

## 段落、标题、区块代码 ##

一个段落是由一个以上的连接的行句组成，而一个以上的空行则会划分出不同的段落（空行的定义是显示上看起来像是空行，就被视为空行，例如有一行只有空白和 tab，那该行也会被视为空行），一般的段落不需要用空白或换行缩进。

Markdown 支持两种标题的语法，[Setext] [1] 和 [atx] [2] 形式。Setext 形式是用底线的形式，利用 `=` （最高阶标题）和 `-` （第二阶标题），Atx 形式在行首插入 1 到 6 个 `#` ，对应到标题 1 到 6 阶。

[1]: http://docutils.sourceforge.net/mirror/setext.html
[2]: http://www.aaronsw.com/2002/atx/

区块引用则使用 email 形式的 '`>`' 角括号。

Markdown 语法:

	A First Level Header
	====================
	A Second Level Header
	---------------------

	Now is the time for all good men to come to
	the aid of their country. This is just a
	regular paragraph.

	The quick brown fox jumped over the lazy
	dog's back.
	### Header 3

	> This is a blockquote.
	> 
	> This is the second paragraph in the blockquote.
	>
	> ## This is an H2 in a blockquote

输出 HTML 为：

	<h1>A First Level Header</h1>
	<h2>A Second Level Header</h2>
	<p>Now is the time for all good men to come to
	the aid of their country. This is just a
	regular paragraph.</p>
	<p>The quick brown fox jumped over the lazy
	dog's back.</p>
	<h3>Header 3</h3>
	<blockquote>
	<p>This is a blockquote.</p>
	<p>This is the second paragraph in the blockquote.</p>
	<h2>This is an H2 in a blockquote</h2>
	</blockquote>

### 修辞和强调 ###

Markdown 使用星号和底线来标记需要强调的区段。

Markdown 语法:

	Some of these words *are emphasized*.
	Some of these words _are emphasized also_.
	Use two asterisks for **strong emphasis**.
	Or, if you prefer, __use two underscores instead__.

输出 HTML 为:

	<p>Some of these words <em>are emphasized</em>.
	Some of these words <em>are emphasized also</em>.</p>
	<p>Use two asterisks for <strong>strong emphasis</strong>.
	Or, if you prefer, <strong>use two underscores instead</strong>.</p>

## 列表 ##

无序列表使用星号、加号和减号来做为列表的项目标记，这些符号是都可以使用的，使用星号：

	* Candy.
	* Gum.
	* Booze.

加号：

	+ Candy.
	+ Gum.
	+ Booze.

和减号

	- Candy.
	- Gum.
	- Booze.

都会输出 HTML 为：

	<ul>
	<li>Candy.</li>
	<li>Gum.</li>
	<li>Booze.</li>
	</ul>

有序的列表则是使用一般的数字接着一个英文句点作为项目标记：

	1. Red
	2. Green
	3. Blue

输出 HTML 为：

	<ol>
	<li>Red</li>
	<li>Green</li>
	<li>Blue</li>
	</ol>

如果你在项目之间插入空行，那项目的内容会用 `<p>` 包起来，你也可以在一个项目内放上多个段落，只要在它前面缩排 4 个空白或 1 个 tab 。

	* A list item.
	With multiple paragraphs.

	* Another item in the list.

输出 HTML 为：

	<ul>
	<li><p>A list item.</p>
	<p>With multiple paragraphs.</p></li>
	<li><p>Another item in the list.</p></li>
	</ul>
### 链接 ###

Markdown 支援两种形式的链接语法： *行内* 和 *参考* 两种形式，两种都是使用角括号来把文字转成连结。

行内形式是直接在后面用括号直接接上链接：

	This is an [example link](http://example.com/).

输出 HTML 为：

	<p>This is an <a href="http://example.com/">
	example link</a>.</p>

你也可以选择性的加上 title 属性：

	This is an [example link](http://example.com/ "With a Title").

输出 HTML 为：

	<p>This is an <a href="http://example.com/" title="With a Title">
	example link</a>.</p>

参考形式的链接让你可以为链接定一个名称，之后你可以在文件的其他地方定义该链接的内容：

	I get 10 times more traffic from [Google][1] than from
	[Yahoo][2] or [MSN][3].
	
	[1]: http://google.com/ "Google"
	[2]: http://search.yahoo.com/ "Yahoo Search"
	[3]: http://search.msn.com/ "MSN Search"

输出 HTML 为：

	<p>I get 10 times more traffic from <a href="http://google.com/"
	title="Google">Google</a> than from <a href="http://search.yahoo.com/"
	title="Yahoo Search">Yahoo</a> or <a href="http://search.msn.com/"
	title="MSN Search">MSN</a>.</p>

title 属性是选择性的，链接名称可以用字母、数字和空格，但是不分大小写：

	I start my morning with a cup of coffee and
	[The New York Times][NY Times].

	[ny times]: http://www.nytimes.com/

输出 HTML 为：

	<p>I start my morning with a cup of coffee and
	<a href="http://www.nytimes.com/">The New York Times</a>.</p>


### 图片 ###

图片的语法和链接很像。

行内形式（title 是选择性的）：

	![alt text](/path/to/img.jpg "Title")

参考形式：

	![alt text][id]

	[id]: /path/to/img.jpg "Title"

上面两种方法都会输出 HTML 为：

	<img src="/path/to/img.jpg" alt="alt text" title="Title" />

### 代码 ###
在一般的段落文字中，你可以使用反引号 `` ` `` 来标记代码区段，区段内的 `&`、`<` 和 `>` 都会被自动的转换成 HTML 实体，这项特性让你可以很容易的在代码区段内插入 HTML 码：

	I strongly recommend against using any `<blink>` tags.

	I wish SmartyPants used named entities like `&mdash;`
	instead of decimal-encoded entites like `&#8212;`.

输出 HTML 为：

	<p>I strongly recommend against using any
	<code>&lt;blink&gt;</code> tags.</p>
	<p>I wish SmartyPants used named entities like
	<code>&amp;mdash;</code> instead of decimal-encoded
	entites like <code>&amp;#8212;</code>.</p>

如果要建立一个已经格式化好的代码区块，只要每行都缩进 4 个空格或是一个 tab 就可以了，而 `&`、`<` 和 `>` 也一样会自动转成 HTML 实体。

Markdown 语法:

	If you want your page to validate under XHTML 1.0 Strict,
	you've got to put paragraph tags in your blockquotes:

	<blockquote>
	<p>For example.</p>
	</blockquote>

输出 HTML 为：

	<p>If you want your page to validate under XHTML 1.0 Strict,
	you've got to put paragraph tags in your blockquotes:</p>
	<pre><code>&lt;blockquote&gt;
	&lt;p&gt;For example.&lt;/p&gt;
	&lt;/blockquote&gt;
	</code></pre>

