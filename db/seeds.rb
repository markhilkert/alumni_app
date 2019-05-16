Resource.create!(
                [
                {
                title: "Indeed.com",
                description: "Job hunting website",
                url: "https://www.indeed.com/",
                category: 0
                },
                {
                title: "LinkedIn Jobs",
                description: "Job hunting website",
                url: "https://www.linkedin.com/jobs/",
                category: 0
                },
                {
                title: "ZipRecruiter",
                description: "Job hunting website",
                url: "https://www.ziprecruiter.com/",
                category: 0
                },
                {
                title: "AngelList",
                description: "Job hunting website",
                url: "https://angel.co/",
                category: 0
                },
                {
                title: "Hacker Rank",
                description: "Coding Practice",
                url: "https://www.hackerrank.com/",
                category: 2
                },
                {
                title: "Code Wars",
                description: "Code Wars",
                url: "https://www.codewars.com/",
                category: 2
                }
                ]
                )

Location.create!([
                  {
                    city: "Chicago",
                    state: "Illinois"
                  },
                  { city: "Palo Alto",
                    state: "California"
                  },
                  { city: "Austin",
                    state: "Texas"
                  },
                  { city: "Columbus",
                    state: "Ohio"
                  },
                  { city: "Irvine",
                    state: "California"
                  },
                  { city: "University of Southern California",
                    state: "California"
                  }
                ])

User.create!([{
                email: "phuoc@gmail.com", 
                password: "password",
                password_confirmation: "password",
                status: "alumni",
                admin: true,
                first_name: "Phuoc",
                last_name: "Bui",
                title: "Bro",
                personal_website_url: "https://pnb90.github.io/",
                github_url: "https://github.com/pnb90",
                linkedin_url: "https://www.linkedin.com/in/phuocbui90/",
                location_id: 1

              },
              {
                email: "brye@gmail.com", 
                password: "password",
                password_confirmation: "password",
                status: "alumni",
                admin: true,
                first_name: "Brye",
                last_name: "Walker",
                location_id: 1
              },
              {
                email: "mike@gmail.com", 
                password: "password",
                password_confirmation: "password",
                status: "alumni",
                admin: true,
                first_name: "Mike",
                last_name: "Dessailly",
                location_id: 1
              },
              {
                email: "leo@gmail.com", 
                password: "password",
                password_confirmation: "password",
                status: "alumni",
                admin: true,
                first_name: "Leo",
                last_name: "Gonzalez",
                location_id: 1
              },
              {
                email: "mark.hilkert@gmail.com", 
                title: "Software Engineer", 
                bio: "At a minimum, I write software; but more than that, I work with a team to solve complex problems. Whether I’ve been solving hands-on engineering problems (B.S. chemical engineering), dreaming up abstract ways to model chemical systems using quantum mechanics (M.S. theoretical chemistry), or writing software to model the effect of drug legalization on violent crime rates (J.D.), I’ve always tackled tough problems.", 
                password: "password",
                password_confirmation: "password",
                linkedin_url: "https://www.linkedin.com/in/markhilkert/",
                github_url: "https://www.github.com/markhilkert/",
                personal_website_url: "https://www.github.com/markhilkert/",
                picture_url: "https://d1qb2nb5cznatu.cloudfront.net/users/5874060-large?1554220744",

                status: "alumni",
                admin: true,
                first_name: "Mark",
                last_name: "Hilkert",
                location_id: 1
              },
              {
                email: "christian@gmail.com", 
                password: "password",
                password_confirmation: "password",
                status: "alumni",
                admin: true,
                first_name: "Christian",
                last_name: "Solis",
                location_id: 1
              }
            ])

Skill.create!([
                {
                name: "Vue.js",
                },
                {
                name: "React.js",
                },
                {
                name: "Node.js",
                },
                {
                name: "Ruby",
                },
                {
                name: "Ruby on Rails",
                },
                {
                name: "Git",
                }
                ])

UserSkill.create!([
                {
                user_id: 1,
                skill_id: 1,
                competence: 1,
                years_of_experience: 1
                },
                {
                user_id: 1,
                skill_id: 2,
                competence: 2,
                years_of_experience: 1
                },
                {
                user_id: 1,
                skill_id: 3,
                competence: 0,
                years_of_experience: 1
                },
                {
                user_id: 2,
                skill_id: 1,
                competence: 1,
                years_of_experience: 1
                },
                {
                user_id: 2,
                skill_id: 1,
                competence: 1,
                years_of_experience: 1
                },
                {
                user_id: 5,
                skill_id: 1,
                competence: 1,
                years_of_experience: 1
                },
                {
                user_id: 5,
                skill_id: 2,
                competence: 1,
                years_of_experience: 1
                },
                {
                user_id: 5,
                skill_id: 3,
                competence: 1,
                years_of_experience: 1
                },
                {
                user_id: 5,
                skill_id: 4,
                competence: 1,
                years_of_experience: 1
                },
                {
                user_id: 5,
                skill_id: 5,
                competence: 1,
                years_of_experience: 1
                },
                {
                user_id: 5,
                skill_id: 6,
                competence: 1,
                years_of_experience: 1
                },
                {
                user_id: 2,
                skill_id: 1,
                competence: 1,
                years_of_experience: 1
                }
                ])

Project.create!([
                {
                title: "LynxIn",
                },
                {
                title: "Sleep Coach",
                },
                {
                title: "Rep Set Repeat",
                },
                {
                title: "Tacoholic",
                },
                {
                title: "Chipi Chipi",
                },
                {
                title: "Quadly",
                }
                ])

UserProject.create!([
                {
                user_id: 1,
                project_id: 1
                },
                {
                user_id: 1,
                project_id: 2
                },
                {
                user_id: 1,
                project_id: 3
                },
                {
                user_id: 2,
                project_id: 1
                },
                {
                user_id: 2,
                project_id: 4
                },
                {
                user_id: 5,
                project_id: 1
                },
                {
                user_id: 5,
                project_id: 2
                },
                {
                user_id: 2,
                project_id: 5
                }
                ])



Company.create!([
                {
                name: "Google",
                url: "https://www.google.com"
                },
                {
                name: "Apple",
                url: "https://www.apple.com"
                },
                {
                name: "Amazon",
                url: "https://www.amazon.com"
                },
                {
                name: "Facebook",
                url: "https://www.facebook.com"
                },
                {
                name: "Microsoft",
                url: "https://www.microsoft.com"
                },
                {
                name: "Budlong's Fried Chicken",
                url: "https://www.google.com"
                }
                ])

Job.create!([
                {
                user_id: 1,
                location_id: 1,
                company_id: 1,
                title: "Software Engineer",
                description: "Wrote software"
                },
                {
                user_id: 1,
                location_id: 2,
                company_id: 2,
                title: "Software Developer",
                description: "Developed software"
                },
                {
                user_id: 1,
                location_id: 1,
                company_id: 3,
                title: "Web Engineer",
                description: "Engineered the web"
                },
                {
                user_id: 2,
                location_id: 2,
                company_id: 4,
                title: "DevOps Engineer",
                description: "Deved some ops"
                },
                {
                user_id: 2,
                location_id: 2,
                company_id: 5,
                title: "Software Engineer",
                description: "Honestly I mostly browsed reddit"
                },
                {
                user_id: 2,
                location_id: 1,
                company_id: 1,
                title: "Sanitation Engineer",
                description: "Engineered some poop."
                },
                {
                user_id: 5,
                location_id: 1,
                company_id: 1,
                title: "Software Engineer",
                description: "Wrote software"
                },
                {
                user_id: 5,
                location_id: 1,
                company_id: 2,
                title: "Web Developer",
                description: "Developed some web"
                },
                {
                user_id: 5,
                location_id: 1,
                company_id: 3,
                title: "AI Engineer",
                description: "Built Skynet"
                }
                ])

UserJob.create!([
                {
                user_id: 1,
                job_id: 1,
                start_date: (Time.now - 10.months),
                end_date: (Time.now - 3.months)
                },
                {
                user_id: 1,
                job_id: 2,
                start_date: (Time.now - 11.months),
                end_date: (Time.now - 5.months)
                },
                {
                user_id: 1,
                job_id: 3,
                start_date: (Time.now - 12.months),
                end_date: (Time.now - 4.months)
                },
                {
                user_id: 2,
                job_id: 1,
                start_date: (Time.now - 13.months),
                end_date: (Time.now - 3.months)
                },
                {
                user_id: 2,
                job_id: 4,
                start_date: (Time.now - 14.months),
                end_date: (Time.now - 2.months)
                },
                {
                user_id: 5,
                job_id: 7,
                start_date: (Time.now - 24.months),
                end_date: (Time.now - 12.months)
                },
                {
                user_id: 5,
                job_id: 8,
                start_date: (Time.now - 12.months),
                end_date: (Time.now - 6.months)
                },
                {
                user_id: 5,
                job_id: 9,
                start_date: (Time.now - 6.months)
                },
                {
                user_id: 2,
                job_id: 5,
                start_date: (Time.now - 20.months),
                end_date: (Time.now - 1.months)
                }
                ])

Education.create!([
                {
                location_id: 1,
                school: "Northwestern"
                },
                {
                location_id: 1,
                school: "University of Chicago"
                },
                {
                location_id: 1,
                school: "University of Illinois"
                },
                {
                location_id: 3,
                school: "University of Texas at Austin"
                },
                {
                location_id: 4,
                school: "The Ohio State University"
                },
                {
                location_id: 2,
                school: "Stanford"
                },
                {
                location_id: 5,
                school: "University of California, Irvine"
                },
                {
                location_id: 6,
                school: "University of Southern California"
                }
                ])

UserEducation.create!([
                {
                user_id: 1,
                education_id: 1,
                field: "Software Engineering",
                degree: "Bachelor's",
                graduation_date: Time.now - 2.years
                },
                {
                user_id: 1,
                education_id: 2,
                field: "Theater",
                degree: "Master's",
                graduation_date: Time.now - 3.years
                },
                {
                user_id: 1,
                education_id: 3,
                field: "Chemical Engineering",
                degree: "PhD",
                graduation_date: Time.now - 3.years
                },
                {
                user_id: 2,
                education_id: 4,
                field: "Political Science",
                degree: "Bachelor's",
                graduation_date: Time.now - 4.years
                },
                {
                user_id: 2,
                education_id: 5,
                field: "Economics",
                degree: "Bachelor's",
                graduation_date: Time.now - 3.years
                },
                {
                user_id: 5,
                education_id: 5,
                field: "Chemical Engineering",
                degree: "Bachelor's",
                graduation_date: Date.parse("August 2009")
                },
                {
                user_id: 5,
                education_id: 7,
                field: "Theoretical Chemistry",
                degree: "Master's",
                graduation_date: Date.parse("December 2011")
                },
                {
                user_id: 5,
                education_id: 8,
                field: "Law",
                degree: "Juris Doctor",
                graduation_date: Date.parse("May 2016")
                },
                {
                user_id: 3,
                education_id: 6,
                field: "Mathematics",
                degree: "Bachelor's",
                graduation_date: Time.now - 1.years
                }
                ])

