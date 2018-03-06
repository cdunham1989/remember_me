feature 'Viewing Memories' do
    scenario 'A user can see their memories' do
        visit('/')
        expect(page).to have_content "Holiday to Mexico"
        expect(page).to have_content "Our Anniversary"
        expect(page).to have_content "Christmas at Home"
    end
end
