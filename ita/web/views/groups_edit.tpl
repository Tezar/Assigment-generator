<div style='float:right;'>
<a href='/groups'><i class="icon-chevron-left"></i> zpátky na seznam</a>
</div>

<h2>Úprava skupiny {{group.data["name"]}}</h2>

{{!form}}

<h3>Studenti</h3>

<table class="table table-hover">
    <thead>
        <tr>
            <th>Login</th>
            <th>Bodů</th>
            <th>Akce</th>
        </tr>
     </thead>
    
    <tbody>
        %login = None
        %results = group.getResults()
        %for login, points in results.items():
        <tr>
            <td>{{login}}</td>
            <td>{{points}}</td>
            <td><a href='?remove={{login}}'><i class="icon-remove"></i> smazat</a> </td>
        </tr>
        %end
        
        %if not login:
            <td colspan='3'>V této skupině nejsou zatím žádní studenti</td>
        %end
    </tbody>
    
</table>

<div class='pull-right'>
    <a class='btn' href='/groups/download/{{group.group_id}}'><i class="icon-download"></i> stáhnout výsledky</a>
</div>

<form action="" method="post" class="input-append" >
      <input type='text' name='add' placeholder="Login">
      <button class="btn" type="submit"><i class="icon-plus"></i> Přidat studenta</button>
</form>


%rebase layout