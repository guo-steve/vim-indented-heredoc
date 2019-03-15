" ~/.vim/after/syntax/perl.vim

syn region perlIndentedHereDocStart    matchgroup=perlStringStartEnd start=+<<\~\z(\I\i*\)+                        end=+$+        contains=@perlTop oneline
syn region perlIndentedHereDocStart    matchgroup=perlStringStartEnd start=+<<\~\s*"\z([^\\"]*\%(\\.[^\\"]*\)*\)"+ end=+$+        contains=@perlTop oneline
syn region perlIndentedHereDocStart    matchgroup=perlStringStartEnd start=+<<\~\s*'\z([^\\']*\%(\\.[^\\']*\)*\)'+ end=+$+        contains=@perlTop oneline
syn region perlIndentedHereDocStart    matchgroup=perlStringStartEnd start=+<<\~\s*""+                             end=+$+        contains=@perlTop oneline
syn region perlIndentedHereDocStart    matchgroup=perlStringStartEnd start=+<<\~\s*''+                             end=+$+        contains=@perlTop oneline
if exists("perl_fold")
  syn region perlIndentedHereDoc       start=+<<\~\z(\I\i*\)+                        matchgroup=perlStringStartEnd end=+^\s*\z1$+ contains=perlIndentedHereDocStart,@perlInterpDQ fold extend
  syn region perlIndentedHereDoc       start=+<<\~\s*"\z([^\\"]*\%(\\.[^\\"]*\)*\)"+ matchgroup=perlStringStartEnd end=+^\s*\z1$+ contains=perlIndentedHereDocStart,@perlInterpDQ fold extend
  syn region perlIndentedHereDoc       start=+<<\~\s*'\z([^\\']*\%(\\.[^\\']*\)*\)'+ matchgroup=perlStringStartEnd end=+^\s*\z1$+ contains=perlIndentedHereDocStart,@perlInterpSQ fold extend
  syn region perlIndentedHereDoc       start=+<<\~\s*""+                             matchgroup=perlStringStartEnd end=+^$+       contains=perlIndentedHereDocStart,@perlInterpDQ,perlNotEmptyLine fold extend
  syn region perlIndentedHereDoc       start=+<<\~\s*''+                             matchgroup=perlStringStartEnd end=+^$+       contains=perlIndentedHereDocStart,@perlInterpSQ,perlNotEmptyLine fold extend
  syn region perlIndentedAutoload      matchgroup=perlStringStartEnd start=+<<\~\s*\(['"]\=\)\z(END_\%(SUB\|OF_FUNC\|OF_AUTOLOAD\)\)\1+ end=+^\s*\z1$+ contains=ALL fold extend
else
  syn region perlIndentedHereDoc       start=+<<\~\z(\I\i*\)+                        matchgroup=perlStringStartEnd end=+^\s*\z1$+ contains=perlIndentedHereDocStart,@perlInterpDQ
  syn region perlIndentedHereDoc       start=+<<\~\s*"\z([^\\"]*\%(\\.[^\\"]*\)*\)"+ matchgroup=perlStringStartEnd end=+^\s*\z1$+ contains=perlIndentedHereDocStart,@perlInterpDQ
  syn region perlIndentedHereDoc       start=+<<\~\s*'\z([^\\']*\%(\\.[^\\']*\)*\)'+ matchgroup=perlStringStartEnd end=+^\s*\z1$+ contains=perlIndentedHereDocStart,@perlInterpSQ
  syn region perlIndentedHereDoc       start=+<<\~\s*""+                             matchgroup=perlStringStartEnd end=+^$+       contains=perlIndentedHereDocStart,@perlInterpDQ,perlNotEmptyLine
  syn region perlIndentedHereDoc       start=+<<\~\s*''+                             matchgroup=perlStringStartEnd end=+^$+       contains=perlIndentedHereDocStart,@perlInterpSQ,perlNotEmptyLine
  syn region perlIndentedAutoload      matchgroup=perlStringStartEnd start=+<<\~\s*\(['"]\=\)\z(END_\%(SUB\|OF_FUNC\|OF_AUTOLOAD\)\)\1+ end=+^\s*\z1$+ contains=ALL
endif

"let s:bcs = b:current_syntax
"unlet b:current_syntax
"syntax include @SQL syntax/sql.vim
"let b:current_syntax = s:bcs
"
"" match optional, surrounding single or double quote and any whitespace in the heredoc name
"syn region perlHereDocSQL matchgroup=Statement start=+<<[\~\-]\?\(['"]\?\)\z(\s*\I\i*SQL\s*\)\1+ end=+^\s*\z1$+ contains=@SQL
