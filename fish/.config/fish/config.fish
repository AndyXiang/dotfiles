if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim
set -gx VIMRC ~/.config/vim/.vimrc
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

starship init fish | source

source $VIMRC

alias lsa='ls -a'
alias cdf='cd ..'
alias v='nvim'

# a function example
# function my_func
#     if [ -z "$argv" ]
#         # No arguments
#         echo "No arguments supplied"
#         return
#     else # At least one argument
#         if [ "$argv[1]" = --r ]
#
#             echo "Excellent!"
#             return
#         end
#     end
# end

# function that open config files
function config
    if [ -z "$argv" ] # no argument
        # open fish config by default
        nvim ~/.config/fish
        return
    end
    if [ (count $argv) -eq 1 ]
        switch $argv[1]
            case kitty
                nvim ~/.config/kitty
            case nvim
                nvim ~/.config/nvim
            case hyprland
                nvim ~/.config/hypr
            case hypr
                nvim ~/.config/hypr
            case starship
                nvim ~/.config/starship
            case waybar
                nvim ~/.config/waybar
            case dunst
                nvim ~/.config/dunst
            case fastfetch
                nvim ~/.config/fastfetch
                # case thunar
                #     nvim ~/.config/Thunar
        end
    end
    return
end
