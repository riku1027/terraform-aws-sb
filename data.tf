# NOTE: 直接prefix_listを参照することも可能だが、prefix_listのidはregionによって異なるため、動的に取得する
data "aws_prefix_list" "s3_pl" {
  name = "com.amazonaws.*.s3"
}
