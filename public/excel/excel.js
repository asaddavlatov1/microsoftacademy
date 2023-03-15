var tableToExcel = (function() {
    var uri = 'data:application/vnd.ms-excel;base64,'
        , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table border="2px">{table}</table></body></html>'
        , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
        , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
    return function(table, name) {
        if (!table.nodeType)
        table = document.getElementById('idtable')
        var ctx = {worksheet: name || 'Worksheet', table: table.innerHTML}
        window.location.href = uri + base64(format(template, ctx))
    }
    })()
    function excel()
    {

    var tab_text="<table>";
    var tab_text2="<table border='2px'><tr >";
    var tab_text3="<table ><tr >";
    var textRange; var j=0;
    tab = document.getElementById('idtable'); // id of table

    for(j = 0 ; j < tab.rows.length ; j++)
    {
          if(tab.rows[j].id=='mal')
          tab_text=tab_text+tab_text3+tab.rows[j].innerHTML+"</tr>";
          else
          tab_text=tab_text+tab_text2+tab.rows[j].innerHTML+"</tr>";
    }

    tab_text=tab_text+"</table>";

    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
    {
          txtArea1.document.open("txt/html","replace");
          txtArea1.document.write(tab_text);
          txtArea1.document.close();
          txtArea1.focus();
          sa=txtArea1.document.execCommand("SaveAs",true,"Say Thanks to Sumit.xls");
    }
    else                 //other browser not tested on IE 11
    sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));

    return (sa);
    }

    function excel3()
    {

    var tab_text="<table>";
    var tab_text2="<table border='2px'><tr >";
    var tab_text3="<table ><tr >";

    var textRange; var j=0;
    tab = document.getElementById('idtable'); // id of table

    for(j = 0 ; j < tab.rows.length ; j++)
    {
          if(tab.rows[j].id=='mal')
            tab_text=tab_text+tab_text3+tab.rows[j].innerHTML+'<td>'+'</td>'+tab.rows[j].innerHTML+"</tr>";
          else
            tab_text=tab_text+tab_text2+tab.rows[j].innerHTML+'<td>'+'</td>'+tab.rows[j].innerHTML+"</tr>";
    }

    tab_text=tab_text+"</table>";

    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE ");

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
    {
          txtArea1.document.open("txt/html","replace");
          txtArea1.document.write(tab_text);
          txtArea1.document.close();
          txtArea1.focus();
          sa=txtArea1.document.execCommand("SaveAs",true,"Say Thanks to Sumit.xls");
    }
    else                 //other browser not tested on IE 11
    sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));


    return (sa);
    }
    function searchtable(value1,value2) {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById(value1);
        filter = input.value.toUpperCase();
        table = document.getElementById(value2);
        tr = table.getElementsByTagName("tr");
        for (i = 1; i <tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1];
            if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
            }
        }
    }
