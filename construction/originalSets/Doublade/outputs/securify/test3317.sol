Processing contract: /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol:Danku_demo
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Danku_demo':
    |    assert(init_level < 3);
    |    // Refund remaining balance to organizer
  > |    organizer.transfer(this.balance);
    |    // Terminate contract
    |    contract_terminated = true;
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(287)

[31mViolation[0m for DAOConstantGas in contract 'Danku_demo':
    |    // If best submission passes criteria, payout to the submitter
    |    if (best_submission_accuracy >= model_accuracy_criteria) {
  > |      best_submission.payment_address.transfer(this.balance);
    |    // If the best submission fails the criteria, refund the balance back to the organizer
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(303)

[33mWarning[0m for LockedEther in contract 'Danku_demo':
    |// Data points are x, y, and z
    |
  > |contract Danku_demo {
    |  function Danku_demo() public {
    |    // Neural Network Structure:
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(5)

[31mViolation[0m for TODAmount in contract 'Danku_demo':
    |    assert(init_level < 3);
    |    // Refund remaining balance to organizer
  > |    organizer.transfer(this.balance);
    |    // Terminate contract
    |    contract_terminated = true;
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(287)

[31mViolation[0m for TODAmount in contract 'Danku_demo':
    |    // If best submission passes criteria, payout to the submitter
    |    if (best_submission_accuracy >= model_accuracy_criteria) {
  > |      best_submission.payment_address.transfer(this.balance);
    |    // If the best submission fails the criteria, refund the balance back to the organizer
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(303)

[31mViolation[0m for TODAmount in contract 'Danku_demo':
    |    // If the best submission fails the criteria, refund the balance back to the organizer
    |    } else {
  > |      organizer.transfer(this.balance);
    |    }
    |    contract_terminated = true;
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(306)

[31mViolation[0m for TODReceiver in contract 'Danku_demo':
    |    assert(init_level < 3);
    |    // Refund remaining balance to organizer
  > |    organizer.transfer(this.balance);
    |    // Terminate contract
    |    contract_terminated = true;
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(287)

[31mViolation[0m for TODReceiver in contract 'Danku_demo':
    |    // If the best submission fails the criteria, refund the balance back to the organizer
    |    } else {
  > |      organizer.transfer(this.balance);
    |    }
    |    contract_terminated = true;
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(306)

[33mWarning[0m for UnhandledException in contract 'Danku_demo':
    |    assert(init_level < 3);
    |    // Refund remaining balance to organizer
  > |    organizer.transfer(this.balance);
    |    // Terminate contract
    |    contract_terminated = true;
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(287)

[33mWarning[0m for UnhandledException in contract 'Danku_demo':
    |    // If best submission passes criteria, payout to the submitter
    |    if (best_submission_accuracy >= model_accuracy_criteria) {
  > |      best_submission.payment_address.transfer(this.balance);
    |    // If the best submission fails the criteria, refund the balance back to the organizer
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(303)

[33mWarning[0m for UnhandledException in contract 'Danku_demo':
    |    // If the best submission fails the criteria, refund the balance back to the organizer
    |    } else {
  > |      organizer.transfer(this.balance);
    |    }
    |    contract_terminated = true;
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(306)

[33mWarning[0m for UnhandledException in contract 'Danku_demo':
    |    // Randomly select training indexes
    |    while(t_index < training_partition.length) {
  > |      uint random_index = uint(sha256(block.blockhash(block.number-block_i))) % array_length;
    |      training_partition[t_index] = array[random_index];
    |      array[random_index] = array[array_length-1];
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(397)

[33mWarning[0m for UnhandledException in contract 'Danku_demo':
    |      all_data_points[index_tracker] = data_group_nonce;
    |      // Return sha256 on all data points + nonce
  > |      return sha256(all_data_points);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(478)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Danku_demo':
    |    // Randomly select training indexes
    |    while(t_index < training_partition.length) {
  > |      uint random_index = uint(sha256(block.blockhash(block.number-block_i))) % array_length;
    |      training_partition[t_index] = array[random_index];
    |      array[random_index] = array[array_length-1];
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(397)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Danku_demo':
    |      all_data_points[index_tracker] = data_group_nonce;
    |      // Return sha256 on all data points + nonce
  > |      return sha256(all_data_points);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(478)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |pragma solidity ^0.4.19;
  > |// Danku contract version 0.0.1
    |// Data points are x, y, and z
    |
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |// Data points are x, y, and z
    |
  > |contract Danku_demo {
    |  function Danku_demo() public {
    |    // Neural Network Structure:
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    // Make sure it's called in order
    |    assert(init_level == 0);
  > |    organizer = organizer_refund_address;
    |    init_level = 1;
    |    init1_block_height = block.number;
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    assert(init_level == 0);
    |    organizer = organizer_refund_address;
  > |    init_level = 1;
    |    init1_block_height = block.number;
    |
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    organizer = organizer_refund_address;
    |    init_level = 1;
  > |    init1_block_height = block.number;
    |
    |    // Make sure there are in total 20 hashed data groups
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    // 100 % => 10,000
    |    assert(accuracy_criteria > 0);
  > |    model_accuracy_criteria = accuracy_criteria;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |      }
    |      randomly_select_index(index_array);
  > |      init_level = 2;
    |    } else {
    |      // Cancel the contract if init2() hasn't been called within 5
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    assert(sha_data_group(_train_data_groups, _train_data_group_nonces) ==
    |      hashed_data_groups[training_partition[train_dg_revealed]]);
  > |    train_dg_revealed += 1;
    |    // Assign training data after verifying the corresponding hash
    |    unpack_data_groups(_train_data_groups, true);
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(140)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    unpack_data_groups(_train_data_groups, true);
    |    if (train_dg_revealed == (training_data_group_size/partition_size)) {
  > |      init_level = 3;
    |      init3_block_height = block.number;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    if (train_dg_revealed == (training_data_group_size/partition_size)) {
    |      init_level = 3;
  > |      init3_block_height = block.number;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |      assert(valid_weights(weights, num_neurons_input_layer, num_neurons_output_layer, num_neurons_hidden_layer));
    |      // Add solution to submission queue
  > |      submission_queue.push(Submission(
    |        payment_address,
    |        num_neurons_input_layer,
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    assert(sha_data_group(_test_data_groups, _test_data_group_nonces) ==
    |      hashed_data_groups[testing_partition[test_dg_revealed]]);
  > |    test_dg_revealed += 1;
    |    // Assign testing data after verifying the corresponding hash
    |    unpack_data_groups(_test_data_groups, false);
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(248)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    unpack_data_groups(_test_data_groups, false);
    |    // Use test data for evaluation
  > |    use_test_data = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(252)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    // Keep track of the most accurate model
    |    if (submission_accuracy > best_submission_accuracy) {
  > |      best_submission_index = submission_index;
    |      best_submission_accuracy = submission_accuracy;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(276)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    if (submission_accuracy > best_submission_accuracy) {
    |      best_submission_index = submission_index;
  > |      best_submission_accuracy = submission_accuracy;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(277)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    organizer.transfer(this.balance);
    |    // Terminate contract
  > |    contract_terminated = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(289)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |      organizer.transfer(this.balance);
    |    }
  > |    contract_terminated = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(308)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    while(t_index < training_partition.length) {
    |      uint random_index = uint(sha256(block.blockhash(block.number-block_i))) % array_length;
  > |      training_partition[t_index] = array[random_index];
    |      array[random_index] = array[array_length-1];
    |      array_length--;
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(398)

[31mViolation[0m for UnrestrictedWrite in contract 'Danku_demo':
    |    t_index = 0;
    |    while(t_index < testing_partition.length) {
  > |      testing_partition[t_index] = array[array_length-1];
    |      array_length--;
    |      t_index++;
  at /home/jiaming/mavs_srcs/contract@0xda2585b488e51ff8f7025c09150ef2ac60f3600d.sol(406)


