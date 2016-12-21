json.extract! student, :id, :name, :icno, :telno, :created_at, :updated_at
json.url student_url(student, format: :json)