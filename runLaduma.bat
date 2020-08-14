del cypress/results/*
del mochawesome.json
npx cypress run
Chcp 65001
npx mochawesome-merge "cypress/results/*.json" > mochawesome.json
npx marge mochawesome.json


