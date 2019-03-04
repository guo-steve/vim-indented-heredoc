" ~/.vim/after/syntax/perl.vim

let s:bcs = b:current_syntax
unlet b:current_syntax
syntax include @SQL syntax/sql.vim
let b:current_syntax = s:bcs

" match optional, surrounding single or double quote and any whitespace in the heredoc name
syn region perlHereDocSQL matchgroup=Statement start=+<<[\~\-]\?\(['"]\?\)\z(\s*\I\i*SQL\s*\)\1+ end=+^\s*\z1$+ contains=@SQL
