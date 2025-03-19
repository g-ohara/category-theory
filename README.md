# tex-template

Minimal template for LaTeX.

## What is tex-template?

When you write a $\LaTeX{}$ document,
you need to compile the source code to a PDF to see how the document looks.
But the generated PDF file is not only large but also redundant
(contains information equivalent to the source code)
and should not be included in your repo.
But you may need to read it on the go or share it with someone.
Upload it to Google Drive?
No, use **tex-template**.

You can easily compile your $\LaTeX{}$ code to a PDF file locally,
and do not need to neither include it in your remote repository
nor upload it to Google Drive.
All you need to do is to tag your commit.
GitHub Actions will compile the source code to a PDF file
and add it to your release.

## Usage

### Prerequisites

* $\TeX{}$ compiler
* latexmk
* (optional) ChkTeX
* (optional) latexindent

### How to compile locally

1. Create your repository from tex-template
1. Edit `main.tex`
1. Run: `latexmk main.tex`

### How to compile on GitHub

- Tag your commit.
- Push the tag.
- Wait a few minutes.

## Example of Versioning Rule

```
+------- public submission (eg. conference, presentation)
| +----- private submission (eg. review request for professor)
| | +--- large changes
0.0.0
```

## Contributing

Pull requests are welcome.
For major changes,
please open an issue first to discuss what you would like to change.

## License

[MIT](/LICENSE)

