FROM qmxme/rust-builder:0.4.0 as builder
ENV CARGO_INSTALL_ROOT /opt/rust-tools
ENV RA_COMMIT 2020-05-11
RUN git clone https://github.com/rust-analyzer/rust-analyzer.git /tmp/rust-analyzer && cd /tmp/rust-analyzer && git checkout -f $RA_COMMIT && cargo xtask install --server

FROM busybox
COPY --from=builder /opt/rust-tools /opt/rust-tools
