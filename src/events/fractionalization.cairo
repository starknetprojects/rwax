use starknet::ContractAddress;

#[derive(Copy, Drop, starknet::Event)]
pub struct AssetFractionalized {
    #[key]
    pub original_token_id: u256,
    #[key]
    pub rwa_token_address: ContractAddress,
    #[key]
    pub fractional_token_address: ContractAddress,
    pub total_fractions: u256,
    pub price_per_fraction: u256,
    pub owner: ContractAddress,
}

#[derive(Copy, Drop, starknet::Event)]
pub struct AssetReconstructed {
    #[key]
    pub original_token_id: u256,
    #[key]
    pub rwa_token_address: ContractAddress,
    #[key]
    pub fractional_token_address: ContractAddress,
    pub reconstructor: ContractAddress,
}

#[derive(Copy, Drop, starknet::Event)]
pub struct EmergencyUnlock {
    #[key]
    pub original_token_id: u256,
    #[key]
    pub admin: ContractAddress,
    pub fractional_token_address: ContractAddress,
}
