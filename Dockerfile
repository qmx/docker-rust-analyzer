FROM rust:1.39.0
ENV CARGO_INSTALL_ROOT /opt/rust-tools
ENV RA_COMMIT 431836f4a01dda39d10f6275915f9c8e99a28028
RUN git clone https://github.com/rust-analyzer/rust-analyzer.git /tmp/rust-analyzer && cd /tmp/rust-analyzer && git checkout -f $RA_COMMIT && cargo xtask install --server
