source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
#added by me 
function cdf
    cd (find ~ -type d | fzf)
end
function cdff
    cd (fd --type d |fzf)
end
alias goo='ls -lah'
set -gx EDITOR nvim
