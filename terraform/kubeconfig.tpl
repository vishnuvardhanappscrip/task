# kubeconfig.tpl
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${cluster_certificate_authority_data}
    server: ${cluster_endpoint}
  name: arn:aws:eks:${aws_region}:${aws_account_id}:cluster/${cluster_name}
contexts:
- context:
    cluster: arn:aws:eks:${aws_region}:${aws_account_id}:cluster/${cluster_name}
    user: arn:aws:eks:${aws_region}:${aws_account_id}:cluster/${cluster_name}
  name: arn:aws:eks:${aws_region}:${aws_account_id}:cluster/${cluster_name}
current-context: arn:aws:eks:${aws_region}:${aws_account_id}:cluster/${cluster_name}
kind: Config
preferences: {}
users:
- name: arn:aws:eks:${aws_region}:${aws_account_id}:cluster/${cluster_name}
  user:
    exec:
      apiVersion: client.authentication.k8s.io/v1beta1
      command: aws
      args:
        - "eks"
        - "get-token"
        - "--cluster-name"
        - "${cluster_name}"
        - "--region"
        - "${aws_region}"
