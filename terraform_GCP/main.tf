provider "google" {
  project     = "inspiring-list-378904" //project ID
  region      = "asia-east2"            //區域
  zone        = "asia-east2-a"          //區域
}

resource "google_computer_instance" "my_server"  {
  name            = "my-gcp-server"           //vm 名
  machine_type    ="f1-micro"                 //size
  boot_disk {
      initalize_params {
        image = "debian-cloud/debian9"        //linex 系統version

      }
  }
  network_interface{
    network   = "default"
    access_config {}
  }


}