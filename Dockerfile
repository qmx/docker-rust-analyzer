FROM rust:1.39.0
ENV CARGO_INSTALL_ROOT /opt/rust-tools
RUN git clone https://github.com/rust-analyzer/rust-analyzer.git /tmp/rust-analyzer && cd /tmp/rust-analyzer && git checkout -f 6983afdea9f41e58d7ebbd15012532cd3935451f && cargo xtask install --server
