fish_completion_dir = join_paths(get_option('datadir'), 'fish', 'vendor_completions.d')

foreach file: completions_files
    install_data('@0@.fish'.format(file), install_dir: fish_completion_dir)
endforeach
