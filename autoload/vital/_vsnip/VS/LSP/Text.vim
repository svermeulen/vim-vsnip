" ___vital___
" NOTE: lines between '" ___vital___' is generated by :Vitalize.
" Do not modify the code nor insert new lines before '" ___vital___'
function! s:_SID() abort
  return matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze__SID$')
endfunction
execute join(['function! vital#_vsnip#VS#LSP#Text#import() abort', printf("return map({'normalize_eol': '', 'split_by_eol': ''}, \"vital#_vsnip#function('<SNR>%s_' . v:key)\")", s:_SID()), 'endfunction'], "\n")
delfunction s:_SID
" ___vital___
"
" normalize_eol
"
function! s:normalize_eol(text) abort
  let l:text = a:text
  let l:text = substitute(l:text, "\r\n", "\n", 'g')
  let l:text = substitute(l:text, "\r", "\n", 'g')
  return l:text
endfunction

"
" split_by_eol
"
function! s:split_by_eol(text) abort
  return split(s:normalize_eol(a:text), "\n", v:true)
endfunction

