% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/custom_inputs.R
\name{customSliderInput}
\alias{customSliderInput}
\title{Custom Slider Input}
\usage{
customSliderInput(inputId, label, min, max, value, step = NULL,
  round = FALSE, ticks = TRUE, animate = FALSE, width = NULL,
  sep = ",", pre = NULL, post = NULL, timeFormat = NULL,
  timezone = NULL, dragRange = TRUE)
}
\arguments{
\item{inputId}{The input slot that will be used to access the value.}

\item{label}{Display label for the control, or NULL for no label.}

\item{min}{The minimum value (inclusive) that can be selected.}

\item{max}{The maximum value (inclusive) that can be selected.}

\item{value}{The initial value of the slider. A numeric vector of length
one will create a regular slider; a numeric vector of length two will
create a double-ended range slider. A warning will be issued if the value
doesn't fit between min and max.}

\item{step}{Specifies the interval between each selectable value on the
slider (if NULL, a heuristic is used to determine the step size). If the
values are dates, step is in days; if the values are times (POSIXt), step
is in seconds.}

\item{round}{TRUE to round all values to the nearest integer; FALSE if no
rounding is desired; or an integer to round to that number of digits
(for example, 1 will round to the nearest 10, and -2 will round to the
nearest .01). Any rounding will be applied after snapping to the nearest step.}

\item{ticks}{\code{FALSE} to hide tick marks, \code{TRUE} to show them
according to some simple heuristics.}

\item{animate}{\code{TRUE} to show simple animation controls with default
settings; \code{FALSE} not to; or a custom settings list, such as those
created using \code{\link{animationOptions}}.}

\item{width}{The width of the input, e.g., '200px' or '50\%'.}

\item{sep}{Separator between thousands places in numbers.}

\item{pre}{A prefix string to put in front of the value.}

\item{post}{A suffix string to put after the value.}

\item{timeFormat}{Only used if the values are Date or POSIXt objects. A time
format string, to be passed to the Javascript strftime library. See
\url{https://github.com/samsonjs/strftime} for more details. The allowed
format specifications are very similar, but not identical, to those for R's
\code{\link{strftime}} function. For Dates, the default is \code{"\%F"}
(like \code{"2015-07-01"}), and for POSIXt, the default is \code{"\%F \%T"}
(like \code{"2015-07-01 15:32:10"}).}

\item{timezone}{Only used if the values are POSIXt objects. A string
specifying the time zone offset for the displayed times, in the format
\code{"+HHMM"} or \code{"-HHMM"}. If \code{NULL} (the default), times will
be displayed in the browser's time zone. The value \code{"+0000"} will
result in UTC time.}

\item{dragRange}{This option is used only if it is a range slider (with two
values). If \code{TRUE} (the default), the range can be dragged. In other
words, the min and max can be dragged together. If \code{FALSE}, the range
cannot be dragged.}
}
\description{
Constructs a custom slider widget to select a numeric value
from a range.  Primarily used to customize the rate policy.
}

