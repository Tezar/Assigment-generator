<h2>Cvičící</h2>

<table class="table table-hover">
    <thead>
        <tr>
            <th>Login</th>
            <th>Akce</th>
        </tr>
     </thead>
    
    <tbody>
        %lector = None
        %for lector in lectors:
        <tr>
            <td>{{lector.login}}</td>
            <td><a href='/lectors/delete/{{lector.login}}'><i class="icon-remove"></i> smazat</a> </td>
        </tr>
        %end
    </tbody>
</table>

<form action="" method="post" class="input-append" >
      <input type='text' name='add' placeholder="Jméno">
      <button class="btn" type="submit"><i class="icon-plus"></i> Přidat cvičícího</button>
</form>

%rebase layout