# From Claude Sonnet 4.6
function print_all_git_branches
    begin
        echo -e "Directory\t\t\tAhead & Behind\tDate\tBranch"
        find . -maxdepth 3 -name ".git" -type d 2>/dev/null | while read gitdir
            git -C $(dirname $gitdir) branch --format="[$gitdir]%09%(ahead-behind:main)%09%(creatordate)%09%(refname:short)" 2>/dev/null | grep -v 'main$'
        end
    end | column -t -s (printf '\t')
end
abbr -a gab print_all_git_branches
