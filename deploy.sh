# Get the current branch name
current_branch=$(git symbolic-ref --short HEAD 2>/dev/null)

# Check if the current branch is "main"
if [[ "$current_branch" != "main" ]]; then
  echo -e "\033[31mYou are not on the main branch so you can't build a prod container. Current branch: $current_branch\033[0m"
  exit 1
fi
git pull origin main
doctl registry login
docker buildx build --platform linux/amd64 -t registry.digitalocean.com/disclosureguideregistry/tomauto_splash . --push
docker push registry.digitalocean.com/disclosureguideregistry/tomauto_splash
