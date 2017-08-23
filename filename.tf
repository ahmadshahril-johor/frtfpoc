resource "aws_db_instance" "asj-mysql-testdb1" {
    identifier                = "asj-mysql-testdb1"
    allocated_storage         = 5
    storage_type              = "gp2"
    engine                    = "mysql"
    engine_version            = "5.6.35"
    instance_class            = "db.t2.micro"
    name                      = ""
    username                  = "asj"
    password                  = "xxxxxxxx"
    port                      = 3306
    publicly_accessible       = true
    availability_zone         = "us-east-1c"
    security_group_names      = []
    vpc_security_group_ids    = ["sg-7c63e60c"]
    db_subnet_group_name      = "default"
    parameter_group_name      = "default.mysql5.6"
    multi_az                  = true
    backup_retention_period   = 7
    backup_window             = "08:57-09:27"
    maintenance_window        = "sat:07:59-sat:08:29"
    final_snapshot_identifier = "asj-mysql-testdb1-final"
    auto_minor_version_upgrade = false
}
