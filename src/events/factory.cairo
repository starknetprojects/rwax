use rwax::structs::asset::AssetData;
use starknet::ContractAddress;

#[derive(Drop, starknet::Event)]
pub struct AssetTokenized {
    #[key]
    pub token_id: u256,
    #[key]
    pub owner: ContractAddress,
    #[key]
    pub asset_type: felt252,
    pub asset_data: AssetData,
}

#[derive(Drop, starknet::Event)]
pub struct AssetMetadataUpdated {
    #[key]
    pub token_id: u256,
    #[key]
    pub updater: ContractAddress,
    pub new_data: AssetData,
}

#[derive(Drop, starknet::Event)]
pub struct TokenizerRoleGranted {
    #[key]
    pub account: ContractAddress,
    #[key]
    pub granter: ContractAddress,
}

#[derive(Drop, starknet::Event)]
pub struct TokenizerRoleRevoked {
    #[key]
    pub account: ContractAddress,
    #[key]
    pub revoker: ContractAddress,
}
