FROM rust:1.37.0-stretch

WORKDIR /app

# copy over your manifests
COPY . .

# this build step will cache your dependencies
RUN cargo build && cargo build --release && cargo test
RUN rm -rf /app && mkdir /app