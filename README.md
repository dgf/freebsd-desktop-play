# Install FreeBSD on ThinkPad X220

Run the installation playbook as root

    # ansible-playbook install.yml

Run the profile playbook as desktop user

    $ ansible-playbook profile.yml

Configure some defaults as desktop user

    $ chsh -s /usr/local/bin/zsh

## Useful commands

Show ACPI status

    acpiconf -i 0

Show matching font

    fc-match Dejavu

Show active .Xresources config

    xrdb -query -all

Update pkg cutleaves exclude file

    pkg_cutleaves -gx

Additional helpful resources

- https://www.c0ffee.net/blog/freebsd-on-a-laptop
- https://wiki.freebsd.org/TuningPowerConsumption
- https://github.com/chriskempson/base16-xresources/tree/master/xresources

