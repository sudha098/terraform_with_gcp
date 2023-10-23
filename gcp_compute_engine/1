resource "google_compute_instance" "test_vm" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  tags         = ["dev", "bar"]

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {

    network = "default"
    access_config {
    }

  }

}
