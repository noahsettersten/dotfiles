#! /bin/sh

# name=localhost.$(whoami)
name=conover.dev

openssl req \
  -new \
  -newkey rsa:2048 \
  -sha256 \
  -days 3650 \
  -nodes \
  -x509 \
  -keyout $name.key \
  -out $name.crt \
  -subj "/CN=$name"

# openssl req \
  # -new \
  # -newkey rsa:2048 \
  # -sha256 \
  # -days 3650 \
  # -nodes \
  # -x509 \
  # -keyout $name.key \
  # -out $name.crt \
  # -config <(cat <<-EOF
  # [req]
  # distinguished_name = req_distinguished_name
  # x509_extensions = v3_req
  # prompt = no
  # [req_distinguished_name]
  # CN = $name
  # [v3_req]
  # keyUsage = keyEncipherment, dataEncipherment
  # extendedKeyUsage = serverAuth
  # subjectAltName = @alt_names
  # [alt_names]
  # DNS.1 = $name
  # DNS.2 = *.$name
# EOF
# )
