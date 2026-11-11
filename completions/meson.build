if get_option('completions')
    configure_file(
        input: 'emerald.in',
        output: 'emerald',
        configuration: conf_data,
        install_dir: join_paths(get_option('datadir'), 'bash-completion', 'completions')
    )

    configure_file(
        input: 'emerald.fish.in',
        output: 'emerald.fish',
        configuration: conf_data,
        install_dir: join_paths(get_option('datadir'), 'fish', 'vendor_completions.d')
    )

    configure_file(
        input: '_emerald.in',
        output: '_emerald',
        configuration: conf_data,
        install_dir: join_paths(get_option('datadir'), 'zsh', 'site-functions')
    )
endif
