set +xu
EXTERNAL_URL="http://localhost:6901"
if [[ ! -z "${GITPOD_WORKSPACE_URL}" ]]; then
  EXTERNAL_URL=${GITPOD_WORKSPACE_URL}
  EXTERNAL_URL=${EXTERNAL_URL/https:\/\//https:\/\/6901-}/vnc.html?password=headless
fi
if [[ ! -z "${GOOGLE_CLOUD_SHELL}" ]]; then
  #EXTERNAL_URL="https://shell.cloud.google.com/devshell/proxy?authuser=0&port=6901&environment_id=default"
  EXTERNAL_URL="https://6901-${WEB_HOST}/vnc.html?password=headless"
fi
if [[ ! -z "${CODESPACES}" ]]; then
  EXTERNAL_URL="https://${CODESPACE_NAME}-6901.preview.app.github.dev/vnc.html?password=headless"
fi
printf "\n\n"
echo "noVNC: $EXTERNAL_URL"

echo "Password: headless"