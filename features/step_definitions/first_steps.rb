Given(/^I am on Home page$/) do
    visit 'http://www.testmunk.com'
    find(:css, ".sign-up-btn")
    page.should have_css('.sign-up-btn')
end

When(/^I click Sign Up button$/) do
    find(:css, ".sign-up-btn").click
end

Then(/^I fill registration fields$/) do
    random_number = Array.new(7){[*'0'..'9', *'a'..'z', *'A'..'Z'].sample}.join
    find('#name').set('Kateryna')
    find('#email').set("kateryna+" + random_number + "@testmunk.com")
    find('#password').set('Passw0rd')
    find('#organisation-field').set(random_number)
end

And(/^Tap on Sign Up button$/) do
    find(:css, "#signup-submit").click
end

When(/^I am on Dashboard Page$/) do
    expect(find('#breadcrumb')).to have_content('Dashboard')
end