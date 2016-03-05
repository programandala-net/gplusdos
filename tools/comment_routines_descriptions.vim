" comment_routine_descriptions.vim

" By Marcos Cruz (programandala.net)

" Part of the Plus D Source project.

" This VimL script searches for the next routine header, already commented,
" and comments their descriptions.

" 2016-03-05

call search('^; THE .\+\n\n[A-Z]')
normal jj
normal mb
call search('\n\n')
normal mm
normal 'b

" Convert the paragraph to actual comments:
" (with the Commentary plugin, map "gc"):
normal gc'm

" Format the paragraph:
normal qpap
