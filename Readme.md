OCI リソース・マネージャを使用して
OCI Marketplace のイメージからコンピュートインスタンスを作成するサンプル

variable.tf
- var.oracleimagename : OCI Marketplace からイメージを検索する検索キーワード
- vcn_cidr/public_subnet_cidr : VCN/SubnetのCIDR
- ad : 可用性ドメイン（１～３）
- headnode_shape : 作成するコンピュートインスタンスのシェイプ