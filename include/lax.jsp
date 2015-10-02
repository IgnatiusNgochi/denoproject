<%   
   if(request.isUserInRole("admin"))
             {
           response.sendRedirect("admin.jsp");

            }
if(request.isUserInRole("student")){
           response.sendRedirect("student/student.jsp");

     }


   %>


<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <title> Upload File</title>
      <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="assets/css/style.css" rel="stylesheet">
      <style >
         footer{
         border-top:solid 2px #26afaf;
         padding-left:30px;
         background:#fafafa;
         }
      </style>
   </head>
   <body>
      <div  class="container">
      <div class="row" style="border-bottom:solid 2px #0088cc;">
         <h4 class="text-primary">
         <!--<img src="assets/images/logo.png" />--> EXCEL SHEET PROCESSOR (ENR)</h4>
         <form action="" method="post" enctype="multipart/form-data" class="form-horizontal" role="form">
            <div class='form-group'>
               <label for='excel_file' class="col-md-2 control-label text-left">Select Excel File</label>
               <div class="col-sm-6">
                  <input id="xlsxFile" type="file" name="excel_file" accept=".xlsx" onchange="" required="true">
               </div>
               <div class="col-sm-4 text-right" >
                  <button type="reset" class="btn btn-default">Cancel</button> 
               </div>
            </div>
            <div class='form-group'>
               <label for='sheet_name' class="col-md-2 control-label text-left">Select Workbook Sheet</label>
               <div class="col-sm-10">
                  <select id="sheet_name" class="form-control"  >
                     <option value="">---- Select a sheet ----</option>
                  </select>
               </div>
               <div class="col-md-4 col-md-offset-1" >
               </div>
            </div>
            <img src="assets/images/progress-indeterminate-light.gif" id="loading_gif" style="width:99%; height:7px;" />
            <div id="response"></div>
      </div>
      <div class="row" style="margin-top:4px;">
      <div class="col-md-2" >
      <div class="checkbox">
      <label>
      <input type="checkbox" onclick="toggleAll(this)"><span id="spnToggle">Select All</span>
      </label>
      </div>
      <div class="col-sm-12" id="tbl">
      </div>
      </div>
      </form>
      <footer class="row navbar-fixed-bottom">
      <div class="col-md-8 col-md-offset-1">
      2015 &copy; CODEPAMOJA </a>
      </div>
      </footer>
       
       </div>
   </body>
   <script type="text/javascript" src="assets/js/jquery.js"></script>
   <script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js"></script>
   <script type="text/javascript"  src="assets/js/lodash.min.js"></script>
   <script type="text/javascript" src="assets/js/jszip.js"></script>
   <script type="text/javascript" src="assets/js/xlsx.js"></script>
   <script type="text/javascript" src="assets/js/xlsx-reader.js"></script>
   <script type="text/javascript" src="assets/js/index.js"></script>
</html>