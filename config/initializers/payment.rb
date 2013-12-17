ActiveMerchant::Billing::Integrations::Ebs.setup do |ebs|
  ebs.account_id =  #your EBS account ID
  ebs.mode = 'TEST' #EBS Mode 'TEST' or 'LIVE'
  ebs.secret_key = 'your secret key' #Provided by EBS
end
EBS_ACCOUNT = 'yogendra'