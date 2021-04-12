function! Compl(ArgLead, CmdLine, CursorPos)
  return "files\n 
        \git_files\n
        \files_or_git_files\n
        \buffers\n
        \ag\n
        \rg\n
        \commits\n
        \references\n
        \symbols\n
        \ws_symbols\n
        \git
        \"
endfunction

com! -nargs=1 -complete=custom,Compl OneTerm lua require'oneterm'["<args>"]()
