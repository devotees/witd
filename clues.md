# Clues Page
<script>
function submitClue(){
    var clue = document.getElementsByName("clue");
    var action_src = "/" + clue[0].value;
    var clueform = document.getElementById('clueform');

    clueform.action = action_src;
    clueform.removeChild(clue[0]);
}
</script>

<form id="clueform" onsubmit="submitClue()">
    <input type="text" name="clue">
    <input type="submit" value="Search">
</form>

