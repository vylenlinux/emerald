bash_completion_dir = join_paths(get_option('datadir'), 'bash-completion', 'completions')

foreach file: completions_files
    install_data(file, install_dir: bash_completion_dir)
endforeach
