zsh_completion_dir = join_paths(get_option('datadir'), 'zsh', 'site-functions')

foreach file: completions_files
    install_data('_@0@'.format(file), install_dir: zsh_completion_dir)
endforeach
