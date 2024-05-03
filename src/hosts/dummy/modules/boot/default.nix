# Boot configuration
{
  boot = {
    initrd = {
      # Kernel modules needed for booting
      availableKernelModules = [
        # These were autodetected by nixos-generate-config
        "ahci"
        "xhci_pci"
        "virtio_pci"
        "sr_mod"
        "virtio_blk"
      ];
    };

    # Other kernel modules to load
    kernelModules = [
      # These were autodetected by nixos-generate-config
      "kvm-intel"
    ];

    loader = {
      systemd-boot = {
        # Use systemd-boot as bootloader
        enable = true;
      };
    };
  };
}
