
Given('I am on the new job page') do
  user = Cliente.create(email: 'abc@abc.com', password:'123456')
  sign_in(user)
  visit(new_user_job_path)
end

Then('I can create a job') do
  Cliente.find(user.id).jobs.create(position: 'Este programa', description: 'debe funcionar')
end