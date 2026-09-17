if get_option('man')
    man_names = [
        'emerald.1',
        'pkgadd.1',
        'pkgbase.1',
        'pkgbuild.1',
        'pkgdel.1',
        'pkgrebuild.1',
        'portcreate.1',
        'portsync.1',
        'revdep.1',
        'updateconf.1',
        'xchroot.1',
        'emerald.conf.5',
        'emerald.alias.5',
        'emerald.mask.5',
        'emerald.repo.5',
        'revdep.conf.5'
    ]

    man_files = []

    foreach man_name: man_names
        man_files += configure_file(
            input: '@0@.in'.format(man_name),
            output: man_name,
            configuration: conf_data
        )
    endforeach

    install_man(man_files)
endif
