files = [
    'emerald.alias',
    'emerald.conf',
    'emerald.mask',
    'emerald.repo',
    'revdep.conf'
]

foreach file: files
    configure_file(
        input: '@0@.in'.format(file),
        output: file,
        configuration: conf_data,
        install_dir: SYSCONFDIR
    )
endforeach
