while [ true ];do
  sleep $2
  links -dump $1 >> site.txt
  diff ./website.txt .site.txt

done
