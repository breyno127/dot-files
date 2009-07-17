;;; planner-autoloads.el --- autoloads for Planner
;;
;;; Code:

;;;### (autoloads (planner-calendar-show planner-calendar-goto planner-search-notes
;;;;;;  planner-search-notes-with-body planner-create-task-from-buffer
;;;;;;  planner-create-low-priority-task-from-buffer planner-create-medium-priority-task-from-buffer
;;;;;;  planner-create-high-priority-task-from-buffer planner-goto-next-daily-page
;;;;;;  planner-goto-previous-daily-page planner-goto-tomorrow planner-goto-yesterday
;;;;;;  planner-goto-most-recent planner-goto-today planner-show
;;;;;;  planner-goto-plan-page planner-goto plan planner-create-note
;;;;;;  planner-resolve-position-url planner-browse-position-url
;;;;;;  planner-annotation-from-file-with-position planner-annotation-as-kill
;;;;;;  planner-mode) "planner" "planner.el" (17945 33891))
;;; Generated autoloads from planner.el

(autoload (quote planner-mode) "planner" "\
A personal information manager for Emacs.
\\{planner-mode-map}" t nil)

(autoload (quote planner-annotation-as-kill) "planner" "\
Copy the current annotation into the kill ring.
When called with a prefix argument, prompt for the link display name." t nil)

(autoload (quote planner-annotation-from-file-with-position) "planner" "\
Return the filename and cursor position of the current buffer.
If `planner-annotation-use-relative-file' is t or a function that
returns non-nil, a relative link is used instead. If
`planner-annotation-strip-directory' is non-nil, the directory is
stripped from the link description." nil nil)

(autoload (quote planner-browse-position-url) "planner" "\
If this is a position URL, jump to it." nil nil)

(autoload (quote planner-resolve-position-url) "planner" "\
Replace ID with the blog, web or e-mail address of the BBDB record." nil nil)

(autoload (quote planner-create-note) "planner" "\
Create a note to be remembered in PAGE (today if PAGE is nil).
If `planner-reverse-chronological-notes' is non-nil, create the
note at the beginning of the notes section; otherwise, add it to
the end.  Position point after the anchor." t nil)

(autoload (quote plan) "planner" "\
Start your planning for the day, carrying unfinished tasks forward.

If FORCE-DAYS is a positive integer, search that many days in the past
for unfinished tasks.
If FORCE-DAYS is 0 or t, scan all days.
If FORCE-DAYS is nil, use the value of `planner-carry-tasks-forward'
instead, except t means scan only yesterday." t nil)

(autoload (quote planner-goto) "planner" "\
Jump to the planning page for DATE.
If no page for DATE exists and JUST-SHOW is non-nil, don't create
a new page - simply return nil." t nil)

(autoload (quote planner-goto-plan-page) "planner" "\
Opens PAGE in the the `planner-project' wiki.
Use `planner-goto' if you want fancy calendar completion." t nil)

(autoload (quote planner-show) "planner" "\
Show the plan page for DATE in another window, but don't select it.
If no page for DATE exists, return nil." t nil)

(autoload (quote planner-goto-today) "planner" "\
Jump to the planning page for today." t nil)

(autoload (quote planner-goto-most-recent) "planner" "\
Go to the most recent day with planning info." t nil)

(autoload (quote planner-goto-yesterday) "planner" "\
Goto the planner page DAYS before the currently displayed date.
If DAYS is nil, goes to the day immediately before the currently
displayed date.  If the current buffer is not a daily planner
page, calculates date based on today." t nil)

(autoload (quote planner-goto-tomorrow) "planner" "\
Goto the planner page DAYS after the currently displayed date.
If DAYS is nil, goes to the day immediately after the currently
displayed date.  If the current buffer is not a daily planner
page, calculates date based on today." t nil)

(autoload (quote planner-goto-previous-daily-page) "planner" "\
Goto the last plan page before the current date.
The current date is taken from the day page in the current
buffer, or today if the current buffer is not a planner page.
Does not create pages if they do not yet exist." t nil)

(autoload (quote planner-goto-next-daily-page) "planner" "\
Goto the first plan page after the current date.
The current date is taken from the day page in the current
buffer, or today if the current buffer is not a planner page.
Does not create pages if they do not yet exist." t nil)

(autoload (quote planner-create-high-priority-task-from-buffer) "planner" "\
Create a high-priority task based on this buffer.
Do not use this in LISP programs. Instead, set the value of
`planner-default-task-priority' and call `planner-create-task' or
`planner-create-task-from-buffer'." t nil)

(autoload (quote planner-create-medium-priority-task-from-buffer) "planner" "\
Create a high-priority task based on this buffer.
Do not use this in LISP programs. Instead, set the value of
`planner-default-task-priority' and call `planner-create-task' or
`planner-create-task-from-buffer'." t nil)

(autoload (quote planner-create-low-priority-task-from-buffer) "planner" "\
Create a high-priority task based on this buffer.
Do not use this in LISP programs. Instead, set the value of
`planner-default-task-priority' and call `planner-create-task' or
`planner-create-task-from-buffer'." t nil)

(autoload (quote planner-create-task-from-buffer) "planner" "\
Create a new task named TITLE on DATE based on the current buffer.
With a prefix, do not prompt for PLAN-PAGE. The task is
associated with PLAN-PAGE if non-nil. If STATUS is non-nil, use
that as the status for the task. Otherwise, use
`planner-default-task-status'. See `planner-create-task' for more
information." t nil)

(autoload (quote planner-search-notes-with-body) "planner" "\
Return a buffer with all the notes returned by the query for REGEXP.
If called with a prefix argument, prompt for LIMIT and search days on
or after LIMIT. Display the body of the notes as well." t nil)

(autoload (quote planner-search-notes) "planner" "\
Return a buffer with all the notes returned by the query for REGEXP.
If called with a prefix argument, prompt for LIMIT and search days on
or after LIMIT. If INCLUDE-BODY is non-nil, return the body as well." t nil)

(autoload (quote planner-calendar-goto) "planner" "\
Goto the plan page corresponding to the calendar date." t nil)

(autoload (quote planner-calendar-show) "planner" "\
Show the plan page for the calendar date under point in another window." t nil)

;;;***

;;;### (autoloads (planner-appt-use-tasks-and-schedule planner-appt-use-schedule
;;;;;;  planner-appt-use-tasks planner-appt-insinuate planner-appt-insinuate-if-today
;;;;;;  planner-appt-update) "planner-appt" "planner-appt.el" (17584
;;;;;;  1987))
;;; Generated autoloads from planner-appt.el

(autoload (quote planner-appt-update) "planner-appt" "\
Update the appointments on the current page." t nil)

(autoload (quote planner-appt-insinuate-if-today) "planner-appt" nil nil nil)

(autoload (quote planner-appt-insinuate) "planner-appt" "\
Insinuate appointment alerting into planner mode.
Appointment methods should be set up first using one of:
  `planner-appt-use-tasks'
  `planner-appt-use-schedule'
  `planner-appt-use-tasks-and-schedule'." nil nil)

(autoload (quote planner-appt-use-tasks) "planner-appt" "\
Use tasks to derive appointment alerts." nil nil)

(autoload (quote planner-appt-use-schedule) "planner-appt" "\
Use the schedule to derive appointment alerts." nil nil)

(autoload (quote planner-appt-use-tasks-and-schedule) "planner-appt" "\
Use both tasks and the schedule to derive appointment alerts." nil nil)

;;;***

;;;### (autoloads (planner-bbdb-resolve-url planner-bbdb-browse-url
;;;;;;  planner-bbdb-annotation-from-bbdb) "planner-bbdb" "planner-bbdb.el"
;;;;;;  (17945 33891))
;;; Generated autoloads from planner-bbdb.el

(autoload (quote planner-bbdb-annotation-from-bbdb) "planner-bbdb" "\
If called from a bbdb buffer, return an annotation.
Suitable for use in `planner-annotation-functions'." nil nil)

(autoload (quote planner-bbdb-browse-url) "planner-bbdb" "\
If this is a BBDB URL, jump to it." nil nil)

(autoload (quote planner-bbdb-resolve-url) "planner-bbdb" "\
Replace ID with the blog, web or e-mail address of the BBDB record." nil nil)

;;;***

;;;### (autoloads (planner-bibtex-browse-url planner-bibtex-annotation-old
;;;;;;  planner-bibtex-annotation-new) "planner-bibtex" "planner-bibtex.el"
;;;;;;  (17559 18506))
;;; Generated autoloads from planner-bibtex.el

(autoload (quote planner-bibtex-annotation-new) "planner-bibtex" "\
Return an annotation for the current bibtex entry." nil nil)

(autoload (quote planner-bibtex-annotation-old) "planner-bibtex" "\
Return the filename on the current line in dired." nil nil)

(autoload (quote planner-bibtex-browse-url) "planner-bibtex" "\
If this is a Bibtex URL, jump to it." nil nil)

;;;***

;;;### (autoloads (planner-bookmark-browse-url planner-bookmark-annotation-from-bookmark)
;;;;;;  "planner-bookmark" "planner-bookmark.el" (17559 18503))
;;; Generated autoloads from planner-bookmark.el

(autoload (quote planner-bookmark-annotation-from-bookmark) "planner-bookmark" "\
If called from a bookmark buffer, return an annotation.
Suitable for use in `planner-annotation-functions'." nil nil)

(autoload (quote planner-bookmark-browse-url) "planner-bookmark" "\
If this is a bookmark URL, jump to it." nil nil)

;;;***

;;;### (autoloads (planner-cyclic-create-tasks-maybe) "planner-cyclic"
;;;;;;  "planner-cyclic.el" (17945 33891))
;;; Generated autoloads from planner-cyclic.el

(autoload (quote planner-cyclic-create-tasks-maybe) "planner-cyclic" "\
Maybe create cyclic tasks.
This will only create tasks for future dates or today." t nil)

;;;***

;;;### (autoloads (planner-deadline-remove planner-deadline-change
;;;;;;  planner-deadline-update) "planner-deadline" "planner-deadline.el"
;;;;;;  (17945 33891))
;;; Generated autoloads from planner-deadline.el

(autoload (quote planner-deadline-update) "planner-deadline" "\
Replace the text for all tasks with deadlines.
By default, deadlines are of the form {{Deadline: yyyy.mm.dd}}.
See `planner-deadline-regexp' for details." t nil)

(autoload (quote planner-deadline-change) "planner-deadline" "\
Change the deadline of current task to DATE.
If DATE is nil, prompt for it." t nil)

(defalias (quote planner-deadline-add) (quote planner-deadline-change))

(autoload (quote planner-deadline-remove) "planner-deadline" "\
Remove the deadline of the current task." t nil)

;;;***

;;;### (autoloads (planner-diary-add-entry planner-diary-insinuate
;;;;;;  planner-diary-show-day-plan-or-diary planner-diary-insert-all-diaries-maybe
;;;;;;  planner-diary-insert-all-diaries planner-diary-update-section)
;;;;;;  "planner-diary" "planner-diary.el" (17945 33891))
;;; Generated autoloads from planner-diary.el

(autoload (quote planner-diary-update-section) "planner-diary" "\
Update FILE's existing section TITLE by replacing existing text with TEXT.
If optional arg FORCE is non-nil, update the section even if it doesn't exist,
i.e. insert TITLE followed by TEXT at the top of the buffer." nil nil)

(autoload (quote planner-diary-insert-all-diaries) "planner-diary" "\
Update all diary sections in a day plan file.
If FORCE is non-nil, insert a diary section even if there is no section header.
Inserts only diaries if the corresponding `planner-diary-use-*' variable is t." t nil)

(autoload (quote planner-diary-insert-all-diaries-maybe) "planner-diary" "\
Update all diary sections in a day plan file.
If the current day is in the past and FORCE is nil, don't do anything.
If FORCE is non-nil, insert a diary section even if there is no section header.
Inserts only diaries if the corresponding `planner-diary-use-*' variable is t." t nil)

(autoload (quote planner-diary-show-day-plan-or-diary) "planner-diary" "\
Show the day plan or diary entries for the date under point in calendar.
Add this to `calendar-move-hook' if you want to use it.  In that case you
should also `remove-hook' `planner-calendar-show' from `calendar-move-hook'." t nil)

(autoload (quote planner-diary-insinuate) "planner-diary" "\
Hook Diary into Planner.
Automatically insert and update a Diary section in day plan files.
This adds a new key binding to `planner-mode-map':
C-cC-e updates the diary sections." nil nil)

(defalias (quote planner-insinuate-diary) (quote planner-diary-insinuate))

(autoload (quote planner-diary-add-entry) "planner-diary" "\
Prompt for a diary entry to add to `diary-file' on DATE.
Uses `planner-annotation-functions' to make hyperlinks.
TIME and TEXT are used in the description." t nil)

;;;***

;;;### (autoloads (planner-erc-browse-url planner-erc-annotation-from-erc)
;;;;;;  "planner-erc" "planner-erc.el" (17945 33891))
;;; Generated autoloads from planner-erc.el

(autoload (quote planner-erc-annotation-from-erc) "planner-erc" "\
Return an annotation for the current line.
This function can be added to `planner-annotation-functions'." nil nil)

(autoload (quote planner-erc-browse-url) "planner-erc" "\
If this is an IRC URL, jump to it." nil nil)

;;;***

;;;### (autoloads (planner-export-diary planner-export-diary-setup
;;;;;;  planner-export-diary-future) "planner-export-diary" "planner-export-diary.el"
;;;;;;  (17945 33891))
;;; Generated autoloads from planner-export-diary.el

(autoload (quote planner-export-diary-future) "planner-export-diary" "\
Exports only `planner-export-number-of-days' days of entries.
This function can be put into your `after-save-hook'." t nil)

(autoload (quote planner-export-diary-setup) "planner-export-diary" "\
Add `planner-export-diary-future' to `after-save-hook' in planner buffers.
You can add this function to `planner-mode-hook'." nil nil)

(autoload (quote planner-export-diary) "planner-export-diary" "\
Exports all the schedules or the ones from FROM to TO (inclusive)." t nil)

;;;***

;;;### (autoloads (planner-gnats-browse-url planner-gnats-annotation-from-gnats)
;;;;;;  "planner-gnats" "planner-gnats.el" (17945 33891))
;;; Generated autoloads from planner-gnats.el

(autoload (quote planner-gnats-annotation-from-gnats) "planner-gnats" "\
If called from gnats-edit or gnats-view buffer, return an annotation.
Suitable for use in `planner-annotation-functions'." nil nil)

(autoload (quote planner-gnats-browse-url) "planner-gnats" "\
If this is a Gnats URL, view the pr (view-pr)." nil nil)

;;;***

;;;### (autoloads (planner-gnus-browse-url planner-gnus-annotation
;;;;;;  planner-gnus-insinuate) "planner-gnus" "planner-gnus.el"
;;;;;;  (17834 32191))
;;; Generated autoloads from planner-gnus.el

(autoload (quote planner-gnus-insinuate) "planner-gnus" "\
Hook Planner into Gnus.

Adds special planner keybindings to the variable
`gnus-summary-article-map'. From a summary or article buffer, you
can type C-c C-t to call planner-create-task-from-buffer." nil nil)

(autoload (quote planner-gnus-annotation) "planner-gnus" "\
Return an annotation from a Gnus summary or message buffer.
Suitable for use in `planner-annotation-functions'. If you
include this, you can omit `planner-gnus-annotation-from-summary'
and `planner-gnus-annotation-from-message'." nil nil)

(autoload (quote planner-gnus-browse-url) "planner-gnus" "\
If this is a Gnus URL, jump to it." nil nil)

;;;***

;;;### (autoloads (planner-id-setup planner-id-update-tasks-maybe
;;;;;;  planner-id-markup planner-id-add-task-id-maybe planner-id-jump-to-linked-task
;;;;;;  planner-id-find-task) "planner-id" "planner-id.el" (17945
;;;;;;  33891))
;;; Generated autoloads from planner-id.el

(autoload (quote planner-id-find-task) "planner-id" "\
Find task described by TASK-INFO. If POINT is non-nil, start from there.
If task is found, move point to line beginning and return non-nil.
If task is not found, leave point at POINT or the start of the buffer
and return nil." nil nil)

(autoload (quote planner-id-jump-to-linked-task) "planner-id" "\
Display the linked task page.
If INFO is specified, follow that task instead." t nil)

(autoload (quote planner-id-add-task-id-maybe) "planner-id" "\
Add task ID if `planner-id-add-task-id-flag' is non-nil." nil nil)

(autoload (quote planner-id-markup) "planner-id" "\
Highlight IDs as unobtrusive, clickable text from BEG to END.
VERBOSE is ignored." nil nil)

(autoload (quote planner-id-update-tasks-maybe) "planner-id" "\
Update tasks depending on the value of `planner-id-update-automatically'." nil nil)

(autoload (quote planner-id-setup) "planner-id" "\
Hook into `planner-mode'." nil nil)

;;;***

;;;### (autoloads (planner-ledger-insert-maybe) "planner-ledger"
;;;;;;  "planner-ledger.el" (17559 18503))
;;; Generated autoloads from planner-ledger.el

(autoload (quote planner-ledger-insert-maybe) "planner-ledger" "\
Maybe insert ledger sections into a planner page." t nil)

;;;***

;;;### (autoloads (planner-lisp-browse-url) "planner-lisp" "planner-lisp.el"
;;;;;;  (17945 33891))
;;; Generated autoloads from planner-lisp.el

(autoload (quote planner-lisp-browse-url) "planner-lisp" "\
If this is a LISP URL, evaluate it." nil nil)

;;;***

;;;### (autoloads (planner-log-edit-add-note) "planner-log-edit"
;;;;;;  "planner-log-edit.el" (17559 18503))
;;; Generated autoloads from planner-log-edit.el

(autoload (quote planner-log-edit-add-note) "planner-log-edit" "\
Add a note describing the commit to the current planner page." nil nil)

;;;***

;;;### (autoloads (planner-mhe-browse-url planner-mhe-annotation)
;;;;;;  "planner-mhe" "planner-mhe.el" (17743 16367))
;;; Generated autoloads from planner-mhe.el

(autoload (quote planner-mhe-annotation) "planner-mhe" "\
If called from a MH-E folder or message buffer, return an annotation.
Suitable for use in `planner-annotation-functions'." nil nil)

(autoload (quote planner-mhe-browse-url) "planner-mhe" "\
If this is a MH-E URL, jump to it." nil nil)

;;;***

;;;### (autoloads (planner-multi-remove-task-from-pool) "planner-multi"
;;;;;;  "planner-multi.el" (17559 18503))
;;; Generated autoloads from planner-multi.el

(autoload (quote planner-multi-remove-task-from-pool) "planner-multi" "\
Remove completed tasks from `planner-multi-copy-tasks-to-page' if that still leaves them linked." nil nil)

;;;***

;;;### (autoloads (planner-notes-index-years planner-notes-index-months
;;;;;;  planner-notes-index-weeks planner-notes-index-days planner-notes-index
;;;;;;  planner-notes-index-month-table-tag planner-notes-index-tag)
;;;;;;  "planner-notes-index" "planner-notes-index.el" (17945 33891))
;;; Generated autoloads from planner-notes-index.el

(autoload (quote planner-notes-index-tag) "planner-notes-index" "\
Mark up planner-notes-index tags.

Tags can be of the form:

  <planner-notes-index page=\"2004.03.02\">
  <planner-notes-index from=\"2004.03.01\" to=\"2004.03.31\">
  <planner-notes-index limit=\"10\">" nil nil)

(autoload (quote planner-notes-index-month-table-tag) "planner-notes-index" "\
Mark up a month note index.  Tag is from BEG to END.
ATTRS is a list of attributes. \"Month\" is a yyyy.mm
 string (default: current month). \"Limit\" is the maximum number
 of items per day (default: all).

Examples:
<planner-notes-index-month-table month=\"2004.02\">
<planner-notes-index-month-table month=\"2004.02\" limit=\"4\">" nil nil)

(autoload (quote planner-notes-index) "planner-notes-index" "\
Display a clickable notes index.
If called from a Lisp program, display only dates between FROM
and TO. With a prefix arg LIMIT, display only that number of
entries." t nil)

(autoload (quote planner-notes-index-days) "planner-notes-index" "\
Display an index of notes posted over the past few DAYS.
The list ends with the day of the current buffer or `planner-today'." t nil)

(autoload (quote planner-notes-index-weeks) "planner-notes-index" "\
Display an index of notes posted over the past few WEEKS.
The list ends with the week of the current buffer or `planner-today'.
Weeks start from Sunday." t nil)

(autoload (quote planner-notes-index-months) "planner-notes-index" "\
Display an index of notes posted over the past few MONTHS.
The list ends with the month of the current buffer or `planner-today'." t nil)

(autoload (quote planner-notes-index-years) "planner-notes-index" "\
Display an index of notes posted over the past few YEARS.
The current year is included." t nil)

;;;***

;;;### (autoloads (planner-psvn-log-edit-add-note planner-psvn-browse-url
;;;;;;  planner-annotation-from-psvn) "planner-psvn" "planner-psvn.el"
;;;;;;  (17559 18505))
;;; Generated autoloads from planner-psvn.el

(autoload (quote planner-annotation-from-psvn) "planner-psvn" "\
If called from a psvn  *svn-log-view* buffer, return an annotation.
Suitable for use in `planner-annotation-functions'." nil nil)

(autoload (quote planner-psvn-browse-url) "planner-psvn" "\
If this is a psvn url, handle it." nil nil)

(autoload (quote planner-psvn-log-edit-add-note) "planner-psvn" "\
Add a note describing the commit via psvn to the current planner page." nil nil)

;;;***

;;;### (autoloads (planner-rank-update-all planner-rank-update-current-task
;;;;;;  planner-rank-change planner-sort-tasks-by-urgency planner-sort-tasks-by-importance
;;;;;;  planner-sort-tasks-by-rank) "planner-rank" "planner-rank.el"
;;;;;;  (17559 18503))
;;; Generated autoloads from planner-rank.el

(autoload (quote planner-sort-tasks-by-rank) "planner-rank" "\
Sort tasks by status (_PDXC), priority (ABC), and rank.
Suitable for `planner-sort-tasks-key-function'" nil nil)

(autoload (quote planner-sort-tasks-by-importance) "planner-rank" "\
Sort tasks by status (_PDXC), priority (ABC), and importance.
Suitable for `planner-sort-tasks-key-function'" nil nil)

(autoload (quote planner-sort-tasks-by-urgency) "planner-rank" "\
Sort tasks by status (_PDXC), priority (ABC), and urgency.
Suitable for `planner-sort-tasks-key-function'" nil nil)

(autoload (quote planner-rank-change) "planner-rank" "\
Change the IMPORTANCE and URGENCY of the current task.
If there's deadline available, calculate urgency instead of asking
the user." t nil)

(autoload (quote planner-rank-update-current-task) "planner-rank" "\
Re-calculate rank for the current task." t nil)

(autoload (quote planner-rank-update-all) "planner-rank" "\
Re-calculate rank for all tasks in the current page." t nil)

;;;***

;;;### (autoloads (planner-rdf-publish-index planner-rdf-publish-file)
;;;;;;  "planner-rdf" "planner-rdf.el" (17559 18506))
;;; Generated autoloads from planner-rdf.el

(autoload (quote planner-rdf-publish-file) "planner-rdf" "\
Publish the file in RDF format, if called by PlannerMode.
Designed to be called via `muse-after-publish-hook'.
Non-Planner files, matching `muse-image-regexp' will be treated
differently. Currently they are simply ignored." t nil)

(autoload (quote planner-rdf-publish-index) "planner-rdf" "\
Create an index for the .rdf files.
Will be called via `muse-after-publish-hook'.
Creates index.rdf, a rdf:bag, with all existing .rdf files as
items." t nil)

;;;***

;;;### (autoloads (planner-registry-initialize) "planner-registry"
;;;;;;  "planner-registry.el" (17562 4376))
;;; Generated autoloads from planner-registry.el

(autoload (quote planner-registry-initialize) "planner-registry" "\
Set `planner-registry-alist' from `planner-registry-file'.
If `planner-registry-file' doesn't exist, create it.
If FROM-SCRATCH is non-nil, make the registry from scratch." t nil)

;;;***

;;;### (autoloads (planner-report-generate) "planner-report" "planner-report.el"
;;;;;;  (17945 33891))
;;; Generated autoloads from planner-report.el

(autoload (quote planner-report-generate) "planner-report" "\
Generate a status report spanning a period from BEGIN to END.
BEGIN and END are in the format YYYY.MM.DD." t nil)

;;;***

;;;### (autoloads (planner-rmail-browse-url planner-rmail-annotation-from-mail)
;;;;;;  "planner-rmail" "planner-rmail.el" (17945 33891))
;;; Generated autoloads from planner-rmail.el

(autoload (quote planner-rmail-annotation-from-mail) "planner-rmail" "\
Return an annotation for the current message.
This function can be added to `planner-annotation-functions'." nil nil)

(autoload (quote planner-rmail-browse-url) "planner-rmail" "\
If this is an RMAIL URL, jump to it." nil nil)

;;;***

;;;### (autoloads (planner-rss-add-note) "planner-rss" "planner-rss.el"
;;;;;;  (17945 33891))
;;; Generated autoloads from planner-rss.el

(autoload (quote planner-rss-add-note) "planner-rss" "\
Export the current note using `planner-rss-add-item'.
If FEED is non-nil, add the note to the specified feed only.
Call with the interactive prefix in order to be prompted for FEED." t nil)

;;;***

;;;### (autoloads (planner-schedule-show-end-project) "planner-schedule"
;;;;;;  "planner-schedule.el" (17945 33891))
;;; Generated autoloads from planner-schedule.el

(autoload (quote planner-schedule-show-end-project) "planner-schedule" "\
Display the estimated project completion time." t nil)

;;;***

;;;### (autoloads (planner-tasks-overview-show-summary planner-tasks-overview-jump
;;;;;;  planner-tasks-overview-jump-other-window planner-tasks-overview)
;;;;;;  "planner-tasks-overview" "planner-tasks-overview.el" (17945
;;;;;;  33891))
;;; Generated autoloads from planner-tasks-overview.el

(autoload (quote planner-tasks-overview) "planner-tasks-overview" "\
Display a task overview from START to END." t nil)

(autoload (quote planner-tasks-overview-jump-other-window) "planner-tasks-overview" "\
Display the task under point in a different window." t nil)

(autoload (quote planner-tasks-overview-jump) "planner-tasks-overview" "\
Display the task under point." t nil)

(autoload (quote planner-tasks-overview-show-summary) "planner-tasks-overview" "\
Count unscheduled, scheduled, and completed tasks for FILE-LIST.
If called with an interactive prefix, prompt for the page(s) to
display. planner-multi is required for multiple pages." t nil)

;;;***

;;;### (autoloads (planner-colors-timeclock-report-tag) "planner-timeclock"
;;;;;;  "planner-timeclock.el" (17945 33891))
;;; Generated autoloads from planner-timeclock.el

(autoload (quote planner-colors-timeclock-report-tag) "planner-timeclock" "\
Replace the region BEG to END with a timeclock report, colorizing
the result." nil nil)

;;;***

;;;### (autoloads (planner-timeclock-summary-show-2 planner-timeclock-summary-show-range-filter
;;;;;;  planner-timeclock-summary-show-filter planner-timeclock-summary-show
;;;;;;  planner-timeclock-summary-update planner-timeclock-summary-insinuate)
;;;;;;  "planner-timeclock-summary" "planner-timeclock-summary.el"
;;;;;;  (17559 18503))
;;; Generated autoloads from planner-timeclock-summary.el

(autoload (quote planner-timeclock-summary-insinuate) "planner-timeclock-summary" "\
Automatically call `planner-timeclock-summary-update'.
This function is called when the day page is saved." nil nil)

(autoload (quote planner-timeclock-summary-update) "planner-timeclock-summary" "\
Update `planner-timeclock-summary-section'. in the current day page.
The section is updated only if it exists." t nil)

(autoload (quote planner-timeclock-summary-show) "planner-timeclock-summary" "\
Display a buffer with the timeclock summary for DATE.
Date is a string in the form YYYY.MM.DD." t nil)

(autoload (quote planner-timeclock-summary-show-filter) "planner-timeclock-summary" "\
Show a timeclock report filtered by FILTER for DATE.

If FILTER is a regexp, only plan pages matching that regexp will
be included. If FILTER is a function, it will be called with the
current timeclock item, and the line considered if the function
returned non-nil.

If called interactively, prompt for FILTER (a regexp) and DATE.
DATE is a string in the form YYYY.MM.DD and can be nil." t nil)

(autoload (quote planner-timeclock-summary-show-range-filter) "planner-timeclock-summary" "\
Show a timeclock report filtered by FILTER for START-DATE to END-DATE.

If FILTER is a regexp, only plan pages matching that regexp will
be included. If FILTER is a function, it will be called with the
current timeclock item, and the line considered if the function
returned non-nil.

If called interactively, prompt for FILTER (a regexp), START-DATE and END-DATE.
Dates are strings in the form YYYY.MM.DD and can be nil." t nil)

(autoload (quote planner-timeclock-summary-show-2) "planner-timeclock-summary" "\
Display a buffer with the timeclock summary for DATE.

Date is a string in the form YYYY.MM.DD. It will be asked if not
given." t nil)

;;;***

;;;### (autoloads (planner-timeclock-summary-proj-report planner-timeclock-summary-proj-current
;;;;;;  planner-timeclock-summary-proj-all) "planner-timeclock-summary-proj"
;;;;;;  "planner-timeclock-summary-proj.el" (17637 51184))
;;; Generated autoloads from planner-timeclock-summary-proj.el

(autoload (quote planner-timeclock-summary-proj-all) "planner-timeclock-summary-proj" "\
Insert time report for all projects in the current buffer." t nil)

(autoload (quote planner-timeclock-summary-proj-current) "planner-timeclock-summary-proj" "\
Insert time report for the current project in the current buffer." t nil)

(autoload (quote planner-timeclock-summary-proj-report) "planner-timeclock-summary-proj" "\
Insert time report for PROJECT in the current buffer." t nil)

;;;***

;;;### (autoloads (planner-trunk-tasks) "planner-trunk" "planner-trunk.el"
;;;;;;  (17559 18503))
;;; Generated autoloads from planner-trunk.el

(autoload (quote planner-trunk-tasks) "planner-trunk" "\
Trunk(group) tasks in the current page.
Please refer the docstring of `planner-trunk-rule-list' for how
it works. You may want to call this function before you sort tasks
and/or after you create new tasks. If a prefix is given or FORCE is not
nil, trunk completed tasks together with non-completed tasks not
matter what the `planner-trunk-rule-list' said." t nil)

;;;***

;;;### (autoloads (planner-unix-mail-browse-url planner-unix-mail-annotation-from-mail)
;;;;;;  "planner-unix-mail" "planner-unix-mail.el" (17559 18503))
;;; Generated autoloads from planner-unix-mail.el

(autoload (quote planner-unix-mail-annotation-from-mail) "planner-unix-mail" "\
Return an annotation for the current message.
This function can be added to `planner-annotation-functions'." nil nil)

(autoload (quote planner-unix-mail-browse-url) "planner-unix-mail" "\
If this is an UNIX-MAIL URL, jump to it." nil nil)

;;;***

;;;### (autoloads (planner-vm-browse-url planner-vm-annotation-from-mail)
;;;;;;  "planner-vm" "planner-vm.el" (17945 33891))
;;; Generated autoloads from planner-vm.el

(autoload (quote planner-vm-annotation-from-mail) "planner-vm" "\
Return an annotation for the current message.
This function can be added to `planner-annotation-functions'." nil nil)

(autoload (quote planner-vm-browse-url) "planner-vm" "\
If this is an VM URL, jump to it." nil nil)

;;;***

;;;### (autoloads (planner-w3m-annotation-from-w3m) "planner-w3m"
;;;;;;  "planner-w3m.el" (17945 33891))
;;; Generated autoloads from planner-w3m.el

(autoload (quote planner-w3m-annotation-from-w3m) "planner-w3m" "\
If called from a w3m page, return an annotation.
Suitable for use in `planner-annotation-functions'." nil nil)

;;;***

;;;### (autoloads (planner-wl-browse-url planner-wl-annotation-from-wl
;;;;;;  planner-wl-insinuate) "planner-wl" "planner-wl.el" (17945
;;;;;;  33891))
;;; Generated autoloads from planner-wl.el

(autoload (quote planner-wl-insinuate) "planner-wl" "\
Hook Planner into Wanderlust.
Add special planner keybindings to`wl-summary-mode-map'.
From the Wanderlust Summary view, you can type C-c C-t to create a task." nil nil)

(autoload (quote planner-wl-annotation-from-wl) "planner-wl" "\
If called from wl, return an annotation.
Suitable for use in `planner-annotation-functions'." nil nil)

(autoload (quote planner-wl-browse-url) "planner-wl" "\
If this is a Wanderlust URL, jump to it." nil nil)

;;;***

;;;### (autoloads (planner-xtla-log-edit-add-note planner-xtla-browse-url
;;;;;;  planner-annotation-from-xtla) "planner-xtla" "planner-xtla.el"
;;;;;;  (17559 18503))
;;; Generated autoloads from planner-xtla.el

(autoload (quote planner-annotation-from-xtla) "planner-xtla" "\
If called from a xtla buffer, return an annotation.
Suitable for use in `planner-annotation-functions'." nil nil)

(autoload (quote planner-xtla-browse-url) "planner-xtla" "\
If this is a xtla url, handle it." nil nil)

(autoload (quote planner-xtla-log-edit-add-note) "planner-xtla" "\
Provide `planner-log-edit'-like functionality for xtla.
This function is automatically called by `tla-commit-hook'.
See also `planner-xtla-log-edit-notice-commit-function'." t nil)

;;;***

;;;### (autoloads (schedule-completion-time) "schedule" "contrib/schedule.el"
;;;;;;  (17630 12527))
;;; Generated autoloads from contrib/schedule.el

(autoload (quote schedule-completion-time) "schedule" "\
Advance THEN by COUNT seconds, skipping the weekends and holidays.
THEN must not already be in a holiday or non-worktime.  Make sure that
`schedule-align-now' is called at least once before this function ever
gets called." nil nil)

;;;***

;;;### (autoloads (timeclock-when-to-leave-string timeclock-workday-elapsed-string
;;;;;;  timeclock-workday-remaining-string timeclock-reread-log timeclock-query-out
;;;;;;  timeclock-change timeclock-status-string timeclock-out timeclock-in
;;;;;;  timeclock-modeline-display) "timeclock" "contrib/timeclock.el"
;;;;;;  (17737 20788))
;;; Generated autoloads from contrib/timeclock.el

(autoload (quote timeclock-modeline-display) "timeclock" "\
Toggle display of the amount of time left today in the modeline.
If `timeclock-use-display-time' is non-nil (the default), then
the function `display-time-mode' must be active, and the modeline
will be updated whenever the time display is updated.  Otherwise,
the timeclock will use its own sixty second timer to do its
updating.  With prefix ARG, turn modeline display on if and only
if ARG is positive.  Returns the new status of timeclock modeline
display (non-nil means on)." t nil)

(autoload (quote timeclock-in) "timeclock" "\
Clock in, recording the current time moment in the timelog.
With a numeric prefix ARG, record the fact that today has only that
many hours in it to be worked.  If arg is a non-numeric prefix arg
\(non-nil, but not a number), 0 is assumed (working on a holiday or
weekend).  *If not called interactively, ARG should be the number of
_seconds_ worked today*.  This feature only has effect the first time
this function is called within a day.

PROJECT is the project being clocked into.  If PROJECT is nil, and
FIND-PROJECT is non-nil -- or the user calls `timeclock-in'
interactively -- call the function `timeclock-get-project-function' to
discover the name of the project." t nil)

(autoload (quote timeclock-out) "timeclock" "\
Clock out, recording the current time moment in the timelog.
If a prefix ARG is given, the user has completed the project that was
begun during the last time segment.

REASON is the user's reason for clocking out.  If REASON is nil, and
FIND-REASON is non-nil -- or the user calls `timeclock-out'
interactively -- call the function `timeclock-get-reason-function' to
discover the reason." t nil)

(autoload (quote timeclock-status-string) "timeclock" "\
Report the overall timeclock status at the present moment.
If SHOW-SECONDS is non-nil, display second resolution.
If TODAY-ONLY is non-nil, the display will be relative only to time
worked today, ignoring the time worked on previous days." t nil)

(autoload (quote timeclock-change) "timeclock" "\
Change to working on a different project.
This clocks out of the current project, then clocks in on a new one.
With a prefix ARG, consider the previous project as finished at the
time of changeover.  PROJECT is the name of the last project you were
working on." t nil)

(autoload (quote timeclock-query-out) "timeclock" "\
Ask the user whether to clock out.
This is a useful function for adding to `kill-emacs-query-functions'." nil nil)

(autoload (quote timeclock-reread-log) "timeclock" "\
Re-read the timeclock, to account for external changes.
Returns the new value of `timeclock-discrepancy'." t nil)

(autoload (quote timeclock-workday-remaining-string) "timeclock" "\
Return a string representing the amount of time left today.
Display second resolution if SHOW-SECONDS is non-nil.  If TODAY-ONLY
is non-nil, the display will be relative only to time worked today.
See `timeclock-relative' for more information about the meaning of
\"relative to today\"." t nil)

(autoload (quote timeclock-workday-elapsed-string) "timeclock" "\
Return a string representing the amount of time worked today.
Display seconds resolution if SHOW-SECONDS is non-nil.  If RELATIVE is
non-nil, the amount returned will be relative to past time worked." t nil)

(autoload (quote timeclock-when-to-leave-string) "timeclock" "\
Return a string representing the end of today's workday.
This string is relative to the value of `timeclock-workday'.  If
SHOW-SECONDS is non-nil, the value printed/returned will include
seconds.  If TODAY-ONLY is non-nil, the value returned will be
relative only to the time worked today, and not to past time." t nil)

;;;***

;;;### (autoloads (planner-accomplishments-show planner-accomplishments-update
;;;;;;  planner-accomplishments-insinuate) "planner-accomplishments"
;;;;;;  "planner-accomplishments.el" (17945 33891))
;;; Generated autoloads from planner-accomplishments.el

(autoload (quote planner-accomplishments-insinuate) "planner-accomplishments" "\
Automatically call `planner-accomplishments-update'." nil nil)

(autoload (quote planner-accomplishments-update) "planner-accomplishments" "\
Update `planner-accomplishments-section'." t nil)

(autoload (quote planner-accomplishments-show) "planner-accomplishments" "\
Display a buffer with the current page's accomplishment report." t nil)

;;;***

(provide 'planner-autoloads)
;;; planner-autoloads.el ends here
;;
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:

