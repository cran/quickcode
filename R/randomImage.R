#' Download random images from the web
#'
#' Generate n number of high-definition images by category from the web
#'
#' @param fp CHARACTER. storage directory
#' @param cat CHARACTER. category of image to download
#' @param n NUMERIC. number of images to download, maximum n is 99
#' @param w.px NUMERIC. width in pixels
#' @param h.px NUMERIC. height in pixels
#' @param ext CHARACTER. file extension eg jpg, png
#' @param paths logical. whether to return paths
#'
#' @section Sources & References:
#' The random images are downloaded from https://picsum.photos
#'
#' @section Category Choices:
#' Categories for 'cat' argument include
#' "3D", "animals", "architecture", "backgrounds", "beauty", "experimental",
#' "fashion", "film", "food", "interior", "nature", "people", "renders",
#' "school", "sports", "travel", "unsplash", "wallpapers".\cr\cr
#' Image categories can be captured in a separate vector as a cross-reference made available to the cat argument. \cr For example: \cr
#' imgcat= c("3D", "animals", "architecture", "backgrounds", "beauty", "experimental", "fashion", "film", "food", "interior", "nature", "people", "renders", "school", "sports", "travel", "unsplash", "wallpapers")\cr\cr
#' genRandImg(fp, cat = imgcat[9], n = 5); Note that cat will be deprecated in version 0.9
#'
#'
#' @section Use case:
#' This functionality is great for developers trying to obtain one or more images for use in displays/analysis
#' or simply to build robust web applications.
#'
#' @return downloaded image from a select image category
#'
#'
#' @examples
#' \donttest{
#' # download 2 image from the nature category
#' genRandImg(fp = tempdir(),n = 2)
#'
#' # download 4 random images with width = 600px and height 100px
#' genRandImg(
#'   fp = tempdir(),
#'   w.px = 600,
#'   h.px = 100)
#'
#' # download 10 random images with extension png
#' genRandImg(fp = tempdir(),n = 10, ext = "png")
#'
#'
#' # download 200 random images from category of school
#' # Note that maximum download is 99, so the function will only download 99
#' genRandImg(fp = tempdir(),cat = "school", n = 200)
#'
#' # download 5 random images with extension jif and return paths
#' genRandImg(fp = tempdir(),cat = "beauty", n = 5, ext = "jif", paths = TRUE)
#' }
#' @export
#'
genRandImg = function (fp, n = 1, w.px = 500, h.px = 500,
                       ext = "jpg", paths = FALSE, cat = NULL)
{
  if(not.null(cat)) message("Please not that the 'cat' category is now deprecated.")
  if (!dir.exists(fp))
    stop(paste0("The directory path declared in the 'fp' argument must exist."))
  if (n > 99) {
    warning("The value of n exceeds 99, so n was set to 99")
    n <- 99L
  }
  checksum.files <- c()
  downloaded.files <- c()
  while (n > 0) {
    file.store <- file.path(fp, paste0("img_", randString(1, 5), n, ".", ext))
    utils::download.file(url = paste0("https://picsum.photos/", w.px, "/", h.px), destfile = file.store, mode = "wb")
    Sys.sleep(1)
    checksum <- as.vector(tools::md5sum(file.store))
    if (checksum %in% checksum.files) {
      unlink(file.store)
    }
    else {
      vector_push(checksum.files, checksum)
      vector_push(downloaded.files, file.store)
      minus(n)
    }
  }
  message(paste0("Downloaded ", length(downloaded.files), " files to ",
                 fp))
  if (paths)
    gsub("\\\\", "/", downloaded.files)
}

# genRandImg <- function(fp, cat = imageCategories, n = 1, w.px = 500, h.px = 500, ext = "jpg", paths = FALSE) {
#   # check existence of directory
#   if(!dir.exists(fp)) stop(paste0("The directory path declared in the 'fp' argument must exist."))
#
#   # match category
#   cat <- match.arg(cat)
#
#   # check that n does not exceed 99
#   if(n > 99){
#     warning("The value of n exceeds 99, so n was set to 99")
#     n <- 99L
#   }
#   # check sum and file names
#   checksum.files <- c()
#   downloaded.files <- c()
#
#
#   #download files to temp directory
#   while (n > 0) {
#     file.store <- file.path(fp,paste0(tolower(cat),"_",randString(1,5),n,".",ext))
#     utils::download.file(
#       url = paste0("https://source.unsplash.com/random/", w.px, "x", h.px, "/?", cat, "&", n),
#       destfile = file.store, mode = "wb"
#     )
#
#     # make sure there is no duplication
#     checksum <- as.vector(tools::md5sum(file.store))
#     if (checksum %in% checksum.files) {
#       unlink(file.store)
#     } else {
#       vector_push(checksum.files, checksum)
#       vector_push(downloaded.files, file.store)
#       minus(n)
#     }
#   }
#   message(paste0("Downloaded ",length(downloaded.files)," files to ",fp))
#   if(paths) gsub("\\\\","/",downloaded.files)
# }
#
#
