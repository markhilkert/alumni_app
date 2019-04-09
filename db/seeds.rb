User.create!([{
                email: "phuoc@gmail.com", 
                password: "password",
                status: "alumni",
                admin: true

              },
              {
                email: "brye@gmail.com", 
                password: "password",
                status: "alumni",
                admin: true
              },
              {
                email: "mike@gmail.com", 
                password: "password",
                status: "alumni",
                admin: true
              },
              {
                email: "leo@gmail.com", 
                password: "password",
                status: "alumni",
                admin: true
              },
              {
                email: "mark@gmail.com", 
                password: "password",
                status: "alumni",
                admin: true
              },
              {
                email: "christian@gmail.com", 
                password: "password",
                status: "alumni",
                admin: true
              }
            ])

Profile.create!([
                  {
                    user_id: 1,
                    first_name: "Phuoc",
                    last_name: "Bui"
                  },
                  {
                    user_id: 2,
                    first_name: "Brye",
                    last_name: "Walker"
                  },
                  {
                    user_id: 3,
                    first_name: "Mike",
                    last_name: "Dessailly"
                  },
                  {
                    user_id: 4,
                    first_name: "Leo",
                    last_name: "Gonzalez"
                  },
                  {
                    user_id: 5,
                    first_name: "Mark",
                    last_name: "Hilkert"
                  },
                  {
                    user_id: 6,
                    first_name: "Christian",
                    last_name: "Solis"
                  }
                ])