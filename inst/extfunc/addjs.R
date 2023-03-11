library(stringr)

folder_path <- "docs"
files <- list.files(folder_path, pattern = "\\.html$", full.names = TRUE)

for (file in files) {
  content <- readLines(file)
  content <- str_replace(content, "<body>", paste0(
    "
    <body>
    <script>
      let paramString = window.location.search.split('?')[1];
      let queryString = new URLSearchParams(paramString);
      let nva = parseInt(queryString.get('nva'))
      let now = new Date().getTime()
      if (Number.isNaN(nva) || now > nva) {
          console.log('not-valid-after invalid, going to redirect to /')
          window.location = '/'
      }
    </script>
    "
  ))
  writeLines(content, file)
}
