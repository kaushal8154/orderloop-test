<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolePermissionSeeder extends Seeder
{
    public function run(): void
    {
        // Permissions
        Permission::create(['name' => 'view books']);
        Permission::create(['name' => 'create books']);
        Permission::create(['name' => 'edit books']);
        Permission::create(['name' => 'delete books']);

        // Roles
        $admin = Role::create(['name' => 'Admin']);
        $user  = Role::create(['name' => 'User']);

        // Assign permissions to roles
        $admin->givePermissionTo(['view books', 'create books', 'edit books', 'delete books']);
        $user->givePermissionTo(['view books']);
    }
}
