---
title: About the course
submenu: course_syllabus teachers submissions
menuorder: 1
template: wide
---

About the Course
================

<a name="course_syllabus"></a>

Course Syllabus
---------------

The course has a practical goal: the participants will build a compiler for a
small programming language called \$javalette\$. Javalette is an imperative
language, a subset of C and of Java.

The complete project will include one front end (lexer, parser and type-checker)
and at least one backend, generating LLVM code.  Optional extensions include
source language extensions and a native x86 backend.

To reach this goal, quite a few theories and techniques are necessary: grammars,
lexers, parsers, abstract syntax, type systems, syntax-directed translation,
code analysis, register allocation, optimization, etc.  Many of these techniques
are supported by tools used in all state-of-the-art compiler construction.
Mastering these techniques will help the participants to achieve the practical
goal efficiently and reliably.  The mastery of them is also useful for many
other programming tasks in industry and in academia.

The official syllabus can be found [here]($syllabus$).


<a name="teachers"></a>

Teachers
--------

* **Course responsible**:
    \$if(teacherbio)\$
      [\$teacherfull\$](\$teacherbio\$)
    \$else\$
      \$teacherfull\$
    \$endif\$<br>
    Phone: \$teacherphone\$<br>
    Email: \$teacheremail\$<br>
    \$if(teacheroffice)\$
      Office: \$teacheroffice\$<br>
    \$endif\$
    \$if(teacherhours)\$
      Office hours: \$teacherhours\$
    \$endif\$
\$if(examinerfull)\$
* **Examiner**:
    \$if(examinerbio)\$
      [\$examinerfull\$](\$examinerbio\$)
    \$else\$
      \$examinerfull\$
    \$endif\$<br>
    Phone: \$examinerphone\$<br>
    Email: \$examineremail\$<br>
    \$if(examineroffice)\$
      Office: \$examineroffice\$<br>
    \$endif\$
    \$if(examinerhours)\$
      Office hours: \$examinerhours\$
    \$endif\$
\$endif\$


Assistants
----------

<ul>
\$for(assistants)\$
<li>
  \$if(bio)\$
    [\$full\$](\$bio\$)
  \$else\$
    \$full\$
  \$endif\$<br>
  Email: \$email\$<br>
  Phone: \$phone\$<br>
  \$if(office)\$
    Office: \$office\$<br>
  \$endif\$
  \$if(hours)\$
    Office hours: \$hours\$<br>
  \$endif\$
</li>
\$endfor\$
</ul>


General questions concerning the course, including examination issues (deadline
extensions, etc) should be directed to \$teacher\$. Supervision for the project
is also offered by \$teacher\$ during office hours. The teachers and assistants are
responsible for grading and supervising labs.


<a name="submissions"></a>

Submitting assignments
----------------------

In this course we use the web-based \$fire\$ system for lab
submission. Any web browser should be usable for submissions.

### Registration

When you first come to Fire, you must register in the system. Follow the
instructions on screen. Your login id in the system is your email address, but
you must also give your name and personnummer, so that we can report your result
when you have finished all your assignments.  Note that an email is sent to you
during registration; registration is completed by following a link included in
that mail.  This email address is also used to send you an email when your
submissions have been graded.

After registration, you will come to your \$fire\$ home page, where you submit
assignments. On the top of this page you are asked to join a group. Even if you
do your project alone you must create a (one-person) group.  Only groups can
submit.

### Submitting

The assignments are linked from your \$fire\$ home page. To submit an
assignment, click on the link for that assignment and follow instructions. Two
things should be noted:

* Your solution will include several files, in different directories. You *must*
  follow the [instructions](/project#submission_format) in the lab description
  on where to place files and how to name them.
* Submitting an assignment is a two-step procedure. First, you upload a file
  with your solution: when you click the Upload button, a file chooser window is
  opened allowing you to select a file.  The second step is to actually submit
  your solution, by clicking the *Submit* button. **It is not enough to only
  upload; you must also submit!**

[Go to the submission system](\$submissions\$).
