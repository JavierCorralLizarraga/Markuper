# Markuper

I got kinda tired of writing a lot when it came to taking notes with markdown
that is why I decided to make my job easier by creating a language that translates my custom language to markdown

The language will be processed with markdown, so for the translation I am going to use perl because of the CPAN and some evidence that its regexes are faster than pythons and more feature reach than the UNIX ones

The langauge will look the following way: (subject to change) (only mentioning what is different from traditional markdown)


* titles: (all or the first letter capitalized and on a single line) (you dont need more than 2 heading levels and 2 and 4 are the ones I use the most (this usually creates clutter with all the hashtags preceding it))

~~~
TITLE (heading level 2)
Title (heading level 4)
~~~

* math: (only one symbol at the start of the line and the same latex syntax)(getting them on one line by default makes them easier to spot and debug)

~~~
inline:
_text_
\- \fracc{\alpha}{\beta}
_text_

display:
_empty line_
\= \fracc{\alpha}{\beta}
_empty line_
~~~

* colors (inline colors, the supported color palette will be limited to primary and secondary colors)

~~~
COLOR word 
COLOR word1 word2 ... wordn COLOR
~~~

(note that I will be using a lot of cues to make my job easier matching stuff with regex,  I'll try to make the regexes as specific as possible to try and maximize performance by minimizing searches on non matching d

one more thing that the translation will let me do is to add boilerplate code to the markdown wihtout getting my actual notes messy, 
some examples are working with html tags that dont have native support in markdown (like colors) and working with headers and footers

I will be using github flavoured markdown for the translation

