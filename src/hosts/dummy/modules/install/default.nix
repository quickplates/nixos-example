# Install script
{
  inputs,
  config,
  lib,
  pkgs,
  ...
}: {
  options = {
    installScript = lib.mkOption {
      # Create shell script
      default = pkgs.writeShellApplication {
        # Name of the script
        name = "install";

        # Packages available in the script
        runtimeInputs = [pkgs.coreutils pkgs.disko];

        # Load the script with substituted values
        text = builtins.readFile (
          # Substitute values in the script
          pkgs.substituteAll {
            # Use this file as source
            src = ./install.sh;

            # Provide values to substitute
            flake = inputs.self;
            host = config.constants.name;
            main = config.constants.storage.disks.main.device;
          }
        );
      };
    };
  };
}
