% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shapes.R
\name{create_shape}
\alias{create_shape}
\title{Create geometric shapes with optional text}
\usage{
create_shape(
  shape = c("circle", "square", "rectangle", "triangle", "hexagon", "star", "ellipse",
    "polygon"),
  x_center = 0,
  y_center = 0,
  size = 1,
  width = size,
  height = size,
  n_sides = 5,
  rotation = 0,
  fill_color = NA,
  border_color = "black",
  line_width = 1,
  title = "Geometric Shape",
  text = NULL,
  text_color = "black",
  text_size = 1,
  text_font = 1,
  text_angle = 0,
  show_axes = FALSE,
  show_ticks = FALSE,
  show_axis_labels = FALSE
)
}
\arguments{
\item{shape}{Character string specifying the shape to create. Must be one of:
"circle", "square", "rectangle", "triangle", "hexagon", "star", "ellipse", "polygon".}

\item{x_center}{Numeric, x-coordinate of the shape's center. Default is 0.}

\item{y_center}{Numeric, y-coordinate of the shape's center. Default is 0.}

\item{size}{Numeric, the primary size parameter (radius for circle, side length for square, etc.). Default is 1.}

\item{width}{Numeric, width for rectangle and ellipse. Default is size.}

\item{height}{Numeric, height for rectangle and ellipse. Default is size.}

\item{n_sides}{Integer, number of sides for polygon. Default is 5.}

\item{rotation}{Numeric, rotation angle in degrees. Default is 0.}

\item{fill_color}{Character string or NA, the fill color of the shape. Default is NA (transparent).}

\item{border_color}{Character string, the border color of the shape. Default is "black".}

\item{line_width}{Numeric, the width of the border line. Default is 1.}

\item{title}{Character string, the title of the plot. Default is "Geometric Shape".}

\item{text}{Character string, optional text to display inside the shape. Default is NULL (no text).}

\item{text_color}{Character string, color of the text. Default is "black".}

\item{text_size}{Numeric, size of the text. Default is 5.}

\item{text_font}{Character string, font family for the text. Default is "".}

\item{text_angle}{Numeric, rotation angle for the text in degrees. Default is 0.}

\item{show_axes}{Logical. Whether to display the axes. Default is FALSE.}

\item{show_ticks}{Logical. Whether to display axis ticks. Default is FALSE.}

\item{show_axis_labels}{Logical. Whether to display axis labels (X and Y). Default is FALSE.}
}
\value{
A list containing:
  \itemize{
    \item plot: The ggplot object
    \item coordinates: Data frame with x and y coordinates of the shape's vertices
    \item center: Vector with x and y coordinates of the shape's center
    \item size: Primary size parameter used
    \item shape: Shape type
    \item text: Text displayed inside the shape (if any)
  }
}
\description{
This function creates various geometric shapes using base R graphics.
It supports multiple shape types including circle, square, rectangle,
triangle, hexagon, star, ellipse, and regular polygons with custom sides.
}
\examples{
\dontrun{
# Example 1: Basic circle
create_shape(shape = "circle", size = 2, fill_color = "lightblue")

# Example 2: Square with rotation and text
create_shape(
  shape = "square",
  size = 3,
  rotation = 45,
  fill_color = "salmon",
  border_color = "darkred",
  line_width = 2,
  text = "Rotated Square",
  text_color = "darkblue",
  text_size = 3
)

# Example 3: Hexagon with custom title
create_shape(
  shape = "hexagon",
  size = 2.5,
  fill_color = "lightgreen",
  border_color = "darkgreen",
  title = "My Hexagon"
)

# Example 4: Star with custom styling
create_shape(
  shape = "star",
  size = 3,
  rotation = 15,
  fill_color = "gold",
  border_color = "orange",
  line_width = 2,
  title = "Gold Star"
)

# Example 5: Rectangle with custom dimensions
create_shape(
  shape = "rectangle",
  width = 4,
  height = 2,
  fill_color = "lavender",
  text = "Rectangle",
  text_size = 2.5
)

# Example 6: Triangle with rotation and styling
create_shape(
  shape = "triangle",
  size = 3,
  rotation = 180,
  fill_color = "pink",
  border_color = "purple",
  line_width = 2,
  text = "rpkg",
  text_color = "black",
  text_size = 4
)

# Example 7: Ellipse with custom dimensions
create_shape(
  shape = "ellipse",
  width = 5,
  height = 2,
  rotation = 30,
  fill_color = "lightcyan",
  border_color = "steelblue",
  title = "Rotated Ellipse"
)

# Example 8: Custom polygon (octagon)
create_shape(
  shape = "polygon",
  n_sides = 8,
  size = 2,
  fill_color = "thistle",
  border_color = "purple",
  title = "Octagon",
  text = "8",
  text_color = "darkblue",
  text_size = 3
)

# Example 9: Overlapping shapes (need to call par() between shapes)
create_shape(
  shape = "circle",
  x_center = 0,
  y_center = 0,
  size = 3,
  fill_color = rgb(1, 0, 0, 0.5),
  title = "Overlapping Shapes"
)

par(new = TRUE)  # Allow adding to the existing plot
create_shape(
  shape = "circle",
  x_center = 1,
  y_center = 1,
  size = 3,
  fill_color = rgb(0, 0, 1, 0.5),
  title = ""  # Empty title to avoid overwriting the previous title
)
# Create a star with text
create_shape("star", size = 2,
                       fill_color = "gold",
                       text = "*",
                       text_size = 8)
}

}
