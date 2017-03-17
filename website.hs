import CCWF

-------------------------------------------------------------------------
-- * News, lectures and files. Routine updates should mostly happen here.
-------------------------------------------------------------------------

materials = Materials
  { -- Latest news, in order from newest to latest. Can contain markdown.
    newsItems =
      [ "March 17. Birth of the new course homepage - it now looks *fabulous* on mobile devices!"
      ]

    -- All lectures for the course. These make up the table on the @lectures@
    -- page.
    --
    -- Make sure to put any files mentioned in the list of lecture files
    -- into the @files@ subdirectory before rebuilding the course homepage, to
    -- ensure that they all get included.
  , lectures =
    [ Lecture "March 31" "Introduction, project overview"
        [("old", "lect01-6up.pdf")]
    , Lecture "April 7" "Software Engineering for Compilers"
        [("old", "lect02-6up.pdf"), ("code", "state.tar.gz")]
    , Lecture "April 21" "LLVM: tools, language"
        [("old", "lect03-6up.pdf")]
    , Lecture "April 25" "Code generation for LLVM"
        [("old", "lect04-6up.pdf"), ("code", "evenodd.ll")]
    , Lecture "May 2"    "Project extensions: arrays, dynamic structures, objects"
        [("old", "lect05-6up.pdf")]
    , Lecture "May 9"    "Code generation for x86"
        [("old", "lect06-6up.pdf")]
    , Lecture "May 12"   "Functions"
        [("old", "lect07-6up.pdf")]
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
      , teacherHours  = Just "TBA"
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
  , submissionURL = Just "https://cc-lp4-17.frs.cse.chalmers.se"

    -- URL of the course's official schedule. Available to templates as
    -- @schedule@.
  , scheduleURL = Just "https://se.timeedit.net/web/chalmers/db1/public/ri1X50gQ2560YvQQ05Z6775Y0Zy6007332Y50Q789.html"

    -- The deadlines for the labs.
    -- Available to templates as @deadline1/2/3/n@.
  , labDeadlines =
      [ "Sunday, April 8 at 23:59"
      , "Sunday, April 20 at 23:59"
      , "Sunday, May 21 at 23:59"
      ]
  }

main = mkWebsite (Website info materials)
