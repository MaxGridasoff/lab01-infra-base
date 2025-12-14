resource "kubernetes_namespace" "test" {
  metadata = {
    name = "test_ns"
  }
}
