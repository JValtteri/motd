# Terminal Login MOTD Customization

The motd script can print out fancy ASCII art text and info about the system on every login

## Automatic setup (recommended)

motd exxpects to be under the home directory of the user, i.e. `~/motd/`

1. Run the `setup.sh` script
2. Customize
  - Edit motd.sh to comment out features you don't want and uncomment those that you want.
  - You may add or enable a ascii banner. See `modules/banners`

## Manual setup

1. Copy this folder: motd to home `cp -r motd ~/`
2. Add `~/motd/motd.sh` to end of the `.bashrc` file: `echo "~/motd/motd.sh" >> ~/.bashrc`
2. Customize...
