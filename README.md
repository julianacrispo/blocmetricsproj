== README
 track a client-side event using the Blocmetrics analytics service

```
<script>
  blocmetrics_track("loaded page", "guest", window.location);
</script>
```
//Snippit:
```
<script>
var blometics_track = function( what, who, url ){
  var _bm_event = {
    what: what,
    who: who,
    url :url
  }
var _bm_request = new XMLHttpRequest();
_bm_request.open("POST", "http://blocmetrics.com/events.json", true);
_bm_request.setRequestHeader('Content-Type', 'application/json');
_bm_request.onreadystatechange = function() {
  // this function runs when the Ajax request changes state.
  // https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
};
_bm_request.send(JSON.stringify(_bm_event));
}
</script>
```