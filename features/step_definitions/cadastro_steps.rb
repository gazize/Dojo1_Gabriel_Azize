Dado("que eu esteja na home do site opensource") do
  visit "http://opensource.demo.orangehrmlive.com"
end

Quando("eu logar como administrador") do
  find(:id,'txtUsername').set 'Admin'
  find(:id,'txtPassword').set 'admin'
  click_button('btnLogin')
  
end

E("estiver na aba Candidates") do
  click_link('Recruitment')
  click_link('Candidates')
  click_button('Add')
end

Entao("preencho os dados do novo empregado") do
  find(:id,'addCandidate_firstName').set 'Gabriel' 
  find(:id,'addCandidate_middleName').set 'Tomaz'
  find(:id,'addCandidate_lastName').set 'Azize'
  find(:id,'addCandidate_email').set 'gabrielazize@gmail.com'
  find(:id,'addCandidate_contactNo').set '11912345678'
  #find(:id,'addCandidate_vacancy').select 'PM'
  attach_file('addCandidate[resume]', 'C:\Users\Gabriel Tomaz Azize\Desktop\ORANGEHRM\cucumber.txt')
  find(:id,'addCandidate_keyWords').set 'programador, automatizador, tester, agil'
  find(:id,'addCandidate_comment').set 'nothing to comment'
  #find(:id,'addCandidate_appliedDate').set Time.now.strftime('%Y/%m/%d')
  click_button('btnSave')
  assert_text('Successfully Saved')
end