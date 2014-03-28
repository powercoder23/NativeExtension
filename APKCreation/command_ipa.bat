c:
cd C:\Users\dhirajgu\Desktop\fresh
adt -package -target ipa-app-store -provisioning-profile certficate/iOS_Team_Provisioning_Profile_FreeMan.mobileprovision -storetype pkcs12 -keystore certficate/FreeMan_Certificates.p12 -storepass abcd1234 Print_new.ipa bin/TestANE-app.xml bin/TestANE.swf -extdir lib 