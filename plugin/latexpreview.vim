if exists('g:autoloaded_latex_preview')
  finish
endif

let g:autoloaded_latex_preview = 1

let g:latex2pdf_command = 'pdflatex'
let g:latex_preview_command = 'open -a Preview'

nnoremap <leader>pp :call latexpreview#PreviewLatexAsPdf()<CR>
