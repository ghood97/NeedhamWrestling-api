# Ex: TOKEN=tokengoeshere ID=idgoeshere sh curl-scripts/examples/show.sh

curl "http://localhost:4741/comments/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
echo
