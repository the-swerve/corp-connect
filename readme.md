
# CorpConnect

*Find your place in the Peace Corps*

This application matches volunteers with worldwide opportunities.

The goal is to provide enough filters and criteria for both volunteers and
Peace Corps opportunities that we can automatically and intelligently match
qualified, committed applicants to their ideal opportunities.

## Technical Overview

This application was built in Ruby on Rails (Ruby 2.0.0 and Rails 3.2).

It uses a PostgreSQL database and is hosted on Heroku (corpconnect.herokuapp.com).

User authentication was set up using the Devise gem.

The database schema has largely been set up, which is described below.

## Heroku

CorpConnect's Heroku address is corpconnect.herokuapp.com and was set up by jayrbolton@gmail.com.

### Resources

* https://devcenter.heroku.com/articles/getting-started-with-rails3
* https://devcenter.heroku.com/articles/heroku-postgresql

## Data Schema

The database schema is fairly straightforward and revolves around user accounts (which can be both Volunteers and Recruiters) and their opportunities.

* Users
	* Can be either a volunteer or recruiter
	* Has profile data (first_name, last_name, and so on)
	* Has many applications
	* Has many opportunity_postings
* Opportunities
	* Has page data (name, pictures, skills, sector)
* Interests, skills, categories, and their join tables
	* These tables describe various metadata on opportunities and volunteers

### Database next steps

Create Application tables (for volunteers to apply to opportunities).

Separate Users out into Volunteers and Recruiters. (Recruiters don't need all the profile data that Volunteers do).

## Next Steps

* Code out the remaining views and their actions:
	* The Opportunity Profile/Page
	* The Recruiters' posted opportunities listing
	* The Recruiters' applicant pool pages
	* The Volunteers' profiles
	* Applications/informational requests/bookmarking of opportunities.
	* The user flow for Recruiters to move opportunities through their various stages.

### Image uploads

I recommend using the Paperclip gem along with Amazon S3 to do image uploads.

### LinkedIn integration

It would be hugely advantageous to use LinkedIn's OAuth services to integrate
their LinkedIn resumes with skills and recommendations to their Peace Corps
profile.
