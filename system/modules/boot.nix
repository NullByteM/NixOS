{
  boot = {
    plymouth.enable = true;
    consoleLogLevel = 3;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "udev.log_priority=3"
      "rd.systemd.show_status=auto"
      "nohibernate"
      "apparmor=1"
      "slab_nomerge"
      "page_alloc.shuffle=1"
      "pti=on"
      "init_on_alloc=1"
      "init_on_free=1"
      "intel_iommu=on"
      "vfio-pci.ids=1002:67b0,1002:aac8,144d:a80a"
    ];
    tmp.cleanOnBoot = true;
    supportedFilesystems = [ "ntfs" "btrfs" "ext4" ];
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
      timeout = 0;
    };
    /*lanzaboote = {
      enable = true;
      pkiBundle = "/var/lib/sbctl";
    };*/
    kernelModules = [
      "tcp_bbr"
      "nvidia"
      "nvidia_modeset"
      "nvidia_uvm"
      "nvidia_drm"
      "kvm-intel"
      "overlay"
      "tun"
      "vfio_pci"
      "vfio"
      "vfio_iommu_type1"
    ];
    kernel.sysctl = {
      "net.ipv4.tcp_congestion_control" = "bbr";
      "net.core.default_qdisc" = "fq_codel";
      "net.core.wmem_max" = 1073741824;
      "net.core.rmem_max" = 1073741824;
      "net.ipv4.tcp_rmem" = "4096 87380 1073741824";
      "net.ipv4.tcp_wmem" = "4096 87380 1073741824";
      "net.ipv4.tcp_fin_timeout" = 15;
      "net.ipv4.tcp_tw_reuse" = 1;
      "net.ipv4.tcp_syncookies" = 1;
    };
  };
}
