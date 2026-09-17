files = [
    'emerald',
    'pkgadd',
    'pkgbase',
    'pkgbuild',
    'pkgdel',
    'pkgrebuild',
    'portcreate',
    'portsync',
    'revdep',
    'updateconf',
    'xchroot'
]

foreach file: files
    configure_file(
        input: '@0@.in'.format(file),
        output: file,
        configuration: conf_data,
        install_dir: BINDIR
    )
endforeach
