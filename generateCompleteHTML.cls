public static String generateCompleteHTML(List<String> tags) {
    String html = '<html><head><title>Generated HTML</title></head><body>';
    for (String tag : tags) {
        html += '<' + tag + '></' + tag + '>';
    }
    html += '</body></html>';
    return html;
}
