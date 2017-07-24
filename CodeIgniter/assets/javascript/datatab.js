

$(document).ready(function () {

    $('#tab').DataTable({

        dom: 'lftrip',
        pagingType: "full_numbers",
        lengthMenu:[5,10,25,50,100,1000,10000,50000],

    });

});
