# fish completion for pkgadd

complete -c pkgadd -s u -l upgrade -d 'upgrade package'
complete -c pkgadd -s r -l reinstall -d 'reinstall package'
complete -c pkgadd -s c -l ignore-conflict -d 'ignore conflicts when installing package'
complete -c pkgadd -s v -l verbose -d 'print files installed'
complete -c pkgadd -s h -l help -d 'show help message'
complete -c pkgadd -l no-backup -d 'skip backup when upgrading package'
complete -c pkgadd -l print-db-dir -d 'print package database path'
complete -c pkgadd -l root -r -a '(__fish_complete_directories)' -d 'install to custom root directory'
complete -c pkgadd -a '(__fish_complete_suffix .epkg.tar.zst .epkg.tar.xz .epkg.tar.gz .epkg.tar.bz2 .epkg.tar)' -d 'package file'
