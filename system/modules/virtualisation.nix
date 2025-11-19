{ pkgs, ... }:

{
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        package = pkgs.qemu_kvm;
        runAsRoot = false;
        vhostUserPackages = with pkgs; [ virtiofsd ];
        swtpm = {
          enable = true;
        };
      };
    };
    spiceUSBRedirection.enable = true;
  };
  programs.virt-manager.enable = true;
}
