use starknet::ContractAddress;

#[starknet::interface]
pub trait IRealEstateFractionalOwnership<TContractState> {
    // Property management
    fn add_property(
        ref self: TContractState,
        property_address: felt252,
        property_description: felt252,
        property_value: u256,
        property_image_uri: felt252,
        total_shares: u256,
        share_price: u256,
        initial_owner: ContractAddress,
        property_manager: ContractAddress
    );
    
    // fn get_property_details(self: @TContractState, property_id: u256) -> PropertyDetails;
    fn get_property_manager(self: @TContractState, property_id: u256) -> ContractAddress;
    
    // Rental income
    fn distribute_rental_income(ref self: TContractState, property_id: u256, amount: u256);
    fn claim_rental_income(ref self: TContractState, property_id: u256);
    
    // Governance
    fn create_proposal(
        ref self: TContractState, 
        property_id: u256,
        // proposal_type: ProposalType, 
        description: felt252, 
        value: u256,
        recipient: ContractAddress,
        voting_period: u64
    );
    fn cast_vote(ref self: TContractState, proposal_id: u256, support: bool);
    fn execute_proposal(ref self: TContractState, proposal_id: u256);
    // fn get_proposal_details(self: @TContractState, proposal_id: u256) -> Proposal;
    
    // Property sale
    fn purchase_property(ref self: TContractState, property_id: u256);

    fn get_proposal_details(self: TContractState, proposal_id: u256)
}
