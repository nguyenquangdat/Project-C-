namespace Project.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Order2 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Orders",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        uid = c.Int(nullable: false),
                        pid = c.Int(nullable: false),
                        price = c.Decimal(nullable: false, precision: 18, scale: 2),
                        quantity = c.Int(nullable: false),
                        total = c.Double(nullable: false),
                        status = c.String(),
                        time = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Orders");
        }
    }
}
