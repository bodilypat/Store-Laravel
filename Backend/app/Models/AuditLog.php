<!-- app/Models/AuditLog.php 
| -- This model represents an audit log entry in the application. 
| -- It has a fillable property that specifies which attributes can be mass assigned when creating or updating an audit log entry. 
| -- The attributes include user_id, action, and details, which are used to store information
-->
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AuditLog extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'action',
        'details',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}

