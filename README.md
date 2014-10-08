# vim-latex-preview

Simple plugin for generating PDF from LaTeX (using [MacTex](https://tug.org/mactex/)) and previewing it (with `Mac OS X Preview`).

## Installation

### Pathogen

Just clone the repo to Vim bundle dir.

```
cd ~/.vim/bundle
git clone git@github.com:tomaszwojcik/vim-latex-preview.git
```

## Usage

By default preview is launched with `<leader>pp`.


### Settings

* `nnoremap <leader><shortcut> :call latexpreview#PreviewLatexAsPdf()<CR>` - where `<shortcut>` is your shortcut for invoking preview
* `let g:latex2pdf_command = 'pdflatex'` - command for generating PDF
* `let g:latex_preview_command = 'open -a Preview'` - preview program to be launched

## License

Same as Vim's license. Feel free to change behavior, add new preview programs and so on. Lots of love for pull requests with improvements.
