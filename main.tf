# This code is compatible with Terraform 4.25.0 and versions that are backwards compatible to 4.25.0.
# For information about validating this Terraform code, see https://developer.hashicorp.com/terraform/tutorials/gcp-get-started/google-cloud-platform-build#format-and-validate-the-configuration

resource "google_compute_instance" "sqlvm" {
  boot_disk {
    auto_delete = true
    device_name = "sqlvm"

    initialize_params {
      image = "projects/groovy-karma-388506/global/images/image-1"
      size  = 50
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
  }

  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false

  labels = {
    goog-ec-src = "vm_add-tf"
  }

  machine_type = "e2-standard-2"

  metadata = {
    windows-startup-script-ps1 = "echo \"script execution in progress\"\nStart-Sleep -s 30\ninvoke-sqlcmd -serverinstance sqlserver\\sql2017 -u sa -p \"Prakash@123\" -database master -query \"USE [master]\nGO\n/****** Object:  Database [DB1]    Script Date: 6/28/2023 12:45:35 PM ******/\nCREATE DATABASE [DB1]\n CONTAINMENT = NONE\n ON  PRIMARY \n( NAME = N'DB1', FILENAME = N'C:\\Program Files\\Microsoft SQL Server\\MSSQL14.SQL2017\\MSSQL\\DATA\\DB1.mdf' , SIZE = 524288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )\n LOG ON \n( NAME = N'DB1_log', FILENAME = N'C:\\Program Files\\Microsoft SQL Server\\MSSQL14.SQL2017\\MSSQL\\DATA\\DB1_log.ldf' , SIZE = 262144KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )\nGO\nALTER DATABASE [DB1] SET COMPATIBILITY_LEVEL = 140\nGO\nIF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))\nbegin\nEXEC [DB1].[dbo].[sp_fulltext_database] @action = 'enable'\nend\nGO\nALTER DATABASE [DB1] SET ANSI_NULL_DEFAULT OFF \nGO\nALTER DATABASE [DB1] SET ANSI_NULLS OFF \nGO\nALTER DATABASE [DB1] SET ANSI_PADDING OFF \nGO\nALTER DATABASE [DB1] SET ANSI_WARNINGS OFF \nGO\nALTER DATABASE [DB1] SET ARITHABORT OFF \nGO\nALTER DATABASE [DB1] SET AUTO_CLOSE OFF \nGO\nALTER DATABASE [DB1] SET AUTO_SHRINK OFF \nGO\nALTER DATABASE [DB1] SET AUTO_UPDATE_STATISTICS ON \nGO\nALTER DATABASE [DB1] SET CURSOR_CLOSE_ON_COMMIT OFF \nGO\nALTER DATABASE [DB1] SET CURSOR_DEFAULT  GLOBAL \nGO\nALTER DATABASE [DB1] SET CONCAT_NULL_YIELDS_NULL OFF \nGO\nALTER DATABASE [DB1] SET NUMERIC_ROUNDABORT OFF \nGO\nALTER DATABASE [DB1] SET QUOTED_IDENTIFIER OFF \nGO\nALTER DATABASE [DB1] SET RECURSIVE_TRIGGERS OFF \nGO\nALTER DATABASE [DB1] SET  DISABLE_BROKER \nGO\nALTER DATABASE [DB1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF \nGO\nALTER DATABASE [DB1] SET DATE_CORRELATION_OPTIMIZATION OFF \nGO\nALTER DATABASE [DB1] SET TRUSTWORTHY OFF \nGO\nALTER DATABASE [DB1] SET ALLOW_SNAPSHOT_ISOLATION OFF \nGO\nALTER DATABASE [DB1] SET PARAMETERIZATION SIMPLE \nGO\nALTER DATABASE [DB1] SET READ_COMMITTED_SNAPSHOT OFF \nGO\nALTER DATABASE [DB1] SET HONOR_BROKER_PRIORITY OFF \nGO\nALTER DATABASE [DB1] SET RECOVERY FULL \nGO\nALTER DATABASE [DB1] SET  MULTI_USER \nGO\nALTER DATABASE [DB1] SET PAGE_VERIFY CHECKSUM  \nGO\nALTER DATABASE [DB1] SET DB_CHAINING OFF \nGO\nALTER DATABASE [DB1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) \nGO\nALTER DATABASE [DB1] SET TARGET_RECOVERY_TIME = 60 SECONDS \nGO\nALTER DATABASE [DB1] SET DELAYED_DURABILITY = DISABLED \nGO\nEXEC sys.sp_db_vardecimal_storage_format N'DB1', N'ON'\nGO\nALTER DATABASE [DB1] SET QUERY_STORE = OFF\nGO\nUSE [DB1]\nGO\n/****** Object:  Table [dbo].[Table_1]    Script Date: 6/28/2023 12:45:35 PM ******/\nSET ANSI_NULLS ON\nGO\nSET QUOTED_IDENTIFIER ON\nGO\nCREATE TABLE [dbo].[Table_1](\n\t[id] [int] NOT NULL,\n\t[name] [nchar](10) NULL,\n\t[city] [nchar](10) NULL\n) ON [PRIMARY]\nGO\n/****** Object:  Table [dbo].[table_2]    Script Date: 6/28/2023 12:45:35 PM ******/\nSET ANSI_NULLS ON\nGO\nSET QUOTED_IDENTIFIER ON\nGO\nCREATE TABLE [dbo].[table_2](\n\t[id] [int] NOT NULL,\n\t[name] [nchar](10) NULL,\n\t[city] [nchar](10) NULL\n) ON [PRIMARY]\nGO\n/****** Object:  Table [dbo].[table_3]    Script Date: 6/28/2023 12:45:35 PM ******/\nSET ANSI_NULLS ON\nGO\nSET QUOTED_IDENTIFIER ON\nGO\nCREATE TABLE [dbo].[table_3](\n\t[id] [int] NOT NULL,\n\t[name] [nchar](10) NULL,\n\t[city] [nchar](10) NULL\n) ON [PRIMARY]\nGO\n/****** Object:  Table [dbo].[table_4]    Script Date: 6/28/2023 12:45:35 PM ******/\nSET ANSI_NULLS ON\nGO\nSET QUOTED_IDENTIFIER ON\nGO\nCREATE TABLE [dbo].[table_4](\n\t[id] [int] NOT NULL,\n\t[name] [nchar](10) NULL,\n\t[city] [nchar](10) NULL\n) ON [PRIMARY]\nGO\n/****** Object:  Table [dbo].[table_5]    Script Date: 6/28/2023 12:45:35 PM ******/\nSET ANSI_NULLS ON\nGO\nSET QUOTED_IDENTIFIER ON\nGO\nCREATE TABLE [dbo].[table_5](\n\t[id] [int] NOT NULL,\n\t[name] [nchar](10) NULL,\n\t[city] [nchar](10) NULL\n) ON [PRIMARY]\nGO\nINSERT [dbo].[Table_1] ([id], [name], [city]) VALUES (1, N'asdjh     ', N'kjb       ')\nINSERT [dbo].[Table_1] ([id], [name], [city]) VALUES (2, N'jbkjn     ', N'knjj      ')\nINSERT [dbo].[Table_1] ([id], [name], [city]) VALUES (3, N'kjjkn     ', N'jnklnm    ')\nINSERT [dbo].[Table_1] ([id], [name], [city]) VALUES (4, N'kjh       ', N'jnghv     ')\nINSERT [dbo].[Table_1] ([id], [name], [city]) VALUES (5, N'jk        ', N'lk        ')\nGO\nINSERT [dbo].[table_2] ([id], [name], [city]) VALUES (1, N'asdjh     ', N'kjb       ')\nINSERT [dbo].[table_2] ([id], [name], [city]) VALUES (2, N'jbkjn     ', N'knjj      ')\nINSERT [dbo].[table_2] ([id], [name], [city]) VALUES (3, N'kjjkn     ', N'jnklnm    ')\nINSERT [dbo].[table_2] ([id], [name], [city]) VALUES (4, N'kjh       ', N'jnghv     ')\nINSERT [dbo].[table_2] ([id], [name], [city]) VALUES (5, N'jk        ', N'lk        ')\nGO\nINSERT [dbo].[table_3] ([id], [name], [city]) VALUES (1, N'asdjh     ', N'kjb       ')\nINSERT [dbo].[table_3] ([id], [name], [city]) VALUES (2, N'jbkjn     ', N'knjj      ')\nINSERT [dbo].[table_3] ([id], [name], [city]) VALUES (3, N'kjjkn     ', N'jnklnm    ')\nINSERT [dbo].[table_3] ([id], [name], [city]) VALUES (4, N'kjh       ', N'jnghv     ')\nINSERT [dbo].[table_3] ([id], [name], [city]) VALUES (5, N'jk        ', N'lk        ')\nGO\nINSERT [dbo].[table_4] ([id], [name], [city]) VALUES (1, N'asdjh     ', N'kjb       ')\nINSERT [dbo].[table_4] ([id], [name], [city]) VALUES (2, N'jbkjn     ', N'knjj      ')\nINSERT [dbo].[table_4] ([id], [name], [city]) VALUES (3, N'kjjkn     ', N'jnklnm    ')\nINSERT [dbo].[table_4] ([id], [name], [city]) VALUES (4, N'kjh       ', N'jnghv     ')\nINSERT [dbo].[table_4] ([id], [name], [city]) VALUES (5, N'jk        ', N'lk        ')\nGO\nINSERT [dbo].[table_5] ([id], [name], [city]) VALUES (1, N'asdjh     ', N'kjb       ')\nINSERT [dbo].[table_5] ([id], [name], [city]) VALUES (2, N'jbkjn     ', N'knjj      ')\nINSERT [dbo].[table_5] ([id], [name], [city]) VALUES (3, N'kjjkn     ', N'jnklnm    ')\nINSERT [dbo].[table_5] ([id], [name], [city]) VALUES (4, N'kjh       ', N'jnghv     ')\nINSERT [dbo].[table_5] ([id], [name], [city]) VALUES (5, N'jk        ', N'lk        ')\nGO\nUSE [master]\nGO\nALTER DATABASE [DB1] SET  READ_WRITE \nGO\n\"\necho \"script has been executed successfully\""
  }
  name         = "sqlvm"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    subnetwork = "projects/groovy-karma-388506/regions/us-central1/subnetworks/default"
  }

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "101674418114-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }

  zone = "us-central1-a"
}
