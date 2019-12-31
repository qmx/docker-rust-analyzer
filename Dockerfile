FROM qmxme/rust-builder:0.2.0
ENV CARGO_INSTALL_ROOT /opt/rust-tools
ENV RA_COMMIT c3a86325daabcabcff72d9eb00040c55ca90a483
RUN git clone https://github.com/rust-analyzer/rust-analyzer.git /tmp/rust-analyzer && cd /tmp/rust-analyzer && git checkout -f $RA_COMMIT && cargo xtask install --server
