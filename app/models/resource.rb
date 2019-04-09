class Resource < ApplicationRecord
  enum category: {job_websites: 0, job_informational: 1, coding_practice: 2, cheat_sheets: 3}
end
