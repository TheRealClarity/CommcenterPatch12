//OSStatus (*SecKeyRawVerify)(SecKeyRef, SecPadding, const uint8_t , size_t , const uint8_t , size_t );
#include "string"

%hookf(long,SecKeyRawVerify,SecKeyRef key, SecPadding padding, const uint8_t *signedData, size_t signedDataLen, const uint8_t *sig, size_t sigLen){
  NSLog(@"trc was heree");
  return 0;
}
//id (*_VerifyCarrierBundleSignature)(std::basic_string<char>,std::char_traits<char>, std::allocator<char>*, SecKeyRef);
//id(*VerifyCarrierBundleSignature)(id arg1, id arg2);
long(*VerifyCarrierBundleSignature)(const std::string , SecKeyRef);
%hookf(id,VerifyCarrierBundleSignature,const std::string arg1,SecKeyRef arg2){
  NSLog(@"trc was here2");
  return 0;
}

%ctor {
	NSLog(@"By trc");
}
