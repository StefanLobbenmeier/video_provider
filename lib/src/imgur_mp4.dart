

Uri imgur_to_mp4(Uri gifv_url) {
  assert (gifv_url.path.endsWith(".gifv"));
  String newPath = gifv_url.path.replaceRange(gifv_url.path.lastIndexOf("."), gifv_url.path.length, ".mp4");
  return gifv_url.replace(path: newPath);
}
