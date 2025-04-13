# Start with a minimal Debian base
FROM debian:bullseye-slim

# Set environment variables for Go
ENV GOLANG_VERSION=1.22.2
ENV GOPATH=/go
ENV PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    git \
    build-essential \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install Go
RUN curl -OL https://go.dev/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz \
    && tar -C /usr/local -xzf go${GOLANG_VERSION}.linux-amd64.tar.gz \
    && rm go${GOLANG_VERSION}.linux-amd64.tar.gz

# Create working directory
WORKDIR /app

# Copy the project files (if you're building locally)
# COPY . .

# Or clone it from GitHub during container build (if building on EC2)
# RUN git clone https://github.com/YOURUSER/YOURREPO.git . 

# Default command (optional)
CMD [ "go", "run", "." ]
