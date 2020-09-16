# cloudron rust example

This is an example app for Cloudron, using the [Rocket framework](https://rocket.rs/).

License: anything you like (commercial or not).
I claim no ownership over any of this, as it's too trivial to :)

## getting started

* [Make sure you have Rust installed](https://rustup.rs).
* Rocket [requires a nightly toolchain](https://rocket.rs/v0.4/guide/getting-started/),
so you may have to run `rustup override set nightly` if you aren't using that for everything.
* I've chosen to use static linking to make deployment easier, so you will need to install the right target: `rustup target add x86_64-unknown-linux-musl`

## building the application

* `cargo check --target x86_64-unknown-linux-musl`
* `cargo test --target x86_64-unknown-linux-musl`
* `cargo build --target x86_64-unknown-linux-musl --release`

## building the image

First, build the application as shown above. Then, prepare the deploy directory:

* `export DEPLOY_DIR="./tmp-deploy/"`
* `rsync -rav --delete \
    ./Rocket.toml \
    ./start.sh \
    ./target/x86_64-unknown-linux-musl/release/cloudron-rust-rocket \
    ./static \
    ${DEPLOY_DIR}`
    
Then go ahead and build and tag the docker image.

## installing the image

TODO

cloudron install / cloudron update blurb here
