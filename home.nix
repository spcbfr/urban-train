{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "spcbfr";
  home.homeDirectory = "/home/spcbfr";

  home.packages = with pkgs; [
    discord  spotify 
    xwallpaper st
    qbittorrent
    vscode 
    lxappearance
    file
    dunst
    libnotify 
    sxiv
    blender
    killall
    font-awesome
    xclip maim # screenshots
    obsidian
    gnome-extension-manager
    dwarfs fuse-overlayfs
  ];


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
  };
  programs.bash = {
    enable = true;
    historyFile = "~/.local/share/bash/bash_history";
    shellAliases = {
      ka = "killall";
    };
    enableCompletion = true;
  };
  gtk = {
    enable = true;
    gtk2.configLocation = "${config.xdg.configHome}/gtk-2.0/gtkrc";
  };
  programs.zsh = {
    enable = true;
    enableSyntaxHighlighting = true;
    history.path = "${config.xdg.dataHome}/zsh/zsh_history";
    shellAliases = {
      ka = "killall";
    };
    dotDir = ".config/zsh";
    initExtra = "export PATH=$PATH:~/.local/bin";
  };
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
  
  programs.git = {
    enable = true;
    userName = "Yusuf Bouzekri";
    userEmail = "youssefbouzekri@protonmail.com";
  };
  programs.alacritty.enable = true;
  programs.firefox.enable = true;
  programs.zathura = {
    enable = true;
  };
  programs.exa = {
    enable = true;
    enableAliases = true; # alias ls to exa
  };
  programs.rofi = {
    enable = true;
  };
  
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";
  nixpkgs.config = {
    allowUnfree = true;
  };

}
