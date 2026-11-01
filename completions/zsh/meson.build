zsh_completion_dir = join_paths(get_option('datadir'), 'zsh', 'site-functions')

foreach file: completions_files
    configure_file(
        input: '_@0@.in'.format(file),
        output: '_@0@'.format(file),
        configuration: conf_data,
        install_dir: zsh_completion_dir
    )
endforeach
