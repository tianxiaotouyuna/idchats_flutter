// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to IDChats`
  String get guidePage_welcome {
    return Intl.message(
      'Welcome to IDChats',
      name: 'guidePage_welcome',
      desc: '',
      args: [],
    );
  }

  /// `Infinite Relationship of Web3`
  String get guidePage_web3 {
    return Intl.message(
      'Infinite Relationship of Web3',
      name: 'guidePage_web3',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get guidePage_goon {
    return Intl.message(
      'Continue',
      name: 'guidePage_goon',
      desc: '',
      args: [],
    );
  }

  /// `IDChats! First`
  String get guidePage_first {
    return Intl.message(
      'IDChats! First',
      name: 'guidePage_first',
      desc: '',
      args: [],
    );
  }

  /// `Let's protect your wallet.`
  String get guidePage_protect {
    return Intl.message(
      'Let\'s protect your wallet.',
      name: 'guidePage_protect',
      desc: '',
      args: [],
    );
  }

  /// `You cannot change the passcode by now`
  String get guidePage_unable {
    return Intl.message(
      'You cannot change the passcode by now',
      name: 'guidePage_unable',
      desc: '',
      args: [],
    );
  }

  /// `Passcode`
  String get guidePage_pwd {
    return Intl.message(
      'Passcode',
      name: 'guidePage_pwd',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the passcode`
  String get guidePage_pleasePwd {
    return Intl.message(
      'Please enter the passcode',
      name: 'guidePage_pleasePwd',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Passcode`
  String get guidePage_confirmPwd {
    return Intl.message(
      'Confirm Passcode',
      name: 'guidePage_confirmPwd',
      desc: '',
      args: [],
    );
  }

  /// `Please enter again`
  String get guidePage_pleasePwd2 {
    return Intl.message(
      'Please enter again',
      name: 'guidePage_pleasePwd2',
      desc: '',
      args: [],
    );
  }

  /// `Password at least 8 digits!`
  String get guidePage_eightPwd {
    return Intl.message(
      'Password at least 8 digits!',
      name: 'guidePage_eightPwd',
      desc: '',
      args: [],
    );
  }

  /// `Inconsistent password input!`
  String get guidePage_notEqual {
    return Intl.message(
      'Inconsistent password input!',
      name: 'guidePage_notEqual',
      desc: '',
      args: [],
    );
  }

  /// `Add Account`
  String get guidePage_addAccount {
    return Intl.message(
      'Add Account',
      name: 'guidePage_addAccount',
      desc: '',
      args: [],
    );
  }

  /// `Import Wallet`
  String get guidePage_import {
    return Intl.message(
      'Import Wallet',
      name: 'guidePage_import',
      desc: '',
      args: [],
    );
  }

  /// `Create Wallet`
  String get guidePage_create1 {
    return Intl.message(
      'Create Wallet',
      name: 'guidePage_create1',
      desc: '',
      args: [],
    );
  }

  /// `Imported account will not be associated with your originally created Private Key of MetaMask account. Get more information about Imported Account,learn more.`
  String get guidePage_imported {
    return Intl.message(
      'Imported account will not be associated with your originally created Private Key of MetaMask account. Get more information about Imported Account,learn more.',
      name: 'guidePage_imported',
      desc: '',
      args: [],
    );
  }

  /// `Select Methods`
  String get guidePage_methods {
    return Intl.message(
      'Select Methods',
      name: 'guidePage_methods',
      desc: '',
      args: [],
    );
  }

  /// `Recovery Phrase`
  String get guidePage_recovery {
    return Intl.message(
      'Recovery Phrase',
      name: 'guidePage_recovery',
      desc: '',
      args: [],
    );
  }

  /// `Paste Recovery Phrase`
  String get guidePage_paste1 {
    return Intl.message(
      'Paste Recovery Phrase',
      name: 'guidePage_paste1',
      desc: '',
      args: [],
    );
  }

  /// `Please paste your Recovery Phrase`
  String get guidePage_pastePhrase {
    return Intl.message(
      'Please paste your Recovery Phrase',
      name: 'guidePage_pastePhrase',
      desc: '',
      args: [],
    );
  }

  /// `Keystore`
  String get guidePage_keystore {
    return Intl.message(
      'Keystore',
      name: 'guidePage_keystore',
      desc: '',
      args: [],
    );
  }

  /// `Private Key`
  String get guidePage_private {
    return Intl.message(
      'Private Key',
      name: 'guidePage_private',
      desc: '',
      args: [],
    );
  }

  /// `Paste Private Key`
  String get guidePage_paste2 {
    return Intl.message(
      'Paste Private Key',
      name: 'guidePage_paste2',
      desc: '',
      args: [],
    );
  }

  /// `Please paste your Private Key`
  String get guidePage_pastePrivate {
    return Intl.message(
      'Please paste your Private Key',
      name: 'guidePage_pastePrivate',
      desc: '',
      args: [],
    );
  }

  /// `Start Import`
  String get guidePage_start {
    return Intl.message(
      'Start Import',
      name: 'guidePage_start',
      desc: '',
      args: [],
    );
  }

  /// `The wallet already exists, please do not import it repeatedly`
  String get guidePage_isIn {
    return Intl.message(
      'The wallet already exists, please do not import it repeatedly',
      name: 'guidePage_isIn',
      desc: '',
      args: [],
    );
  }

  /// `importing`
  String get guidePage_inserting {
    return Intl.message(
      'importing',
      name: 'guidePage_inserting',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a mnemonic`
  String get guidePage_pleaseRecovery {
    return Intl.message(
      'Please enter a mnemonic',
      name: 'guidePage_pleaseRecovery',
      desc: '',
      args: [],
    );
  }

  /// `Please upload your Keystore`
  String get guidePage_upload {
    return Intl.message(
      'Please upload your Keystore',
      name: 'guidePage_upload',
      desc: '',
      args: [],
    );
  }

  /// `Select file`
  String get guidePage_file {
    return Intl.message(
      'Select file',
      name: 'guidePage_file',
      desc: '',
      args: [],
    );
  }

  /// `Please enter Keystore passcode`
  String get guidePage_keypasscode {
    return Intl.message(
      'Please enter Keystore passcode',
      name: 'guidePage_keypasscode',
      desc: '',
      args: [],
    );
  }

  /// `Please import the correct private key`
  String get guidePage_pleaseRightPrivate {
    return Intl.message(
      'Please import the correct private key',
      name: 'guidePage_pleaseRightPrivate',
      desc: '',
      args: [],
    );
  }

  /// `Wallet import error:`
  String get guidePage_insertError {
    return Intl.message(
      'Wallet import error:',
      name: 'guidePage_insertError',
      desc: '',
      args: [],
    );
  }

  /// `Wallet import successful`
  String get guidePage_insertSucces {
    return Intl.message(
      'Wallet import successful',
      name: 'guidePage_insertSucces',
      desc: '',
      args: [],
    );
  }

  /// `Backup`
  String get guidePage_backup {
    return Intl.message(
      'Backup',
      name: 'guidePage_backup',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get guidePage_verify {
    return Intl.message(
      'Verify',
      name: 'guidePage_verify',
      desc: '',
      args: [],
    );
  }

  /// `Save and Verify Your Recovery Phrase`
  String get guidePage_your {
    return Intl.message(
      'Save and Verify Your Recovery Phrase',
      name: 'guidePage_your',
      desc: '',
      args: [],
    );
  }

  /// `This is the only way to restore your wallet`
  String get guidePage_restore {
    return Intl.message(
      'This is the only way to restore your wallet',
      name: 'guidePage_restore',
      desc: '',
      args: [],
    );
  }

  /// `Copy mnemonics:`
  String get guidePage_copyPhrase {
    return Intl.message(
      'Copy mnemonics:',
      name: 'guidePage_copyPhrase',
      desc: '',
      args: [],
    );
  }

  /// `Copy successfully`
  String get guidePage_copyScuess {
    return Intl.message(
      'Copy successfully',
      name: 'guidePage_copyScuess',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get guidePage_create2 {
    return Intl.message(
      'Create',
      name: 'guidePage_create2',
      desc: '',
      args: [],
    );
  }

  /// `Verify and enter the corresponding mnemonic word`
  String get guidePage_verifyMnemonic {
    return Intl.message(
      'Verify and enter the corresponding mnemonic word',
      name: 'guidePage_verifyMnemonic',
      desc: '',
      args: [],
    );
  }

  /// `Mnemonics are incorrect, please proofread`
  String get guidePage_mnemonicError {
    return Intl.message(
      'Mnemonics are incorrect, please proofread',
      name: 'guidePage_mnemonicError',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to IDChats`
  String get guidePage_welcome1 {
    return Intl.message(
      'Welcome to IDChats',
      name: 'guidePage_welcome1',
      desc: '',
      args: [],
    );
  }

  /// `Mailbox`
  String get guidePage_mailbox {
    return Intl.message(
      'Mailbox',
      name: 'guidePage_mailbox',
      desc: '',
      args: [],
    );
  }

  /// `Enter Email`
  String get guidePage_enter1 {
    return Intl.message(
      'Enter Email',
      name: 'guidePage_enter1',
      desc: '',
      args: [],
    );
  }

  /// `Please enter Email`
  String get guidePage_please1 {
    return Intl.message(
      'Please enter Email',
      name: 'guidePage_please1',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get guidePage_password {
    return Intl.message(
      'Password',
      name: 'guidePage_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter an 8-12 digit alphanumeric combination`
  String get guidePage_enter2 {
    return Intl.message(
      'Enter an 8-12 digit alphanumeric combination',
      name: 'guidePage_enter2',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the correct password`
  String get guidePage_please2 {
    return Intl.message(
      'Please enter the correct password',
      name: 'guidePage_please2',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get guidePage_forget {
    return Intl.message(
      'Forget Password?',
      name: 'guidePage_forget',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get guidePage_login {
    return Intl.message(
      'Login',
      name: 'guidePage_login',
      desc: '',
      args: [],
    );
  }

  /// `Immediately`
  String get guidePage_immediately {
    return Intl.message(
      'Immediately',
      name: 'guidePage_immediately',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get guidePage_register {
    return Intl.message(
      'Register',
      name: 'guidePage_register',
      desc: '',
      args: [],
    );
  }

  /// `Register for IDChats`
  String get guidePage_register1 {
    return Intl.message(
      'Register for IDChats',
      name: 'guidePage_register1',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get guidePage_verification {
    return Intl.message(
      'Verification Code',
      name: 'guidePage_verification',
      desc: '',
      args: [],
    );
  }

  /// `Enter verification code`
  String get guidePage_enter3 {
    return Intl.message(
      'Enter verification code',
      name: 'guidePage_enter3',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the verification code`
  String get guidePage_please3 {
    return Intl.message(
      'Please enter the verification code',
      name: 'guidePage_please3',
      desc: '',
      args: [],
    );
  }

  /// `Get Code`
  String get guidePage_get {
    return Intl.message(
      'Get Code',
      name: 'guidePage_get',
      desc: '',
      args: [],
    );
  }

  /// `Have an account to log in`
  String get guidePage_have {
    return Intl.message(
      'Have an account to log in',
      name: 'guidePage_have',
      desc: '',
      args: [],
    );
  }

  /// `Verification code sent`
  String get guidePage_verification1 {
    return Intl.message(
      'Verification code sent',
      name: 'guidePage_verification1',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get guidePage_forget1 {
    return Intl.message(
      'Forget Password',
      name: 'guidePage_forget1',
      desc: '',
      args: [],
    );
  }

  /// `Current Email`
  String get guidePage_current {
    return Intl.message(
      'Current Email',
      name: 'guidePage_current',
      desc: '',
      args: [],
    );
  }

  /// `Enter the current mailbox`
  String get guidePage_enter4 {
    return Intl.message(
      'Enter the current mailbox',
      name: 'guidePage_enter4',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the current mailbox`
  String get guidePage_please4 {
    return Intl.message(
      'Please enter the current mailbox',
      name: 'guidePage_please4',
      desc: '',
      args: [],
    );
  }

  /// `Modify`
  String get guidePage_modify {
    return Intl.message(
      'Modify',
      name: 'guidePage_modify',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get guidePage_change {
    return Intl.message(
      'Change Password',
      name: 'guidePage_change',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get guidePage_new {
    return Intl.message(
      'New Password',
      name: 'guidePage_new',
      desc: '',
      args: [],
    );
  }

  /// `Enter new password`
  String get guidePage_enter5 {
    return Intl.message(
      'Enter new password',
      name: 'guidePage_enter5',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a new password`
  String get guidePage_please5 {
    return Intl.message(
      'Please enter a new password',
      name: 'guidePage_please5',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get guidePage_confirm1 {
    return Intl.message(
      'Confirm Password',
      name: 'guidePage_confirm1',
      desc: '',
      args: [],
    );
  }

  /// `Enter the new password again`
  String get guidePage_enter6 {
    return Intl.message(
      'Enter the new password again',
      name: 'guidePage_enter6',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the new password again`
  String get guidePage_please6 {
    return Intl.message(
      'Please enter the new password again',
      name: 'guidePage_please6',
      desc: '',
      args: [],
    );
  }

  /// `Set payment password`
  String get guidePage_set {
    return Intl.message(
      'Set payment password',
      name: 'guidePage_set',
      desc: '',
      args: [],
    );
  }

  /// `Payment Password`
  String get guidePage_payment {
    return Intl.message(
      'Payment Password',
      name: 'guidePage_payment',
      desc: '',
      args: [],
    );
  }

  /// `Enter 8-digit combination`
  String get guidePage_enter7 {
    return Intl.message(
      'Enter 8-digit combination',
      name: 'guidePage_enter7',
      desc: '',
      args: [],
    );
  }

  /// `Enter the payment password again`
  String get guidePage_enter8 {
    return Intl.message(
      'Enter the payment password again',
      name: 'guidePage_enter8',
      desc: '',
      args: [],
    );
  }

  /// `Enter a 6-digit combination`
  String get guidePage_enter9 {
    return Intl.message(
      'Enter a 6-digit combination',
      name: 'guidePage_enter9',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get guidePage_confirm2 {
    return Intl.message(
      'Confirm',
      name: 'guidePage_confirm2',
      desc: '',
      args: [],
    );
  }

  /// `Mailbox Settings`
  String get guidePage_mailbox1 {
    return Intl.message(
      'Mailbox Settings',
      name: 'guidePage_mailbox1',
      desc: '',
      args: [],
    );
  }

  /// `Change Mailbox`
  String get guidePage_change1 {
    return Intl.message(
      'Change Mailbox',
      name: 'guidePage_change1',
      desc: '',
      args: [],
    );
  }

  /// `Change email password`
  String get guidePage_change2 {
    return Intl.message(
      'Change email password',
      name: 'guidePage_change2',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get guidePage_current1 {
    return Intl.message(
      'Current Password',
      name: 'guidePage_current1',
      desc: '',
      args: [],
    );
  }

  /// `Enter current password`
  String get guidePage_enter10 {
    return Intl.message(
      'Enter current password',
      name: 'guidePage_enter10',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the current password`
  String get guidePage_please10 {
    return Intl.message(
      'Please enter the current password',
      name: 'guidePage_please10',
      desc: '',
      args: [],
    );
  }

  /// `New Mailbox`
  String get guidePage_new1 {
    return Intl.message(
      'New Mailbox',
      name: 'guidePage_new1',
      desc: '',
      args: [],
    );
  }

  /// `Enter a new email`
  String get guidePage_enter11 {
    return Intl.message(
      'Enter a new email',
      name: 'guidePage_enter11',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a new mailbox`
  String get guidePage_please11 {
    return Intl.message(
      'Please enter a new mailbox',
      name: 'guidePage_please11',
      desc: '',
      args: [],
    );
  }

  /// `Replace`
  String get guidePage_replace {
    return Intl.message(
      'Replace',
      name: 'guidePage_replace',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the correct mailbox`
  String get guidePage_please12 {
    return Intl.message(
      'Please enter the correct mailbox',
      name: 'guidePage_please12',
      desc: '',
      args: [],
    );
  }

  /// `Reacquire`
  String get guidePage_reacquire {
    return Intl.message(
      'Reacquire',
      name: 'guidePage_reacquire',
      desc: '',
      args: [],
    );
  }

  /// `Registered successfully`
  String get guidePage_registered {
    return Intl.message(
      'Registered successfully',
      name: 'guidePage_registered',
      desc: '',
      args: [],
    );
  }

  /// `Sending succeeded`
  String get guidePage_send100 {
    return Intl.message(
      'Sending succeeded',
      name: 'guidePage_send100',
      desc: '',
      args: [],
    );
  }

  /// `Modified successfully`
  String get guidePage_modify100 {
    return Intl.message(
      'Modified successfully',
      name: 'guidePage_modify100',
      desc: '',
      args: [],
    );
  }

  /// `Enter the application`
  String get guidePage_goInApp {
    return Intl.message(
      'Enter the application',
      name: 'guidePage_goInApp',
      desc: '',
      args: [],
    );
  }

  /// `Login Method`
  String get guidePage_loginType {
    return Intl.message(
      'Login Method',
      name: 'guidePage_loginType',
      desc: '',
      args: [],
    );
  }

  /// `Email Login`
  String get guidePage_emailLogin {
    return Intl.message(
      'Email Login',
      name: 'guidePage_emailLogin',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account yet. Sign up`
  String get guidePage_noAccount {
    return Intl.message(
      'Don\'t have an account yet. Sign up',
      name: 'guidePage_noAccount',
      desc: '',
      args: [],
    );
  }

  /// `Account Login`
  String get guidePage_accountLogin {
    return Intl.message(
      'Account Login',
      name: 'guidePage_accountLogin',
      desc: '',
      args: [],
    );
  }

  /// `Third-party wallet login`
  String get guidePage_thirdLogin {
    return Intl.message(
      'Third-party wallet login',
      name: 'guidePage_thirdLogin',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get home_messages {
    return Intl.message(
      'Chats',
      name: 'home_messages',
      desc: '',
      args: [],
    );
  }

  /// `List`
  String get home_list {
    return Intl.message(
      'List',
      name: 'home_list',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get home_following {
    return Intl.message(
      'Following',
      name: 'home_following',
      desc: '',
      args: [],
    );
  }

  /// `Message From Strangers`
  String get home_messageFromStrangers {
    return Intl.message(
      'Message From Strangers',
      name: 'home_messageFromStrangers',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get home_search {
    return Intl.message(
      'Search',
      name: 'home_search',
      desc: '',
      args: [],
    );
  }

  /// `Pin`
  String get home_pin {
    return Intl.message(
      'Pin',
      name: 'home_pin',
      desc: '',
      args: [],
    );
  }

  /// `Unpin`
  String get home_unpin {
    return Intl.message(
      'Unpin',
      name: 'home_unpin',
      desc: '',
      args: [],
    );
  }

  /// `Search or start a new conversation`
  String get home_start {
    return Intl.message(
      'Search or start a new conversation',
      name: 'home_start',
      desc: '',
      args: [],
    );
  }

  /// `IM account successful login`
  String get home_login {
    return Intl.message(
      'IM account successful login',
      name: 'home_login',
      desc: '',
      args: [],
    );
  }

  /// `No local record, start a new conversation now?`
  String get home_local {
    return Intl.message(
      'No local record, start a new conversation now?',
      name: 'home_local',
      desc: '',
      args: [],
    );
  }

  /// `Please enter messages...`
  String get home_enter {
    return Intl.message(
      'Please enter messages...',
      name: 'home_enter',
      desc: '',
      args: [],
    );
  }

  /// `This is your own address, cannot start it!`
  String get home_own {
    return Intl.message(
      'This is your own address, cannot start it!',
      name: 'home_own',
      desc: '',
      args: [],
    );
  }

  /// `IM account login successful`
  String get home_imScuess {
    return Intl.message(
      'IM account login successful',
      name: 'home_imScuess',
      desc: '',
      args: [],
    );
  }

  /// `IM account login error`
  String get home_imError {
    return Intl.message(
      'IM account login error',
      name: 'home_imError',
      desc: '',
      args: [],
    );
  }

  /// `Error getting user information:`
  String get home_imInfoError {
    return Intl.message(
      'Error getting user information:',
      name: 'home_imInfoError',
      desc: '',
      args: [],
    );
  }

  /// `Message sending failed:`
  String get home_sendError {
    return Intl.message(
      'Message sending failed:',
      name: 'home_sendError',
      desc: '',
      args: [],
    );
  }

  /// `The group he joined`
  String get home_thegroup {
    return Intl.message(
      'The group he joined',
      name: 'home_thegroup',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get home_more {
    return Intl.message(
      'More',
      name: 'home_more',
      desc: '',
      args: [],
    );
  }

  /// `Community List`
  String get home_community100 {
    return Intl.message(
      'Community List',
      name: 'home_community100',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get common_error {
    return Intl.message(
      'Error',
      name: 'common_error',
      desc: '',
      args: [],
    );
  }

  /// `Scuess`
  String get common_scuess {
    return Intl.message(
      'Scuess',
      name: 'common_scuess',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get common_loading {
    return Intl.message(
      'Loading...',
      name: 'common_loading',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get common_nodata {
    return Intl.message(
      'No Data',
      name: 'common_nodata',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get common_wallet {
    return Intl.message(
      'Wallet',
      name: 'common_wallet',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get common_confirm {
    return Intl.message(
      'Confirm',
      name: 'common_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get common_cancle {
    return Intl.message(
      'Cancel',
      name: 'common_cancle',
      desc: '',
      args: [],
    );
  }

  /// `Binance Smart Chain`
  String get common_binanceChain {
    return Intl.message(
      'Binance Smart Chain',
      name: 'common_binanceChain',
      desc: '',
      args: [],
    );
  }

  /// `Ethereum`
  String get common_ethereum {
    return Intl.message(
      'Ethereum',
      name: 'common_ethereum',
      desc: '',
      args: [],
    );
  }

  /// `Polygon`
  String get common_polygon {
    return Intl.message(
      'Polygon',
      name: 'common_polygon',
      desc: '',
      args: [],
    );
  }

  /// `Enter the passcode`
  String get common_pleasePwd {
    return Intl.message(
      'Enter the passcode',
      name: 'common_pleasePwd',
      desc: '',
      args: [],
    );
  }

  /// `Telephone`
  String get common_telephone {
    return Intl.message(
      'Telephone',
      name: 'common_telephone',
      desc: '',
      args: [],
    );
  }

  /// `SMS`
  String get common_sms {
    return Intl.message(
      'SMS',
      name: 'common_sms',
      desc: '',
      args: [],
    );
  }

  /// `Modified successfully`
  String get common_changeSucess {
    return Intl.message(
      'Modified successfully',
      name: 'common_changeSucess',
      desc: '',
      args: [],
    );
  }

  /// `Saving...`
  String get common_saving {
    return Intl.message(
      'Saving...',
      name: 'common_saving',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get common_save {
    return Intl.message(
      'Save',
      name: 'common_save',
      desc: '',
      args: [],
    );
  }

  /// `Save Successfully`
  String get common_saveSucess {
    return Intl.message(
      'Save Successfully',
      name: 'common_saveSucess',
      desc: '',
      args: [],
    );
  }

  /// `Save Failed`
  String get common_saveFailed {
    return Intl.message(
      'Save Failed',
      name: 'common_saveFailed',
      desc: '',
      args: [],
    );
  }

  /// `Community`
  String get common_commutie {
    return Intl.message(
      'Community',
      name: 'common_commutie',
      desc: '',
      args: [],
    );
  }

  /// `Heat`
  String get common_hot {
    return Intl.message(
      'Heat',
      name: 'common_hot',
      desc: '',
      args: [],
    );
  }

  /// `Page To Be Developed`
  String get common_todo {
    return Intl.message(
      'Page To Be Developed',
      name: 'common_todo',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get common_messages {
    return Intl.message(
      'Chats',
      name: 'common_messages',
      desc: '',
      args: [],
    );
  }

  /// `My`
  String get common_my {
    return Intl.message(
      'My',
      name: 'common_my',
      desc: '',
      args: [],
    );
  }

  /// `Please`
  String get common_please {
    return Intl.message(
      'Please',
      name: 'common_please',
      desc: '',
      args: [],
    );
  }

  /// `Send to`
  String get common_send {
    return Intl.message(
      'Send to',
      name: 'common_send',
      desc: '',
      args: [],
    );
  }

  /// `channel`
  String get common_channel {
    return Intl.message(
      'channel',
      name: 'common_channel',
      desc: '',
      args: [],
    );
  }

  /// `Load earlier messages`
  String get common_loadmore {
    return Intl.message(
      'Load earlier messages',
      name: 'common_loadmore',
      desc: '',
      args: [],
    );
  }

  /// `Sure`
  String get common_sure {
    return Intl.message(
      'Sure',
      name: 'common_sure',
      desc: '',
      args: [],
    );
  }

  /// `No personal profile`
  String get common_thisguy {
    return Intl.message(
      'No personal profile',
      name: 'common_thisguy',
      desc: '',
      args: [],
    );
  }

  /// `Transfer`
  String get my_transfer {
    return Intl.message(
      'Transfer',
      name: 'my_transfer',
      desc: '',
      args: [],
    );
  }

  /// `Receive`
  String get my_receive {
    return Intl.message(
      'Receive',
      name: 'my_receive',
      desc: '',
      args: [],
    );
  }

  /// `Scan QR Code`
  String get my_scanQRCode {
    return Intl.message(
      'Scan QR Code',
      name: 'my_scanQRCode',
      desc: '',
      args: [],
    );
  }

  /// `Followers`
  String get my_followers {
    return Intl.message(
      'Followers',
      name: 'my_followers',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get my_details {
    return Intl.message(
      'Details',
      name: 'my_details',
      desc: '',
      args: [],
    );
  }

  /// `Assets`
  String get my_assets {
    return Intl.message(
      'Assets',
      name: 'my_assets',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get my_search {
    return Intl.message(
      'Search',
      name: 'my_search',
      desc: '',
      args: [],
    );
  }

  /// `Receiver`
  String get my_receiver {
    return Intl.message(
      'Receiver',
      name: 'my_receiver',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get my_amount {
    return Intl.message(
      'Amount',
      name: 'my_amount',
      desc: '',
      args: [],
    );
  }

  /// `Enter or paste the wallet address`
  String get my_enterAddress {
    return Intl.message(
      'Enter or paste the wallet address',
      name: 'my_enterAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter amount`
  String get my_enterPayCount {
    return Intl.message(
      'Please enter amount',
      name: 'my_enterPayCount',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get my_balance {
    return Intl.message(
      'Balance',
      name: 'my_balance',
      desc: '',
      args: [],
    );
  }

  /// `Average`
  String get my_average {
    return Intl.message(
      'Average',
      name: 'my_average',
      desc: '',
      args: [],
    );
  }

  /// `Miner Fee`
  String get my_minerFee {
    return Intl.message(
      'Miner Fee',
      name: 'my_minerFee',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get my_copy {
    return Intl.message(
      'Copy',
      name: 'my_copy',
      desc: '',
      args: [],
    );
  }

  /// `Only transfer Ethereum assets to this address!`
  String get my_receiverTips1 {
    return Intl.message(
      'Only transfer Ethereum assets to this address!',
      name: 'my_receiverTips1',
      desc: '',
      args: [],
    );
  }

  /// `Only transfer Binance Smart Chain assets to this address!`
  String get my_receiverTips2 {
    return Intl.message(
      'Only transfer Binance Smart Chain assets to this address!',
      name: 'my_receiverTips2',
      desc: '',
      args: [],
    );
  }

  /// `Only transfer Polygon assets to this address!`
  String get my_receiverTips3 {
    return Intl.message(
      'Only transfer Polygon assets to this address!',
      name: 'my_receiverTips3',
      desc: '',
      args: [],
    );
  }

  /// `Wallets`
  String get my_wallets {
    return Intl.message(
      'Wallets',
      name: 'my_wallets',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Details`
  String get my_walletDetails {
    return Intl.message(
      'Wallet Details',
      name: 'my_walletDetails',
      desc: '',
      args: [],
    );
  }

  /// `Domain Name Setting`
  String get my_domainNameSetting {
    return Intl.message(
      'Domain Name Setting',
      name: 'my_domainNameSetting',
      desc: '',
      args: [],
    );
  }

  /// `Social Account Connection`
  String get my_socialAccountConnection {
    return Intl.message(
      'Social Account Connection',
      name: 'my_socialAccountConnection',
      desc: '',
      args: [],
    );
  }

  /// `Export Private Key`
  String get my_exportPrivateKey {
    return Intl.message(
      'Export Private Key',
      name: 'my_exportPrivateKey',
      desc: '',
      args: [],
    );
  }

  /// `Export Secret Recovery Phrase"`
  String get my_exportSecretRecoveryPhrase {
    return Intl.message(
      'Export Secret Recovery Phrase"',
      name: 'my_exportSecretRecoveryPhrase',
      desc: '',
      args: [],
    );
  }

  /// `Export Keystore`
  String get my_exportKeystore {
    return Intl.message(
      'Export Keystore',
      name: 'my_exportKeystore',
      desc: '',
      args: [],
    );
  }

  /// `Change Passcode`
  String get my_changePasscode {
    return Intl.message(
      'Change Passcode',
      name: 'my_changePasscode',
      desc: '',
      args: [],
    );
  }

  /// `Delete Wallet`
  String get my_deleteWallet {
    return Intl.message(
      'Delete Wallet',
      name: 'my_deleteWallet',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get my_aboutUs {
    return Intl.message(
      'About Us',
      name: 'my_aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `System Settings`
  String get my_systemSettings {
    return Intl.message(
      'System Settings',
      name: 'my_systemSettings',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get my_language {
    return Intl.message(
      'Language',
      name: 'my_language',
      desc: '',
      args: [],
    );
  }

  /// `Currency Unit`
  String get my_currencyUnit {
    return Intl.message(
      'Currency Unit',
      name: 'my_currencyUnit',
      desc: '',
      args: [],
    );
  }

  /// `NFT Details`
  String get my_nFTDetails {
    return Intl.message(
      'NFT Details',
      name: 'my_nFTDetails',
      desc: '',
      args: [],
    );
  }

  /// `Chinese Yuan (CNY)`
  String get my_chineseYuan {
    return Intl.message(
      'Chinese Yuan (CNY)',
      name: 'my_chineseYuan',
      desc: '',
      args: [],
    );
  }

  /// `Dollor (USD)`
  String get my_dollorUSD {
    return Intl.message(
      'Dollor (USD)',
      name: 'my_dollorUSD',
      desc: '',
      args: [],
    );
  }

  /// `Updates`
  String get my_updates {
    return Intl.message(
      'Updates',
      name: 'my_updates',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get my_setting {
    return Intl.message(
      'Setting',
      name: 'my_setting',
      desc: '',
      args: [],
    );
  }

  /// `Wallets Management`
  String get my_walletsManagement {
    return Intl.message(
      'Wallets Management',
      name: 'my_walletsManagement',
      desc: '',
      args: [],
    );
  }

  /// `Here to edit personal information`
  String get my_edit {
    return Intl.message(
      'Here to edit personal information',
      name: 'my_edit',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get my_all {
    return Intl.message(
      'All',
      name: 'my_all',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the correct address`
  String get my_rightAddress {
    return Intl.message(
      'Please enter the correct address',
      name: 'my_rightAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the transfer quantity`
  String get my_transferAmount {
    return Intl.message(
      'Please enter the transfer quantity',
      name: 'my_transferAmount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get my_pleaseTelphone {
    return Intl.message(
      'Please enter your phone number',
      name: 'my_pleaseTelphone',
      desc: '',
      args: [],
    );
  }

  /// `Please enter verification code`
  String get my_vercode {
    return Intl.message(
      'Please enter verification code',
      name: 'my_vercode',
      desc: '',
      args: [],
    );
  }

  /// `get verification code`
  String get my_getVercode {
    return Intl.message(
      'get verification code',
      name: 'my_getVercode',
      desc: '',
      args: [],
    );
  }

  /// `Phone number format error`
  String get my_telError {
    return Intl.message(
      'Phone number format error',
      name: 'my_telError',
      desc: '',
      args: [],
    );
  }

  /// `Next Step`
  String get my_next {
    return Intl.message(
      'Next Step',
      name: 'my_next',
      desc: '',
      args: [],
    );
  }

  /// `Binding success`
  String get my_bindScuess {
    return Intl.message(
      'Binding success',
      name: 'my_bindScuess',
      desc: '',
      args: [],
    );
  }

  /// `Please enter edit content`
  String get my_pleaseContent {
    return Intl.message(
      'Please enter edit content',
      name: 'my_pleaseContent',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get my_send {
    return Intl.message(
      'Send',
      name: 'my_send',
      desc: '',
      args: [],
    );
  }

  /// `Send NFT`
  String get my_sendNft {
    return Intl.message(
      'Send NFT',
      name: 'my_sendNft',
      desc: '',
      args: [],
    );
  }

  /// `Failed to switch IM account`
  String get my_exchangeImError {
    return Intl.message(
      'Failed to switch IM account',
      name: 'my_exchangeImError',
      desc: '',
      args: [],
    );
  }

  /// `My Fans`
  String get my_myFans {
    return Intl.message(
      'My Fans',
      name: 'my_myFans',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get my_follow {
    return Intl.message(
      'Follow',
      name: 'my_follow',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get my_following {
    return Intl.message(
      'Following',
      name: 'my_following',
      desc: '',
      args: [],
    );
  }

  /// `Unfollow`
  String get my_unFollow {
    return Intl.message(
      'Unfollow',
      name: 'my_unFollow',
      desc: '',
      args: [],
    );
  }

  /// `Domain Name Setting`
  String get my_domainSetting {
    return Intl.message(
      'Domain Name Setting',
      name: 'my_domainSetting',
      desc: '',
      args: [],
    );
  }

  /// `Domain Name format error!`
  String get my_domainFomartError {
    return Intl.message(
      'Domain Name format error!',
      name: 'my_domainFomartError',
      desc: '',
      args: [],
    );
  }

  /// `No Domain Name Available!`
  String get my_domainNone {
    return Intl.message(
      'No Domain Name Available!',
      name: 'my_domainNone',
      desc: '',
      args: [],
    );
  }

  /// `Please import the Domain Name to bind`
  String get my_pleaseDomain {
    return Intl.message(
      'Please import the Domain Name to bind',
      name: 'my_pleaseDomain',
      desc: '',
      args: [],
    );
  }

  /// `Import Decentralized Domain Names`
  String get my_insertDomain {
    return Intl.message(
      'Import Decentralized Domain Names',
      name: 'my_insertDomain',
      desc: '',
      args: [],
    );
  }

  /// `Editor's Profile`
  String get my_editProduce {
    return Intl.message(
      'Editor\'s Profile',
      name: 'my_editProduce',
      desc: '',
      args: [],
    );
  }

  /// `No personal profile`
  String get my_noneProduce {
    return Intl.message(
      'No personal profile',
      name: 'my_noneProduce',
      desc: '',
      args: [],
    );
  }

  /// `The private key is not encrypted, pleaseexport it carefully and make a safebackup! When backing up the private keyplease make sure that no one is around!`
  String get my_exportPrivateKeyTips {
    return Intl.message(
      'The private key is not encrypted, pleaseexport it carefully and make a safebackup! When backing up the private keyplease make sure that no one is around!',
      name: 'my_exportPrivateKeyTips',
      desc: '',
      args: [],
    );
  }

  /// `Please copy and paste Keystore filles to secure andoffline places.Do not save it to the email,Notepad.SkyDrive, chat tools, etc., which is very dangerous.`
  String get my_exportKeystoreTips {
    return Intl.message(
      'Please copy and paste Keystore filles to secure andoffline places.Do not save it to the email,Notepad.SkyDrive, chat tools, etc., which is very dangerous.',
      name: 'my_exportKeystoreTips',
      desc: '',
      args: [],
    );
  }

  /// `Copy Keystore`
  String get my_copyKeystore {
    return Intl.message(
      'Copy Keystore',
      name: 'my_copyKeystore',
      desc: '',
      args: [],
    );
  }

  /// `User Agreement`
  String get my_userAgreement {
    return Intl.message(
      'User Agreement',
      name: 'my_userAgreement',
      desc: '',
      args: [],
    );
  }

  /// `Website`
  String get my_website {
    return Intl.message(
      'Website',
      name: 'my_website',
      desc: '',
      args: [],
    );
  }

  /// `Currently the latest version`
  String get my_isNewly {
    return Intl.message(
      'Currently the latest version',
      name: 'my_isNewly',
      desc: '',
      args: [],
    );
  }

  /// `Search My Tokens`
  String get my_searchToken {
    return Intl.message(
      'Search My Tokens',
      name: 'my_searchToken',
      desc: '',
      args: [],
    );
  }

  /// `Add Tokens`
  String get my_addToken {
    return Intl.message(
      'Add Tokens',
      name: 'my_addToken',
      desc: '',
      args: [],
    );
  }

  /// `Popular Tokens`
  String get my_hotToken {
    return Intl.message(
      'Popular Tokens',
      name: 'my_hotToken',
      desc: '',
      args: [],
    );
  }

  /// `Search for token address or name`
  String get my_searchTokenOrAddress {
    return Intl.message(
      'Search for token address or name',
      name: 'my_searchTokenOrAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password Error!`
  String get my_pwdError {
    return Intl.message(
      'Password Error!',
      name: 'my_pwdError',
      desc: '',
      args: [],
    );
  }

  /// `Communication`
  String get my_communication {
    return Intl.message(
      'Communication',
      name: 'my_communication',
      desc: '',
      args: [],
    );
  }

  /// `These secret recovery phrases are for recovering your wallet, write down it correctlyon paper and keep it in a safe place. Don't disclose secret recovery phrase to anyone`
  String get my_moneciTipsa {
    return Intl.message(
      'These secret recovery phrases are for recovering your wallet, write down it correctlyon paper and keep it in a safe place. Don\'t disclose secret recovery phrase to anyone',
      name: 'my_moneciTipsa',
      desc: '',
      args: [],
    );
  }

  /// `Once the secret recovery phrase is lost, assetscannot be recovered.`
  String get my_moneciTipsb {
    return Intl.message(
      'Once the secret recovery phrase is lost, assetscannot be recovered.',
      name: 'my_moneciTipsb',
      desc: '',
      args: [],
    );
  }

  /// `Please do not backup and save by screenshotsor network transmission. Don't uninstall the app when in issues, pleasecontact us for help.`
  String get my_moneciTipsc {
    return Intl.message(
      'Please do not backup and save by screenshotsor network transmission. Don\'t uninstall the app when in issues, pleasecontact us for help.',
      name: 'my_moneciTipsc',
      desc: '',
      args: [],
    );
  }

  /// `Completed backup, verify it now.`
  String get my_moneciVerify {
    return Intl.message(
      'Completed backup, verify it now.',
      name: 'my_moneciVerify',
      desc: '',
      args: [],
    );
  }

  /// `Update Notification`
  String get my_updateTips {
    return Intl.message(
      'Update Notification',
      name: 'my_updateTips',
      desc: '',
      args: [],
    );
  }

  /// `New features:`
  String get my_updateContent {
    return Intl.message(
      'New features:',
      name: 'my_updateContent',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get my_updateNow {
    return Intl.message(
      'Update',
      name: 'my_updateNow',
      desc: '',
      args: [],
    );
  }

  /// `Renewal`
  String get my_renewal {
    return Intl.message(
      'Renewal',
      name: 'my_renewal',
      desc: '',
      args: [],
    );
  }

  /// `Replacement succeeded`
  String get my_renewal2 {
    return Intl.message(
      'Replacement succeeded',
      name: 'my_renewal2',
      desc: '',
      args: [],
    );
  }

  /// `Community Rules`
  String get community_community1 {
    return Intl.message(
      'Community Rules',
      name: 'community_community1',
      desc: '',
      args: [],
    );
  }

  /// `Trend`
  String get community_trend {
    return Intl.message(
      'Trend',
      name: 'community_trend',
      desc: '',
      args: [],
    );
  }

  /// `Announcement`
  String get community_announcement {
    return Intl.message(
      'Announcement',
      name: 'community_announcement',
      desc: '',
      args: [],
    );
  }

  /// `Square`
  String get community_square {
    return Intl.message(
      'Square',
      name: 'community_square',
      desc: '',
      args: [],
    );
  }

  /// `Enter text message`
  String get community_enter1 {
    return Intl.message(
      'Enter text message',
      name: 'community_enter1',
      desc: '',
      args: [],
    );
  }

  /// `Invite`
  String get community_invite {
    return Intl.message(
      'Invite',
      name: 'community_invite',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get community_copy {
    return Intl.message(
      'Copy',
      name: 'community_copy',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get community_cancel1 {
    return Intl.message(
      'Cancel',
      name: 'community_cancel1',
      desc: '',
      args: [],
    );
  }

  /// `Community`
  String get community_community2 {
    return Intl.message(
      'Community',
      name: 'community_community2',
      desc: '',
      args: [],
    );
  }

  /// `Current Progress`
  String get community_current {
    return Intl.message(
      'Current Progress',
      name: 'community_current',
      desc: '',
      args: [],
    );
  }

  /// `Immediately participate in`
  String get community_immediately {
    return Intl.message(
      'Immediately participate in',
      name: 'community_immediately',
      desc: '',
      args: [],
    );
  }

  /// `You are currently in preview mode. Join this server to start chatting!`
  String get community_you1 {
    return Intl.message(
      'You are currently in preview mode. Join this server to start chatting!',
      name: 'community_you1',
      desc: '',
      args: [],
    );
  }

  /// `Join`
  String get community_join {
    return Intl.message(
      'Join',
      name: 'community_join',
      desc: '',
      args: [],
    );
  }

  /// `NO permission to speak on this channel`
  String get community_you2 {
    return Intl.message(
      'NO permission to speak on this channel',
      name: 'community_you2',
      desc: '',
      args: [],
    );
  }

  /// `Community Settings`
  String get community_community3 {
    return Intl.message(
      'Community Settings',
      name: 'community_community3',
      desc: '',
      args: [],
    );
  }

  /// `Community Members`
  String get community_community4 {
    return Intl.message(
      'Community Members',
      name: 'community_community4',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get community_view {
    return Intl.message(
      'View',
      name: 'community_view',
      desc: '',
      args: [],
    );
  }

  /// `Create Subchannels`
  String get community_create1 {
    return Intl.message(
      'Create Subchannels',
      name: 'community_create1',
      desc: '',
      args: [],
    );
  }

  /// `Create an IDO pool`
  String get community_create2 {
    return Intl.message(
      'Create an IDO pool',
      name: 'community_create2',
      desc: '',
      args: [],
    );
  }

  /// `Delete Community`
  String get community_delete1 {
    return Intl.message(
      'Delete Community',
      name: 'community_delete1',
      desc: '',
      args: [],
    );
  }

  /// `Community Information`
  String get community_community5 {
    return Intl.message(
      'Community Information',
      name: 'community_community5',
      desc: '',
      args: [],
    );
  }

  /// `Community Name`
  String get community_community6 {
    return Intl.message(
      'Community Name',
      name: 'community_community6',
      desc: '',
      args: [],
    );
  }

  /// `Community Description`
  String get community_community7 {
    return Intl.message(
      'Community Description',
      name: 'community_community7',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get community_save {
    return Intl.message(
      'Save',
      name: 'community_save',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete the community? This action cannot be undone`
  String get community_are1 {
    return Intl.message(
      'Are you sure you want to delete the community? This action cannot be undone',
      name: 'community_are1',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get community_delete2 {
    return Intl.message(
      'Delete',
      name: 'community_delete2',
      desc: '',
      args: [],
    );
  }

  /// `There is currently an IDO in progress and the community cannot be deleted`
  String get community_there {
    return Intl.message(
      'There is currently an IDO in progress and the community cannot be deleted',
      name: 'community_there',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get community_ok {
    return Intl.message(
      'OK',
      name: 'community_ok',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw from the community`
  String get community_withdraw1 {
    return Intl.message(
      'Withdraw from the community',
      name: 'community_withdraw1',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to quit the community? This action cannot be undone`
  String get community_are2 {
    return Intl.message(
      'Are you sure you want to quit the community? This action cannot be undone',
      name: 'community_are2',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get community_withdraw2 {
    return Intl.message(
      'Withdraw',
      name: 'community_withdraw2',
      desc: '',
      args: [],
    );
  }

  /// `Community Members`
  String get community_community8 {
    return Intl.message(
      'Community Members',
      name: 'community_community8',
      desc: '',
      args: [],
    );
  }

  /// `Creator`
  String get community_creator {
    return Intl.message(
      'Creator',
      name: 'community_creator',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get community_search {
    return Intl.message(
      'Search',
      name: 'community_search',
      desc: '',
      args: [],
    );
  }

  /// `Create Community`
  String get community_create3 {
    return Intl.message(
      'Create Community',
      name: 'community_create3',
      desc: '',
      args: [],
    );
  }

  /// `A name and an icon can give your community a personality. You can change it at any time after that`
  String get community_a {
    return Intl.message(
      'A name and an icon can give your community a personality. You can change it at any time after that',
      name: 'community_a',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get community_upload1 {
    return Intl.message(
      'Upload',
      name: 'community_upload1',
      desc: '',
      args: [],
    );
  }

  /// `Enter community name`
  String get community_enter2 {
    return Intl.message(
      'Enter community name',
      name: 'community_enter2',
      desc: '',
      args: [],
    );
  }

  /// `Project official website`
  String get community_project1 {
    return Intl.message(
      'Project official website',
      name: 'community_project1',
      desc: '',
      args: [],
    );
  }

  /// `Enter official website link`
  String get community_enter14 {
    return Intl.message(
      'Enter official website link',
      name: 'community_enter14',
      desc: '',
      args: [],
    );
  }

  /// `Community description`
  String get community_community9 {
    return Intl.message(
      'Community description',
      name: 'community_community9',
      desc: '',
      args: [],
    );
  }

  /// `Enter community description`
  String get community_enter3 {
    return Intl.message(
      'Enter community description',
      name: 'community_enter3',
      desc: '',
      args: [],
    );
  }

  /// `By creating a server, you agree to the IDChats Community Code.`
  String get community_by {
    return Intl.message(
      'By creating a server, you agree to the IDChats Community Code.',
      name: 'community_by',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get community_create4 {
    return Intl.message(
      'Create',
      name: 'community_create4',
      desc: '',
      args: [],
    );
  }

  /// `Create Subchannels`
  String get community_create5 {
    return Intl.message(
      'Create Subchannels',
      name: 'community_create5',
      desc: '',
      args: [],
    );
  }

  /// `Channel Name`
  String get community_channel {
    return Intl.message(
      'Channel Name',
      name: 'community_channel',
      desc: '',
      args: [],
    );
  }

  /// `Enter channel name`
  String get community_enter4 {
    return Intl.message(
      'Enter channel name',
      name: 'community_enter4',
      desc: '',
      args: [],
    );
  }

  /// `Private message @AI`
  String get community_private {
    return Intl.message(
      'Private message @AI',
      name: 'community_private',
      desc: '',
      args: [],
    );
  }

  /// `Only selected members and roles can view this channel.`
  String get community_only {
    return Intl.message(
      'Only selected members and roles can view this channel.',
      name: 'community_only',
      desc: '',
      args: [],
    );
  }

  /// `Create a channel`
  String get community_create6 {
    return Intl.message(
      'Create a channel',
      name: 'community_create6',
      desc: '',
      args: [],
    );
  }

  /// `Create a targeted IDO pool`
  String get community_create7 {
    return Intl.message(
      'Create a targeted IDO pool',
      name: 'community_create7',
      desc: '',
      args: [],
    );
  }

  /// `Create a one-way IDO pool`
  String get community_create8 {
    return Intl.message(
      'Create a one-way IDO pool',
      name: 'community_create8',
      desc: '',
      args: [],
    );
  }

  /// `Create an IDO pool`
  String get community_create9 {
    return Intl.message(
      'Create an IDO pool',
      name: 'community_create9',
      desc: '',
      args: [],
    );
  }

  /// `Input`
  String get community_input1 {
    return Intl.message(
      'Input',
      name: 'community_input1',
      desc: '',
      args: [],
    );
  }

  /// `Input Quantity`
  String get community_input2 {
    return Intl.message(
      'Input Quantity',
      name: 'community_input2',
      desc: '',
      args: [],
    );
  }

  /// `Select Token`
  String get community_select1 {
    return Intl.message(
      'Select Token',
      name: 'community_select1',
      desc: '',
      args: [],
    );
  }

  /// `Project Name`
  String get community_project2 {
    return Intl.message(
      'Project Name',
      name: 'community_project2',
      desc: '',
      args: [],
    );
  }

  /// `Enter project name`
  String get community_enter5 {
    return Intl.message(
      'Enter project name',
      name: 'community_enter5',
      desc: '',
      args: [],
    );
  }

  /// `Project Introduction`
  String get community_project3 {
    return Intl.message(
      'Project Introduction',
      name: 'community_project3',
      desc: '',
      args: [],
    );
  }

  /// `Enter project profile`
  String get community_enter6 {
    return Intl.message(
      'Enter project profile',
      name: 'community_enter6',
      desc: '',
      args: [],
    );
  }

  /// `Start time (UTC + 8)`
  String get community_start {
    return Intl.message(
      'Start time (UTC + 8)',
      name: 'community_start',
      desc: '',
      args: [],
    );
  }

  /// `End Time (UTC + 8)`
  String get community_end {
    return Intl.message(
      'End Time (UTC + 8)',
      name: 'community_end',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get community_create10 {
    return Intl.message(
      'Create',
      name: 'community_create10',
      desc: '',
      args: [],
    );
  }

  /// `Token name or contract address`
  String get community_token1 {
    return Intl.message(
      'Token name or contract address',
      name: 'community_token1',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get community_cancel2 {
    return Intl.message(
      'Cancel',
      name: 'community_cancel2',
      desc: '',
      args: [],
    );
  }

  /// `Okay`
  String get community_okay {
    return Intl.message(
      'Okay',
      name: 'community_okay',
      desc: '',
      args: [],
    );
  }

  /// `Create a successful`
  String get community_create11 {
    return Intl.message(
      'Create a successful',
      name: 'community_create11',
      desc: '',
      args: [],
    );
  }

  /// `Failed to create`
  String get community_failed {
    return Intl.message(
      'Failed to create',
      name: 'community_failed',
      desc: '',
      args: [],
    );
  }

  /// `Upload project logo`
  String get community_upload2 {
    return Intl.message(
      'Upload project logo',
      name: 'community_upload2',
      desc: '',
      args: [],
    );
  }

  /// `It is recommended to use at least 300 × 300 images`
  String get community_it {
    return Intl.message(
      'It is recommended to use at least 300 × 300 images',
      name: 'community_it',
      desc: '',
      args: [],
    );
  }

  /// `Project Name`
  String get community_project4 {
    return Intl.message(
      'Project Name',
      name: 'community_project4',
      desc: '',
      args: [],
    );
  }

  /// `Enter project name`
  String get community_enter7 {
    return Intl.message(
      'Enter project name',
      name: 'community_enter7',
      desc: '',
      args: [],
    );
  }

  /// `Token Name`
  String get community_token2 {
    return Intl.message(
      'Token Name',
      name: 'community_token2',
      desc: '',
      args: [],
    );
  }

  /// `Enter token name`
  String get community_enter8 {
    return Intl.message(
      'Enter token name',
      name: 'community_enter8',
      desc: '',
      args: [],
    );
  }

  /// `Project Introduction`
  String get community_project5 {
    return Intl.message(
      'Project Introduction',
      name: 'community_project5',
      desc: '',
      args: [],
    );
  }

  /// `Enter project profile`
  String get community_enter9 {
    return Intl.message(
      'Enter project profile',
      name: 'community_enter9',
      desc: '',
      args: [],
    );
  }

  /// `Input`
  String get community_input3 {
    return Intl.message(
      'Input',
      name: 'community_input3',
      desc: '',
      args: [],
    );
  }

  /// `Please select a token first`
  String get community_please1 {
    return Intl.message(
      'Please select a token first',
      name: 'community_please1',
      desc: '',
      args: [],
    );
  }

  /// `Select Token`
  String get community_select2 {
    return Intl.message(
      'Select Token',
      name: 'community_select2',
      desc: '',
      args: [],
    );
  }

  /// `Exchange Rate`
  String get community_exchange1 {
    return Intl.message(
      'Exchange Rate',
      name: 'community_exchange1',
      desc: '',
      args: [],
    );
  }

  /// `Please select a token first`
  String get community_please2 {
    return Intl.message(
      'Please select a token first',
      name: 'community_please2',
      desc: '',
      args: [],
    );
  }

  /// `Total number of IDOs`
  String get community_total1 {
    return Intl.message(
      'Total number of IDOs',
      name: 'community_total1',
      desc: '',
      args: [],
    );
  }

  /// `Enter the total number of IDOs`
  String get community_enter10 {
    return Intl.message(
      'Enter the total number of IDOs',
      name: 'community_enter10',
      desc: '',
      args: [],
    );
  }

  /// `Single exchange limit`
  String get community_single {
    return Intl.message(
      'Single exchange limit',
      name: 'community_single',
      desc: '',
      args: [],
    );
  }

  /// `Unlock Times`
  String get community_unlock1 {
    return Intl.message(
      'Unlock Times',
      name: 'community_unlock1',
      desc: '',
      args: [],
    );
  }

  /// `Enter the number of unlocks`
  String get community_enter11 {
    return Intl.message(
      'Enter the number of unlocks',
      name: 'community_enter11',
      desc: '',
      args: [],
    );
  }

  /// `Unlock Rules`
  String get community_unlock2 {
    return Intl.message(
      'Unlock Rules',
      name: 'community_unlock2',
      desc: '',
      args: [],
    );
  }

  /// `Unlock Monthly`
  String get community_unlock3 {
    return Intl.message(
      'Unlock Monthly',
      name: 'community_unlock3',
      desc: '',
      args: [],
    );
  }

  /// `First Round`
  String get community_first {
    return Intl.message(
      'First Round',
      name: 'community_first',
      desc: '',
      args: [],
    );
  }

  /// `Select first unlock date`
  String get community_select3 {
    return Intl.message(
      'Select first unlock date',
      name: 'community_select3',
      desc: '',
      args: [],
    );
  }

  /// `Unlock every quarter`
  String get community_unlock4 {
    return Intl.message(
      'Unlock every quarter',
      name: 'community_unlock4',
      desc: '',
      args: [],
    );
  }

  /// `Twitter link`
  String get community_twitter {
    return Intl.message(
      'Twitter link',
      name: 'community_twitter',
      desc: '',
      args: [],
    );
  }

  /// `Enter Twitter link`
  String get community_enter12 {
    return Intl.message(
      'Enter Twitter link',
      name: 'community_enter12',
      desc: '',
      args: [],
    );
  }

  /// `Official website`
  String get community_official {
    return Intl.message(
      'Official website',
      name: 'community_official',
      desc: '',
      args: [],
    );
  }

  /// `Enter the official website`
  String get community_enter13 {
    return Intl.message(
      'Enter the official website',
      name: 'community_enter13',
      desc: '',
      args: [],
    );
  }

  /// `The platform will charge a 5% service fee`
  String get community_the {
    return Intl.message(
      'The platform will charge a 5% service fee',
      name: 'community_the',
      desc: '',
      args: [],
    );
  }

  /// `Conversion Ratio`
  String get community_conversion1 {
    return Intl.message(
      'Conversion Ratio',
      name: 'community_conversion1',
      desc: '',
      args: [],
    );
  }

  /// `Personal exchange cap`
  String get community_personal {
    return Intl.message(
      'Personal exchange cap',
      name: 'community_personal',
      desc: '',
      args: [],
    );
  }

  /// `Access`
  String get community_access {
    return Intl.message(
      'Access',
      name: 'community_access',
      desc: '',
      args: [],
    );
  }

  /// `Progress Bar`
  String get community_progress {
    return Intl.message(
      'Progress Bar',
      name: 'community_progress',
      desc: '',
      args: [],
    );
  }

  /// `Number of participants`
  String get community_number {
    return Intl.message(
      'Number of participants',
      name: 'community_number',
      desc: '',
      args: [],
    );
  }

  /// `About to begin`
  String get community_about1 {
    return Intl.message(
      'About to begin',
      name: 'community_about1',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get community_amount1 {
    return Intl.message(
      'Amount',
      name: 'community_amount1',
      desc: '',
      args: [],
    );
  }

  /// `Lock-up days`
  String get community_lock {
    return Intl.message(
      'Lock-up days',
      name: 'community_lock',
      desc: '',
      args: [],
    );
  }

  /// `Exchange Progress`
  String get community_exchange2 {
    return Intl.message(
      'Exchange Progress',
      name: 'community_exchange2',
      desc: '',
      args: [],
    );
  }

  /// `Project Details`
  String get community_project6 {
    return Intl.message(
      'Project Details',
      name: 'community_project6',
      desc: '',
      args: [],
    );
  }

  /// `Pool Information`
  String get community_pool {
    return Intl.message(
      'Pool Information',
      name: 'community_pool',
      desc: '',
      args: [],
    );
  }

  /// `Opening Hours`
  String get community_opening {
    return Intl.message(
      'Opening Hours',
      name: 'community_opening',
      desc: '',
      args: [],
    );
  }

  /// `Closing Time`
  String get community_closing {
    return Intl.message(
      'Closing Time',
      name: 'community_closing',
      desc: '',
      args: [],
    );
  }

  /// `Conversion Ratio`
  String get community_conversion2 {
    return Intl.message(
      'Conversion Ratio',
      name: 'community_conversion2',
      desc: '',
      args: [],
    );
  }

  /// `Total Raised`
  String get community_total2 {
    return Intl.message(
      'Total Raised',
      name: 'community_total2',
      desc: '',
      args: [],
    );
  }

  /// `Total number of addresses`
  String get community_total3 {
    return Intl.message(
      'Total number of addresses',
      name: 'community_total3',
      desc: '',
      args: [],
    );
  }

  /// `Total exchange funds`
  String get community_total4 {
    return Intl.message(
      'Total exchange funds',
      name: 'community_total4',
      desc: '',
      args: [],
    );
  }

  /// `Token Information`
  String get community_token3 {
    return Intl.message(
      'Token Information',
      name: 'community_token3',
      desc: '',
      args: [],
    );
  }

  /// `Token Symbol`
  String get community_token4 {
    return Intl.message(
      'Token Symbol',
      name: 'community_token4',
      desc: '',
      args: [],
    );
  }

  /// `Total Supply`
  String get community_total5 {
    return Intl.message(
      'Total Supply',
      name: 'community_total5',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get community_address {
    return Intl.message(
      'Address',
      name: 'community_address',
      desc: '',
      args: [],
    );
  }

  /// `Participate In`
  String get community_participate {
    return Intl.message(
      'Participate In',
      name: 'community_participate',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get community_time {
    return Intl.message(
      'Time',
      name: 'community_time',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get community_currency {
    return Intl.message(
      'Currency',
      name: 'community_currency',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get community_amount2 {
    return Intl.message(
      'Amount',
      name: 'community_amount2',
      desc: '',
      args: [],
    );
  }

  /// `Total Currency`
  String get community_total6 {
    return Intl.message(
      'Total Currency',
      name: 'community_total6',
      desc: '',
      args: [],
    );
  }

  /// `Linear Release Amount`
  String get community_linear {
    return Intl.message(
      'Linear Release Amount',
      name: 'community_linear',
      desc: '',
      args: [],
    );
  }

  /// `Operation`
  String get community_operation {
    return Intl.message(
      'Operation',
      name: 'community_operation',
      desc: '',
      args: [],
    );
  }

  /// `Pending Receipt`
  String get community_pending {
    return Intl.message(
      'Pending Receipt',
      name: 'community_pending',
      desc: '',
      args: [],
    );
  }

  /// `Receive Successful`
  String get community_receive {
    return Intl.message(
      'Receive Successful',
      name: 'community_receive',
      desc: '',
      args: [],
    );
  }

  /// `About to begin`
  String get community_about2 {
    return Intl.message(
      'About to begin',
      name: 'community_about2',
      desc: '',
      args: [],
    );
  }

  /// `Has begin`
  String get community_has1 {
    return Intl.message(
      'Has begin',
      name: 'community_has1',
      desc: '',
      args: [],
    );
  }

  /// `Has ended`
  String get community_has2 {
    return Intl.message(
      'Has ended',
      name: 'community_has2',
      desc: '',
      args: [],
    );
  }

  /// `Hot`
  String get community_hot {
    return Intl.message(
      'Hot',
      name: 'community_hot',
      desc: '',
      args: [],
    );
  }

  /// `Please upload the community logo`
  String get community_upload3 {
    return Intl.message(
      'Please upload the community logo',
      name: 'community_upload3',
      desc: '',
      args: [],
    );
  }

  /// `You can only upload pictures as logo`
  String get community_You3 {
    return Intl.message(
      'You can only upload pictures as logo',
      name: 'community_You3',
      desc: '',
      args: [],
    );
  }

  /// `Logo image needs to be less than 2M`
  String get community_Logo1 {
    return Intl.message(
      'Logo image needs to be less than 2M',
      name: 'community_Logo1',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get community_welcome {
    return Intl.message(
      'Welcome to',
      name: 'community_welcome',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get community_share {
    return Intl.message(
      'Share',
      name: 'community_share',
      desc: '',
      args: [],
    );
  }

  /// `Invite friends`
  String get community_invite2 {
    return Intl.message(
      'Invite friends',
      name: 'community_invite2',
      desc: '',
      args: [],
    );
  }

  /// `Dissolution succeeded`
  String get community_dissolution {
    return Intl.message(
      'Dissolution succeeded',
      name: 'community_dissolution',
      desc: '',
      args: [],
    );
  }

  /// `Exit successfully`
  String get community_exit {
    return Intl.message(
      'Exit successfully',
      name: 'community_exit',
      desc: '',
      args: [],
    );
  }

  /// `Join successfully`
  String get community_join1 {
    return Intl.message(
      'Join successfully',
      name: 'community_join1',
      desc: '',
      args: [],
    );
  }

  /// `Copy succeeded`
  String get community_copy1 {
    return Intl.message(
      'Copy succeeded',
      name: 'community_copy1',
      desc: '',
      args: [],
    );
  }

  /// `Enter the community to search`
  String get community_enter15 {
    return Intl.message(
      'Enter the community to search',
      name: 'community_enter15',
      desc: '',
      args: [],
    );
  }

  /// `Failed to upload logo`
  String get community_failedimage {
    return Intl.message(
      'Failed to upload logo',
      name: 'community_failedimage',
      desc: '',
      args: [],
    );
  }

  /// `Hot Communities`
  String get community_hot2 {
    return Intl.message(
      'Hot Communities',
      name: 'community_hot2',
      desc: '',
      args: [],
    );
  }

  /// `Start a chat`
  String get community_start2 {
    return Intl.message(
      'Start a chat',
      name: 'community_start2',
      desc: '',
      args: [],
    );
  }

  /// `Announced:`
  String get community_publish {
    return Intl.message(
      'Announced:',
      name: 'community_publish',
      desc: '',
      args: [],
    );
  }

  /// `Created subchannel:`
  String get community_publish2 {
    return Intl.message(
      'Created subchannel:',
      name: 'community_publish2',
      desc: '',
      args: [],
    );
  }

  /// `Modify`
  String get community_modify {
    return Intl.message(
      'Modify',
      name: 'community_modify',
      desc: '',
      args: [],
    );
  }

  /// `Modify Community`
  String get community_modify2 {
    return Intl.message(
      'Modify Community',
      name: 'community_modify2',
      desc: '',
      args: [],
    );
  }

  /// `Updated community information`
  String get community_update {
    return Intl.message(
      'Updated community information',
      name: 'community_update',
      desc: '',
      args: [],
    );
  }

  /// `Upload project logo`
  String get community_upload11 {
    return Intl.message(
      'Upload project logo',
      name: 'community_upload11',
      desc: '',
      args: [],
    );
  }

  /// `Recommended use`
  String get community_recommended {
    return Intl.message(
      'Recommended use',
      name: 'community_recommended',
      desc: '',
      args: [],
    );
  }

  /// `At least 300 × 300 pictures`
  String get community_leasgt {
    return Intl.message(
      'At least 300 × 300 pictures',
      name: 'community_leasgt',
      desc: '',
      args: [],
    );
  }

  /// `Token name`
  String get community_token {
    return Intl.message(
      'Token name',
      name: 'community_token',
      desc: '',
      args: [],
    );
  }

  /// `Enter token name`
  String get community_entertoken {
    return Intl.message(
      'Enter token name',
      name: 'community_entertoken',
      desc: '',
      args: [],
    );
  }

  /// `Rate of exchange`
  String get community_rate {
    return Intl.message(
      'Rate of exchange',
      name: 'community_rate',
      desc: '',
      args: [],
    );
  }

  /// `Please select a token first`
  String get community_please11 {
    return Intl.message(
      'Please select a token first',
      name: 'community_please11',
      desc: '',
      args: [],
    );
  }

  /// `Total number of IDOs`
  String get community_total12 {
    return Intl.message(
      'Total number of IDOs',
      name: 'community_total12',
      desc: '',
      args: [],
    );
  }

  /// `Enter the total number of IDOs`
  String get community_enter23 {
    return Intl.message(
      'Enter the total number of IDOs',
      name: 'community_enter23',
      desc: '',
      args: [],
    );
  }

  /// `Unlocking times`
  String get community_unlocking {
    return Intl.message(
      'Unlocking times',
      name: 'community_unlocking',
      desc: '',
      args: [],
    );
  }

  /// `Enter unlock times`
  String get community_please15 {
    return Intl.message(
      'Enter unlock times',
      name: 'community_please15',
      desc: '',
      args: [],
    );
  }

  /// `Twitter link`
  String get community_twitter2 {
    return Intl.message(
      'Twitter link',
      name: 'community_twitter2',
      desc: '',
      args: [],
    );
  }

  /// `First unlock date`
  String get community_firstunlock {
    return Intl.message(
      'First unlock date',
      name: 'community_firstunlock',
      desc: '',
      args: [],
    );
  }

  /// `Select the first unlock date`
  String get community_select4 {
    return Intl.message(
      'Select the first unlock date',
      name: 'community_select4',
      desc: '',
      args: [],
    );
  }

  /// `No balance, please recharge`
  String get community_outcharge {
    return Intl.message(
      'No balance, please recharge',
      name: 'community_outcharge',
      desc: '',
      args: [],
    );
  }

  /// `Immediate payment of $0.05/ time, recharge 0.03/1K characters`
  String get community_immediate33 {
    return Intl.message(
      'Immediate payment of \$0.05/ time, recharge 0.03/1K characters',
      name: 'community_immediate33',
      desc: '',
      args: [],
    );
  }

  /// `Recharge`
  String get community_recharge {
    return Intl.message(
      'Recharge',
      name: 'community_recharge',
      desc: '',
      args: [],
    );
  }

  /// `Immediate Payment`
  String get community_immediate331 {
    return Intl.message(
      'Immediate Payment',
      name: 'community_immediate331',
      desc: '',
      args: [],
    );
  }

  /// `Question: @AI+ question`
  String get community_question {
    return Intl.message(
      'Question: @AI+ question',
      name: 'community_question',
      desc: '',
      args: [],
    );
  }

  /// `AI recharge`
  String get community_airecharge {
    return Intl.message(
      'AI recharge',
      name: 'community_airecharge',
      desc: '',
      args: [],
    );
  }

  /// `Recharge amount`
  String get community_rechargeamount {
    return Intl.message(
      'Recharge amount',
      name: 'community_rechargeamount',
      desc: '',
      args: [],
    );
  }

  /// `Enter the top-up amount`
  String get community_enteramount {
    return Intl.message(
      'Enter the top-up amount',
      name: 'community_enteramount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the recharge amount`
  String get community_please33 {
    return Intl.message(
      'Please enter the recharge amount',
      name: 'community_please33',
      desc: '',
      args: [],
    );
  }

  /// `AI Setup`
  String get community_aIsetup {
    return Intl.message(
      'AI Setup',
      name: 'community_aIsetup',
      desc: '',
      args: [],
    );
  }

  /// `Purchase History`
  String get community_history {
    return Intl.message(
      'Purchase History',
      name: 'community_history',
      desc: '',
      args: [],
    );
  }

  /// `Current wallet`
  String get community_current3 {
    return Intl.message(
      'Current wallet',
      name: 'community_current3',
      desc: '',
      args: [],
    );
  }

  /// `Every Month`
  String get community_month {
    return Intl.message(
      'Every Month',
      name: 'community_month',
      desc: '',
      args: [],
    );
  }

  /// `Immediately`
  String get community_immediately1 {
    return Intl.message(
      'Immediately',
      name: 'community_immediately1',
      desc: '',
      args: [],
    );
  }

  /// `Quarterly`
  String get community_quarterly {
    return Intl.message(
      'Quarterly',
      name: 'community_quarterly',
      desc: '',
      args: [],
    );
  }

  /// `Unlock Rule`
  String get community_unlockCount {
    return Intl.message(
      'Unlock Rule',
      name: 'community_unlockCount',
      desc: '',
      args: [],
    );
  }

  /// `Date of the first unlock`
  String get community_firstDate {
    return Intl.message(
      'Date of the first unlock',
      name: 'community_firstDate',
      desc: '',
      args: [],
    );
  }

  /// `Do not give this authorization to any link or drop of unknown origin`
  String get community_donot {
    return Intl.message(
      'Do not give this authorization to any link or drop of unknown origin',
      name: 'community_donot',
      desc: '',
      args: [],
    );
  }

  /// `Payment wallet`
  String get community_pwallet {
    return Intl.message(
      'Payment wallet',
      name: 'community_pwallet',
      desc: '',
      args: [],
    );
  }

  /// `license agreement`
  String get community_license {
    return Intl.message(
      'license agreement',
      name: 'community_license',
      desc: '',
      args: [],
    );
  }

  /// `Miner's fees`
  String get community_minerfees {
    return Intl.message(
      'Miner\'s fees',
      name: 'community_minerfees',
      desc: '',
      args: [],
    );
  }

  /// `Approve`
  String get community_approve {
    return Intl.message(
      'Approve',
      name: 'community_approve',
      desc: '',
      args: [],
    );
  }

  /// `Transfer Authorization`
  String get community_transwer {
    return Intl.message(
      'Transfer Authorization',
      name: 'community_transwer',
      desc: '',
      args: [],
    );
  }

  /// `Authorized Quantity`
  String get community_authorized {
    return Intl.message(
      'Authorized Quantity',
      name: 'community_authorized',
      desc: '',
      args: [],
    );
  }

  /// `Unlimited`
  String get community_unlimited {
    return Intl.message(
      'Unlimited',
      name: 'community_unlimited',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get community_tdetail {
    return Intl.message(
      'Details',
      name: 'community_tdetail',
      desc: '',
      args: [],
    );
  }

  /// `Apply For`
  String get community_applyfor {
    return Intl.message(
      'Apply For',
      name: 'community_applyfor',
      desc: '',
      args: [],
    );
  }

  /// `Establish`
  String get community_establish {
    return Intl.message(
      'Establish',
      name: 'community_establish',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the number of authorizations`
  String get community_please101 {
    return Intl.message(
      'Please enter the number of authorizations',
      name: 'community_please101',
      desc: '',
      args: [],
    );
  }

  /// `Application`
  String get application_application {
    return Intl.message(
      'Application',
      name: 'application_application',
      desc: '',
      args: [],
    );
  }

  /// `Begin`
  String get application_begin {
    return Intl.message(
      'Begin',
      name: 'application_begin',
      desc: '',
      args: [],
    );
  }

  /// `Ranking List`
  String get application_ranking {
    return Intl.message(
      'Ranking List',
      name: 'application_ranking',
      desc: '',
      args: [],
    );
  }

  /// `Rank`
  String get application_rank {
    return Intl.message(
      'Rank',
      name: 'application_rank',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get application_address {
    return Intl.message(
      'Address',
      name: 'application_address',
      desc: '',
      args: [],
    );
  }

  /// `Score`
  String get application_score {
    return Intl.message(
      'Score',
      name: 'application_score',
      desc: '',
      args: [],
    );
  }

  /// `Award`
  String get application_award {
    return Intl.message(
      'Award',
      name: 'application_award',
      desc: '',
      args: [],
    );
  }

  /// `My Ranking`
  String get application_myranking {
    return Intl.message(
      'My Ranking',
      name: 'application_myranking',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get side_message {
    return Intl.message(
      'Message',
      name: 'side_message',
      desc: '',
      args: [],
    );
  }

  /// `MINT`
  String get side_mint {
    return Intl.message(
      'MINT',
      name: 'side_mint',
      desc: '',
      args: [],
    );
  }

  /// `Campaign`
  String get side_campaign {
    return Intl.message(
      'Campaign',
      name: 'side_campaign',
      desc: '',
      args: [],
    );
  }

  /// `Space`
  String get side_space {
    return Intl.message(
      'Space',
      name: 'side_space',
      desc: '',
      args: [],
    );
  }

  /// `Application`
  String get side_application {
    return Intl.message(
      'Application',
      name: 'side_application',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get side_setting {
    return Intl.message(
      'Setting',
      name: 'side_setting',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
