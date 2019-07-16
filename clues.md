# Clues Page
<script>
function submitClue(){
    var action_src = "/" + document.getElementsByName("clue")[0].value;
    var clueform = document.getElementById('clueform');
    clueform.action = action_src;
}
</script>

<form id="clueform" onsubmit="submitClue()">
    <input type="text" name="clue">
    <input type="submit" value="Search">
</form>

