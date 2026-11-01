# fish completion for portsync

function __portsync_repos
    cat /etc/emerald.repo 2>/dev/null | string match -rv '^\s*(#.*)?$' | string replace -r '\s.*' '' | string replace -r '.*/' ''
end

complete -c portsync -s p -l prune -d 'prune local git repository'
complete -c portsync -s r -l reset -d 'reset git repositories'
complete -c portsync -s s -l source -r -x -a '(__portsync_repos)' -d 'sync only the given repositories'
complete -c portsync -s h -l help -d 'show help message'
