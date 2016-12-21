json.extract! mybudget, :id, :budgetname, :amount, :year, :created_at, :updated_at
json.url mybudget_url(mybudget, format: :json)