project('emerald', 'c', version: '20260503')

PREFIX = get_option('prefix')
SYSCONFDIR = join_paths(PREFIX, get_option('sysconfdir'))
BINDIR = join_paths(PREFIX, get_option('bindir'))
LOCALSTATEDIR = join_paths(PREFIX, get_option('localstatedir'))

conf_data = configuration_data()
conf_data.set('SYSCONFDIR', SYSCONFDIR)
conf_data.set('PORTS_DIR', get_option('ports_dir'))
conf_data.set('CACHE_DIR', get_option('cache_dir'))
conf_data.set('LIB_DIR', get_option('lib_dir'))

subdir('data')
subdir('src')

install_emptydir(
    SYSCONFDIR / 'revdep.d',
    install_mode: 'rwxr-xr-x'
)

install_emptydir(
    join_paths(get_option('cache_dir'), 'packages'),
    install_mode: 'rwxrwxrwx'
)

install_emptydir(
    join_paths(get_option('cache_dir'), 'sources'),
    install_mode: 'rwxrwxrwx'
)

install_emptydir(
    join_paths(get_option('cache_dir'), 'work'),
    install_mode: 'rwxrwxrwx'
)

install_emptydir(
    join_paths(get_option('lib_dir'), 'cbuild'),
    install_mode: 'rwxr-xr-x'
)
