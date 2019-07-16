class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze({ 'japan' => 'yen', 'US' => 'dollar', 'India' => 'ruppe' })
end
