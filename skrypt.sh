while [ true ];do
  sleep $2
  links -dump $1 > ./site.txt
  echo "Difference: "
  diff ./website.txt ./site.txt
  git commit ./site.txt -m "New website."
done
