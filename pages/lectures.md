---
title: Lectures
menuorder: 2
template: wide
---

Lectures
========

Lectures take place in EL41 or EL42; the complete schedule is available in
\$timeedit\$. Note that if you use an iCal or vCal-compatible calendar, you can
download the course schedule from \$timeedit\$.

The following is a preliminary plan for the lectures. Changes will be announced
on this web site. Slides from the lectures will normally be available on this
page in advance of the lecture. Last year's slides are already here. Changes may
occur; a new version is indicated by changing 'old' to 'new' in the links below.

<table class="lectures" border="1" cellspacing="0" cellpadding="5" valign="top">
<tr>
<th align="center">Lecture #</th>
<th>Date</th>
<th>Topic</th>
<th align="center">Slides</th>
</tr>
\$for(lectures)\$
<tr>
<td align="center">\$number\$</td>
<td>\$date\$</td>
<td align="left">\$description\$</td>
<td align="center">
\$for(lecturefiles)\$
[\$body\$](/files/\$path\$)
\$endfor\$
</td>
</tr>
\$endfor\$
</table>

<br/>
