# Reusable constants are defined here
# All options have default values
# You can use these options in other modules
{lib, ...}: {
  options = {
    constants = {
      name = lib.mkOption {
        default = "dummy";
        description = "Name of the machine";
        type = lib.types.str;
      };

      network = {
        hostId = lib.mkOption {
          default = "9f86d081";
          description = "Unique identifier for the machine";
          type = lib.types.str;
        };
      };

      platform = lib.mkOption {
        default = "x86_64-linux";
        description = "Platform of the machine";
        type = lib.types.str;
      };

      vm = {
        cpu = {
          cores = lib.mkOption {
            default = 4;
            description = "Number of CPU cores";
            type = lib.types.int;
          };
        };

        disk = {
          size = lib.mkOption {
            default = 8192;
            description = "Size of the disk in MB";
            type = lib.types.int;
          };
        };

        memory = {
          size = lib.mkOption {
            default = 4096;
            description = "Size of the memory in MB";
            type = lib.types.int;
          };
        };

        name = lib.mkOption {
          default = "dummy-vm";
          description = "Name of the virtual machine";
          type = lib.types.str;
        };

        network = {
          hostId = lib.mkOption {
            default = "cc4e8be2";
            description = "Unique identifier for the virtual machine";
            type = lib.types.str;
          };
        };
      };
    };
  };
}
