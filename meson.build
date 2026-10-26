project('emerald', 'c', version: '20261026')

SYSCONFDIR = get_option('sysconfdir')
BINDIR = join_paths(get_option('prefix'), get_option('bindir'))
LOCALSTATEDIR = get_option('localstatedir')
LIBDIR = get_option('libdir')

project_name = meson.project_name()
project_version = meson.project_version()

conf_data = configuration_data()
conf_data.set('SYSCONFDIR', SYSCONFDIR)
conf_data.set('LIBDIR', LIBDIR)
conf_data.set('PORTS_DIR', get_option('ports-dir'))
conf_data.set('CACHE_DIR', get_option('cache-dir'))
conf_data.set('STATE_DIR', get_option('state-dir'))
conf_data.set('PROJECT_NAME', project_name)
conf_data.set('PROJECT_VERSION', project_version)
conf_data.set('BUILD_SCRIPT', get_option('build-script'))
conf_data.set('CHECKSUMS_FILE', get_option('checksums-file'))
conf_data.set('PKGFILES_FILE', get_option('pkgfiles-file'))
conf_data.set('EPKGNEW_EXT', get_option('epkgnew-ext'))
conf_data.set('MAINTAINER', get_option('maintainer'))
conf_data.set('SEARCH_DIRS', get_option('search-dirs'))

subdir('data')
subdir('man')
subdir('src')

empty_dirs = [
    [join_paths(SYSCONFDIR, 'revdep.d'), 'rwxr-xr-x'],
    [join_paths(LIBDIR, 'revdep.d'), 'rwxr-xr-x'],
    [join_paths(get_option('cache-dir'), 'packages'), 'rwxrwxrwx'],
    [join_paths(get_option('cache-dir'), 'sources'), 'rwxrwxrwx'],
    [join_paths(get_option('cache-dir'), 'work'), 'rwxrwxrwx'],
    [get_option('ports-dir'), 'rwxr-xr-x']
]

foreach empty_dir: empty_dirs
    install_emptydir(empty_dir[0], install_mode: empty_dir[1])
endforeach
