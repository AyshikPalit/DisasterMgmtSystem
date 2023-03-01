<%-- 
    Document   : moneyDetails
    Created on : 28-Feb-2023, 9:45:38 am
    Author     : Ayshik Palit
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="editDonateMoney.jsp"></jsp:include>
<script>
    function approveStatus(id){
            //alert("hello" + id);
            $.ajax({
                url: "ApproveMoney",
                data:{
                    formId : id
                },
                success: function (responseText) {
                //alert(responseText);
               $.get('editDonateMoney.jsp');          
//      loadFNOLDetails();  
//});  
            document.getElementById("menuback").style.display='none';
                $("#Target").html(responseText);
                }
            });
        }
        function rejectStatus(id){
            //alert("hello" + id);
            $.ajax({
                url: "RejectMoney",
                data:{
                    formId : id
                },
                success: function (responseText) {
                //alert(responseText);
                //document.getElementById("display-body").style.display='none';
//                $.getScript('menuUnderwriter.jsp', function () {          
//      loadFNOLDetails();  
//});  
//            document.getElementById("display-body").style.display='none';
               $("#Target").html(responseText);
                }
            });
        }
</script>
<div id="Target"></div>
<div class="d-flex flex-column gap-2 mb-3">
    <span>Form ID : ${MoneyForm.getFormId()}</span>
    <span>Donor ID : ${MoneyForm.getDonorId()}</span>
    <span>Donor Type : ${MoneyForm.getDonorType()}</span>
    <span>Amount (in Rs) : ${MoneyForm.getAmount()}</span>
    <span>Event ID : ${MoneyForm.getEventId()}</span>
</div>
<div class="gap-3 column-gap-4" style="display: grid; grid-template-columns: repeat(2, 1fr)">
    <button type="button" class="btn btn-primary w-100" onclick="getInsuranceDetails()">
        Check API Validity
    </button>
    <button type="button" class="btn btn-primary w-100" onclick="getDMVDetails()">
        Check API Validity
    </button>

<!--    <form action="ApproveMoney" method="post">
        <button class="btn btn-lg btn-primary" type="submit">Approve</button>
    </form>
    <form action="RejectMoney" method="post">
        <button class="btn btn-lg btn-primary" type="submit">Reject</button>
    </form>-->
    <button type="button" class="btn btn-success w-100" onclick="approveStatus(<c:out value='${MoneyForm.getFormId()}'/>)">
        Approve
    </button>
    <button type="button" class="btn btn-danger w-100" onclick="rejectStatus(<c:out value='${MoneyForm.getFormId()}'/>)">
        Reject
    </button>
</div>
