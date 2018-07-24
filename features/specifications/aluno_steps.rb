Given /^I am on the login page$/ do
  visit "http://homolog.fund.appprova.com.br/"
  fill_in "user_email", :with => "test@test.com"
  fill_in "user_password", :with => "123456"
  click_button "Entrar"
end


When(/^I click on Simulados$/) do
    link = page.find(:css, 'a[href="/mocks"]').click
#end

#And(/^click on iniciar$/) do
    page.all('.btn-play-simulated')[1].click
#end

#And(/^click on Começar simulado$/) do
    click_on "btn_start_mock"
#end

#When("answer to a question #loop") do
 #   5.times do
   	first('.alternative > div').click

#end

#And(/^answer to a question$/) do
		click_on "btn-simulated-answer-question"
#end

#And(/^click on Responder pergunta$/) do
#end

#And(/^click on Entregar simulado$/) do
#end

#Then(/^the activity will be successfully sent$/) do
  page.has_content?("Criando uma task")
  page.find(:xpath,"//div[1]/ul/p/button[2]")
end

