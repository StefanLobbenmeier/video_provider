

String imgur_to_mp4(String gifv_url) {
  assert (gifv_url.endsWith(".gifv"));
  return gifv_url.replaceRange(gifv_url.length - "gifv".length, gifv_url.length, "mp4");
}
