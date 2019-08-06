/**
 * Created by herman
 */
import {
    NativeModules
  } from 'react-native';
  
  const {
    RNAzureAdalSdk
  } = NativeModules;
  
  export default class AzureAdalSdk {

    acquireToken(clientId,graphURI,authority,redirectUri) {
      return RNAzureAdalSdk.acquireToken(clientId,graphURI,authority,redirectUri);
    }
   
}
  
  