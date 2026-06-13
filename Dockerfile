FROM debian:bullseye

# By danaelssh - 09/06/2025
RUN apt update && apt install -y \
  nodejs \
  npm \
  openssh-server \
  passwd \
  net-tools \
  curl \
  sudo \
  && rm -rf /var/lib/apt/lists/*

# By danaelssh - 09/06/2025
WORKDIR /app
COPY . .

# By danaelssh - 09/06/2025
RUN npm install

# By danaelssh - 10/06/2025
RUN mkdir /var/run/sshd

# By danaelssh - 10/06/2025
CMD ["node", "index.js"]