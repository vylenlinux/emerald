# fish completion for pkgdel

complete -c pkgdel -s h -l help -d 'show help message'
complete -c pkgdel -s v -l verbose -d 'print files removed'
complete -c pkgdel -l root -r -a '(__fish_complete_directories)' -d 'remove from custom root directory'
complete -c pkgdel -f -a '(ls (pkgadd --print-db-dir 2>/dev/null) 2>/dev/null)' -d 'installed port'
