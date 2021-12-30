{ config, lib, pkgs, ... }:
{

    services = {
    gnome.gnome-keyring.enable = true;
    upower.enable = true;

    xserver = {
      enable = true;
      layout = "us";
      displayManager.sddm.enable = true; 
      libinput = {
        enable = true;
        touchpad.disableWhileTyping = true;
      };

      displayManager.defaultSession = "none+xmonad";
     
      windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
        extraPackages = hpkgs: [
          hpkgs.xmonad
          hpkgs.xmonad-contrib
          hpkgs.xmonad-extras
          hpkgs.dbus
          hpkgs.monad-logger
        ];
      };

    };
  };

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  systemd.services.upower.enable = true; 
    
}
