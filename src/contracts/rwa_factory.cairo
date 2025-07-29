use rwax::interfaces::irwa_factory::IRWAFactory;
use rwax::structs::asset::AssetData;
use starknet::{ContractAddress, storage::{StoragePointerReadAccess, StoragePointerWriteAccess}};

const TOKENIZER_ROLE: felt252 = selector!("TOKENIZER_ROLE");

#[starknet::contract]
mod RWAFactory {
    use super::{ContractAddress, StoragePointerReadAccess, StoragePointerWriteAccess};
    use super::{IRWAFactory, AssetData};

    // === Storage ===
    #[storage]
    struct Storage {
        fractionalization_module: ContractAddress,
        token_counter: u256,
        admin: ContractAddress,
    }

    // === Constructor ===
    #[constructor]
    fn constructor(
        ref self: ContractState,
        admin: ContractAddress,
        fractionalization_module: ContractAddress,
    ) {
        // Initialize storage variables
        self.admin.write(admin);
        self.token_counter.write(0);
        self.fractionalization_module.write(fractionalization_module);
    }

    // === IRWAFactory Interface Implementation ===
    #[abi(embed_v0)]
    impl RWAFactoryImpl of IRWAFactory<ContractState> {
        fn tokenize_asset(
            ref self: ContractState, owner: ContractAddress, asset_data: AssetData,
        ) -> u256 {
            // TODO
            panic!("Not implemented")
        }

        fn update_asset_metadata(ref self: ContractState, token_id: u256, new_data: AssetData) {
            // TODO
            panic!("Not implemented")
        }

        fn grant_tokenizer_role(ref self: ContractState, account: ContractAddress) {
            // TODO
            panic!("Not implemented")
        }

        fn revoke_tokenizer_role(ref self: ContractState, account: ContractAddress) {
            // TODO
            panic!("Not implemented")
        }

        fn get_asset_data(self: @ContractState, token_id: u256) -> AssetData {
            // TODO
            panic!("Not implemented")
        }

        fn has_tokenizer_role(self: @ContractState, account: ContractAddress) -> bool {
            // TODO
            panic!("Not implemented")
        }

        fn get_total_assets(self: @ContractState) -> u256 {
            // TODO
            panic!("Not implemented")
        }

        fn get_fractionalization_module(self: @ContractState) -> ContractAddress {
            self.fractionalization_module.read()
        }
    }
}




