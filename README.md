# systemd-boot-signer

A package which registers interest trigger on
`/usr/lib/systemd/boot/efi/systemd-bootx64.efi`` with dpkg. On upgrading of
`systemd-boot-efi`` package the postinst of this package will be invoked by dpkg
with following arguments.

`postinst triggered /usr/lib/systemd/boot/efi/systemd-bootx64.efi`

postinst script inturn invokes `sign_systemd_boot` script which calls sbsign to resign
the upgraded binary with db key 


