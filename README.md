# Justified Text

In text processing, one approach to making a document appealing to the eye is to 
[justify paragraph text](https://en.wikipedia.org/wiki/Typographic_alignment#Justified). With monospaced fonts in a terminal, 
as you might see in a man page, this is accomplished by inserting spaces between words to produce a line of text where the 
first character of that line begins on the lefthand margin and the last printable character is on the righthand margin.

For this problem, think of a single line of text, and justify that text into a buffer, where the first character of the line 
of text is in the first spot in the buffer and the last character of text is in the specified slot in the buffer.

In JavaScript, you might define this function as follows:

```javascript
var justify(line, length)
```

It might be called like this:

```javascript
justify("The quick brown fox jumps over the lazy dog.", 52)
```

It produces a string that looks like this:

```javascript
The quick brown fox jumps over the lazy dog.
12345678901234567890123456789012345678901234567890123456789
```
