project('emerald', 'c', version: '20260428')

PREFIX = get_option('prefix')
SYSCONFDIR = join_paths(PREFIX, get_option('sysconfdir'))
BINDIR = join_paths(PREFIX, get_option('bindir'))
LOCALSTATEDIR = join_paths(PREFIX, get_option('localstatedir'))

conf_data = configuration_data()
conf_data.set('SYSCONFDIR', SYSCONFDIR)

subdir('data')
subdir('src')

install_emptydir(
    SYSCONFDIR / 'revdep.d',
    install_mode: 'rwxr-xr-x'
)

install_emptydir(
    LOCALSTATEDIR / 'cache/emerald/packages',
    install_mode: 'rwxrwxrwx'
)

install_emptydir(
    LOCALSTATEDIR / 'cache/emerald/sources',
    install_mode: 'rwxrwxrwx'
)

install_emptydir(
    LOCALSTATEDIR / 'cache/emerald/work',
    install_mode: 'rwxrwxrwx'
)

install_emptydir(
    LOCALSTATEDIR / 'lib/emerald/cbuild',
    install_mode: 'rwxr-xr-x'
)
