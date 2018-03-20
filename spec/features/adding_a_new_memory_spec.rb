feature 'Adding a new memory' do
    scenario 'A user can add a memory to Remember Me' do
        visit('/add-a-new-memory')
        fill_in('title', with: 'Day at the Beach')
        fill_in('description', with: 'A day at the beach in Brighton with friends')
        click_button('Submit')

        expect(page).to have_content 'Day at the Beach'
    end

    scenario 'The added memory must have a title' do
        visit('/add-a-new-memory')
        fill_in('title', with: "")
        fill_in('description', with: 'A memory with no title')
        click_button('Submit')

        expect(page).to have_content "You must give your memory a title and description."
    end
end