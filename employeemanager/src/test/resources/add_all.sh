jq -c '.[]' employees.json | while read a; do
   # Using httpie
   # echo $a | http POST :8080/employee
   # Using curl
   curl --header "Content-Type: application/json" --request POST --data "$a" http://localhost:8080/employee
done
