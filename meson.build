project('emerald', 'c', version: '20260428')

PREFIX = get_option('prefix')
SYSCONFDIR = join_paths(PREFIX, get_option('sysconfdir'))
BINDIR = join_paths(PREFIX, get_option('bindir'))

conf_data = configuration_data()
conf_data.set('SYSCONFDIR', SYSCONFDIR)

subdir('data')
subdir('src')
