Dado("que eu esteja logado como administrador") do
  visit "http://opensource.demo.orangehrmlive.com"
  find(:id,'txtUsername').set 'Admin'
  find(:id,'txtPassword').set 'admin'
  click_button('btnLogin')
end

Quando("clicar no nome do empregado contido na lista") do
  click_link('Recruitment')
  click_link('Candidates')
  find(:xpath, '//*[@id="resultTable"]/tbody/tr[1]/td[3]/a').click
end

E ("editar dados do empregado") do
  click_button('Edit')
  find(:id,'addCandidate_firstName').set 'Alterado' 
  find(:id,'addCandidate_middleName').set 'Com'
  find(:id,'addCandidate_lastName').set 'Sucesso2'
  click_button('Save')
end

Entao("o sistema deverá permitir a alteracao dos dados") do
  assert_text('Successfully Saved')
end