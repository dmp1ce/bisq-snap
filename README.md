# Bisq Snap

Provided here is a configuration for building [Bisq](https://bisq.network/) as a snap. Snaps are distributed on the [Snapcraft store](https://snapcraft.io/bisq-desktop).

The purpose of the Bisq snap is to make it easier for users to get started with Bisq and to better market the decentralized trading platform.

# Security Concerns

When using any snap, the user is trusting BOTH the builder of the snap and the publisher of the snap. This snap relies on Cononical to BOTH build the snap and publish the snap. You only trust this repository in so far as you trust that the `snapcraft.yaml` file is correctly configured.

To reduce the need for trust in both the builder and publisher, the build and install steps are provided below.

## Automatic updates

The snap system automatically updates snaps. Although convenient, the end user may not be aware the application has been updated. The user also needs to manually verify the hash of the snap again, otherwise they are implicitly trusting the builder and publisher of the snap.

I would at this point recommend turning off automatic updates if concerned, however it seems there is some difficulty in do so. A long discussion on the disabling automatic updates can be read [here](https://forum.snapcraft.io/t/disabling-automatic-refresh-for-snap-from-store/707/209).

# Install from Snapcraft store

From the command line, `snap install bisq-desktop` will install the Bisq snap from the Snapcraft store.

# Build

To build install the requirements and then run `snapcraft` in the root of this repository. 

## Requirements

- Install `snap`. Follow your OSes instructions for installing `snap` and `snapd`.
- Install `snapcraft`. Typically installed as a snap like so `snap install snapcraft --classic`.
- Install `multipass`. Running `snapcraft` will try to install `multipass` but can also be installed manually with `snap install multipass --beta --classic`.

See [Snapcraft documentation](https://docs.snapcraft.io/snapcraft-overview/8940) for more details.

## Steps

Simply run `snapcraft` in the root of this repository to build the snap.

# Install from snap file

The Bisq snap can be installed from the store or directly from the `.snap` file. Only installing through the store will provide automatic updates.

After building, running `snap install bisq-desktop_${my_version}_amd64.snap --dangerous` will install the snap. Where `${my_version}` is the version built, for example `1.0.1`.
