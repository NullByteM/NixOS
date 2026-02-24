{
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
    "/mnt/Data" = {
      device = "/dev/disk/by-uuid/4e071bc4-c13d-4063-b126-8c77df8c9dfa";
      fsType = "ext4";
      options = [ "defaults" "noatime" "barrier=1" "data=ordered" "errors=remount-ro" "commit=300" "nofail" ];
    };
  };
  systemd.tmpfiles.rules = [ "d /mnt/Data 0775 nullbytem users -" ];
}
