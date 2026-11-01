fish_completion_dir = join_paths(get_option('datadir'), 'fish', 'vendor_completions.d')

foreach file: completions_files
    configure_file(
        input: '@0@.fish.in'.format(file),
        output: '@0@.fish'.format(file),
        configuration: conf_data,
        install_dir: fish_completion_dir
    )
endforeach
