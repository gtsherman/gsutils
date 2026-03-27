util_defaults = new.env()
util_defaults$DEFAULT_WIDTH = 6.5
util_defaults$DEFAULT_HEIGHT = 3.5
util_defaults$DEFAULT_FILE_NAME = 'preview.svg'

ggprev = function(file_name = util_defaults$DEFAULT_FILE_NAME,
                  width = util_defaults$DEFAULT_WIDTH,
                  height = util_defaults$DEFAULT_HEIGHT,
                  open = TRUE) {
  ggplot2::ggsave(file_name, width = width, height = height, units = 'in', dpi = 300)
  if (open) browseURL(file_name)
}

ggupd = function(file_name = util_defaults$DEFAULT_FILE_NAME,
                 width = util_defaults$DEFAULT_WIDTH,
                 height = util_defaults$DEFAULT_HEIGHT) {
  ggprev(file_name = file_name, width = width, height = height, open = FALSE)
}

theme_custom = function() {
  ggprism::theme_prism(base_size = 8) +
    theme(
      text = element_text(size = 22),
      axis.title.y = element_text(size = 18, margin = margin(r = 20)),
    )
}
