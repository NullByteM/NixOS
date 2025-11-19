{ pkgs, ... }:

{
  users.users.x1nf3ct = {
    isNormalUser = true;
    initialPassword = "password";
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "libvirtd" ];
  };
  programs.bash = {
    completion.enable = true;
    completion.package = pkgs.bash-completion;
    interactiveShellInit = ''eval "$(starship init bash)"'';
    shellAliases = {
      update-repo = "sudo nix flake update --flake /etc/nixos";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#x1nf3ct-PC";
      upgrade = "sudo nixos-rebuild switch --flake /etc/nixos#x1nf3ct-PC --upgrade";
      rebuild-boot = "sudo nixos-rebuild boot --flake /etc/nixos#x1nf3ct-PC";
      remove-garbage = "sudo nix-collect-garbage -d";
    };
  };
}
