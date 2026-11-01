bash_completion_dir = join_paths(get_option('datadir'), 'bash-completion', 'completions')

foreach file: completions_files
    configure_file(
        input: '@0@.in'.format(file),
        output: file,
        configuration: conf_data,
        install_dir: bash_completion_dir
    )
endforeach
