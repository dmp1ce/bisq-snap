# Bisq Snap

Provided here is a configuration for building [Bisq](https://bisq.network/) as a snap. Snaps are distributed on the [Snapcraft store](https://snapcraft.io/bisq-desktop).

The purpose of the Bisq snap is to make it easier for users to get started with Bisq and to better market the decentralized trading platform.

# Security Concerns

When using any snap, the user is trusting BOTH the builder of the snap and the publisher of the snap. I provide checksums and signature files for the Bisq snap so the publisher doesn't need to be trusted, but the builder still needs to be trusted. Cononical will provide a build service so they will build the Bisq snap and at that point trust is only with Cononical.

To reduce the need for trust in both the builder and publisher, I provide the build and install steps below. Also look at the [Bisq release](https://github.com/bisq-network/bisq/releases) page which provides additional ways to install Bisq.

## Automatic updates

The snap system automatically updates snaps. Although convenient, the end user may not be aware the application has been updated. The user also needs to manually verify the hash of the snap again, otherwise they are implicitly trusting the builder and publisher of the snap.

I would at this point recommend turning off automatic updates if concerned, however it seems there is some difficulty in do so. A long discussion on the disabling automatic updates can be read [here](https://forum.snapcraft.io/t/disabling-automatic-refresh-for-snap-from-store/707/209).

# Install from Snapcraft store

From the command line, `snap install bisq-desktop` will install the Bisq snap from the Snapcraft store.

## Verify checksum

After installing from the Snapcraft store, the snap files are stored in `/var/lib/snapd/snaps`. Run `sha256sum /var/lib/snapd/snaps/bisq-desktop_REVISION.snap` to see if the hash is the same as posted in the releases page.

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

After building, running `snap install bisq-desktop_0.9.3_amd64.snap --dangerous` will install the snap.
