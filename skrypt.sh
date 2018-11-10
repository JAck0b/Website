while [ true ];do
  sleep $2
  links -dump $1 > ./website.txt
  echo "Difference: "
  diff ./website.txt ./site.txt
  cat ./website.txt > ./site.txt
  git commit ./site.txt -m "New site."
done
