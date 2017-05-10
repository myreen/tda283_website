import CCWF

-------------------------------------------------------------------------
-- * News, lectures and files. Routine updates should mostly happen here.
-------------------------------------------------------------------------

materials = Materials
  { -- Latest news, in order from newest to latest. Can contain markdown.
    newsItems =
      [ "May 9. We have updated the test suite. We experienced some trouble with newer\
        \ Debian based operating systems. They have increased a number of security\
        \ aspects that cause compilation to fail. This can be fixed with an extra flag for\
        \ GCC during linking. If you experience trouble with this, you can give the\
        \ `-g-no-pie` flag to the test suite, which passes it on to GCC."
      , "April 28. No office hours on Thursday 4 May (I am abroad)."
      , "April 26. The deadline of part B has been extended with a week."
      , "April 25. Extra lecture on Friday 28 April, catching up from last week."
      , "April 20. No lecture on Friday 21 April. (lecturer is sick)"
      , "March 20. We will start the course this week on Friday from 13:15 to 15:00. All welcome!"
      , "March 17. Birth of the new course homepage - it now looks *fabulous* on mobile devices!"
      ]

    -- All lectures for the course. These make up the table on the @lectures@
    -- page.
    --
    -- Make sure to put any files mentioned in the list of lecture files
    -- into the @files@ subdirectory before rebuilding the course homepage, to
    -- ensure that they all get included.
  , lectures =
    [ Lecture "March 24" "Introduction, project overview"
        [("new", "lect01-6up.pdf")]
    , Lecture "March 31" "Software Engineering for Compilers"
        [("new", "lect02-6up.pdf"), ("code", "state.tar.gz")]
    , Lecture "April 7"  "LLVM: tools, language"
        [("new", "lect03-6up.pdf")]
    , Lecture "April 25" "Code generation for LLVM"
        [("new", "lect04-6up.pdf"), ("code", "evenodd.ll")]
    , Lecture "April 28" "Project extensions: arrays, dynamic structures, objects"
        [("new", "lect05-6up.pdf")]
    , Lecture "May 2"    "Code generation for x86"
        [("new", "lect06-6up.pdf")]
    , Lecture "May 9"   "Functions"
        [("new", "lect07-6up.pdf")]
    , Lecture "May 16"   "Control flow graphs, data analysis"
        [("old", "lect08-6up.pdf")]
    , Lecture "May 23"   "Guest lecture/project summary"
        [("old", "lect09-6up.pdf"), ("guest", "/guest_lecture_myreen-6up.pdf")]
    ]

    -- Files we provide that are not tied to any particular lecture.
  , miscFiles = ["runtime.ll", "Javalette.cf", "tester.tar.gz"]
  }

----------------------------------------------------------------------------
-- * Course-specific configuration - should only need changing once per year
----------------------------------------------------------------------------

info = Info
  { -- The human-readable name of the course.
    courseName = "Compiler Construction"
    -- The official course code(s).
  , courseCode = "TDA283/DIT300"
    -- The study period in which the course is given.
  , studyPeriod = 4
    -- The year this particular course is given.
  , courseYear = 2017
    -- Name of course responsible, plus email.
    -- This is parameterized to make course handovers easier, since the name
    -- and/or email of the course responsible pops up here and there throughout
    -- the project description and course homepage..
    --
    --  First name is available to templates as @teacher@, full name as
    -- @teacherfull@, email as @teacheremail@, bio URL as @teacherbio@, phone
    -- as @teacherphone@, office as @teacheroffice@ and office hours as
    -- @teacherhours@.
  , teacher = Teacher
      { teacherName   = "Alex Gerdes"
      , teacherEmail  = "alexg \"at\" chalmers.se"
      , teacherBioURL = Just "https://www.chalmers.se/en/staff/Pages/alexg.aspx"
      , teacherPhone  = "+46 31 772 61 54"
      , teacherOffice = Just "EDIT 6479"
      , teacherHours  = Just "Thursdays 13:00--15:00, EDIT 6479"
      }

    -- The examiner of the course, if different from the course responsible.
  , examiner = Just $ Teacher
      { teacherName   = "Magnus Myreen"
      , teacherEmail  = "myreen \"at\" chalmers.se"
      , teacherBioURL = Nothing
      , teacherPhone  = "+46 31 772 16 64"
      , teacherOffice = Just "EDIT 5452"
      , teacherHours  = Nothing
      }

      
    -- Same information as for 'teacher'. All fields of the first assistant
    -- are available to templates the same as for @teacher@, but with the
    -- prefix @assistant@ instead of @teacher@.
    -- The full list of assistants is available as @assistants@.
  , assistants =
      [ Teacher
          { teacherName   = "Anton Ekblad"
          , teacherEmail  = "anton.ekblad \"at\" chalmers.se"
          , teacherPhone  = "+46 31 772 10 28"
          , teacherBioURL = Nothing
          , teacherOffice = Just "EDIT 5463"
          , teacherHours  = Nothing
          }
      ]

    -- URL of the official course syllabus for 2017.
    -- This changes every year: don't forget to update!
    -- Available to templates as @syllabus@.
  , syllabusURL = "https://www.student.chalmers.se/sp/course?course_id=24405"

    -- URL of the Google group for this year's instance. Don't forget to update!
    -- Available to templates as @group@.
  , googleGroupURL = Just "https://groups.google.com/d/forum/compiler-construction-vt17"

    -- URL of the lab submission system used this year, if any.
    -- Don't forget to update!
    -- Available to templates as @submissions@.
  , submissionURL = Just fire

    -- URL of the course's official schedule. Available to templates as
    -- @schedule@.
  , scheduleURL = Just "https://se.timeedit.net/web/chalmers/db1/public/ri1X50gQ2560YvQQ05Z6775Y0Zy6007332Y50Q789.html"

    -- The deadlines for the labs.
    -- Available to templates as @deadline1/2/3/n@.
  , labDeadlines =
      [ "Sunday, April 9 at 23:59"
      , "Sunday, May 7 at 23:59"
      , "Sunday, May 21 at 23:59"
      ]
  }

fire = "https://cc-lp4-17.frs.cse.chalmers.se"

subst = Subst
    [ ("javalette",   "[Javalette](/project#javalette)")
    , ("timeedit",    "[TimeEdit](/schedule)")
    , ("fire",        "[Fire]" ++ parens fire)
    , ("llvmversion", "LLVM-3.8")
    ]
  where
    parens x = "(" ++ x ++ ")"

main = mkWebsite (Website info materials subst)
