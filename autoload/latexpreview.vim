function! latexpreview#ConvertToPdf(tex_file)
  let l:cmd = g:latex2pdf_command . ' ' . a:tex_file
  exec 'call system(l:cmd)'
endfunc

function! latexpreview#OutputFilename(tex_file)
  return substitute(a:tex_file, ".tex$", ".pdf", "")
endfunc

function! latexpreview#OpenPreview(pdf_file)
  let l:cmd = g:latex_preview_command . ' ' . a:pdf_file
  exec 'call system(l:cmd)'
endfunc

function! latexpreview#PreviewLatexAsPdf()
  let l:currentfile = expand("%:p")
  let l:pdffile = latexpreview#OutputFilename(l:currentfile)

  call latexpreview#ConvertToPdf(l:currentfile)
  call latexpreview#OpenPreview(l:pdffile)
  echo 'Finished generating PDF preview:' l:pdffile
endfunc
