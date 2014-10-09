function! s:ConvertToPdf(tex_file)
  let l:cmd = g:latex2pdf_command . ' ' . a:tex_file
  exec 'call system(l:cmd)'
endfunc

function! s:OutputFilename(tex_file)
  return substitute(a:tex_file, ".tex$", ".pdf", "")
endfunc

function! s:OpenPreview(pdf_file)
  let l:cmd = g:latex_preview_command . ' ' . a:pdf_file
  exec 'call system(l:cmd)'
endfunc

function! latexpreview#PreviewLatexAsPdf()
  let l:currentfile = expand("%:p")
  let l:pdffile = s:OutputFilename(l:currentfile)

  call s:ConvertToPdf(l:currentfile)
  call s:OpenPreview(l:pdffile)
  echom 'Finished generating PDF preview:' l:pdffile
endfunc
