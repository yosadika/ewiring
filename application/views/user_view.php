<!DOCTYPE html>
<html>
<head>
  <title>User Data</title>
</head>
<body>
  <h1>User Data</h1>
  <table>
    <tr>
      <th>Name</th>
      <td><?php echo $user_data['user_name']; ?></td>
    </tr>
    <tr>
      <th>Level</th>
      <td><?php echo $user_data['user_level']; ?></td>
    </tr>
  </table>
</body>
</html>
