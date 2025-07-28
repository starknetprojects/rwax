use starknet::ContractAddress;

#[derive(Drop, starknet::Event)]
pub struct PriceUpdated {
    #[key]
    pub asset_id: u256,
    #[key]
    pub feeder: ContractAddress,
    pub old_price: u256,
    pub new_price: u256,
    pub timestamp: u64,
}


#[derive(Drop, starknet::Event)]
pub struct PriceFeederGranted {
    #[key]
    pub account: ContractAddress,
    #[key]
    pub granter: ContractAddress,
}


#[derive(Drop, starknet::Event)]
pub struct PriceFeederRevoked {
    #[key]
    pub account: ContractAddress,
    #[key]
    pub revoker: ContractAddress,
}


#[derive(Drop, starknet::Event)]
pub struct StalenessThresholdUpdated {
    pub old_threshold: u64,
    pub new_threshold: u64,
}
