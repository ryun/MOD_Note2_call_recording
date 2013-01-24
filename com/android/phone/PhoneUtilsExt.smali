.class public Lcom/android/phone/PhoneUtilsExt;
.super Ljava/lang/Object;
.source "PhoneUtilsExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtilsExt$CONFCallState;,
        Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;,
        Lcom/android/phone/PhoneUtilsExt$CallType;,
        Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;
    }
.end annotation


# static fields
.field public static IsVTCallInRejectList:Z

.field private static LGTisPartyCall:Z

.field private static LGTmergeState:Z

.field private static LGTtransferState:Z

.field public static OTACancel:Z

.field public static callEnd:Z

.field private static callType:I

.field public static canMulti:Z

.field private static countryCode:Ljava/lang/String;

.field private static hasCountryCode:Z

.field static isSendDtmf:Z

.field static isSendEmptyFlash:Z

.field public static mCANPToggleTimer:Landroid/os/CountDownTimer;

.field private static mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

.field public static mCallCardNumber:Ljava/lang/String;

.field private static mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

.field public static mContactName:Ljava/lang/String;

.field public static mContactsNumber:Ljava/lang/String;

.field private static mCountryCode:Ljava/lang/String;

.field private static mCountryCodeTemp:Ljava/lang/String;

.field public static mDisplayName:Ljava/lang/String;

.field private static mInternationalAccessCode:Ljava/lang/String;

.field public static mIsCMFCall:Z

.field public static mIsMessageCall:Z

.field public static mIsWzoneCall:Z

.field private static mLGTRADCallog:I

.field private static mLGTRADTemp:I

.field private static mOutgoingCallString:Ljava/lang/String;

.field private static mOutgoingCallUri:Landroid/net/Uri;

.field public static mPlaceCallTime:J

.field private static mRevertDialingNumber:Z

.field private static mSKTRADDialingToKoreaEnabled:Z

.field public static mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

.field public static mSkipSKTRADDialOption:Z

.field private static mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

.field private static mUserInputDialingNumber:Ljava/lang/String;

.field public static mWzoneprefix:Ljava/lang/String;

.field private static outgoingToKorea:Z

.field private static smsCall:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 94
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 95
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    .line 96
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 97
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    .line 103
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 104
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mDisplayName:Ljava/lang/String;

    .line 105
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    .line 113
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    .line 123
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 124
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/PhoneUtilsExt;->mPlaceCallTime:J

    .line 125
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->OTACancel:Z

    .line 168
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    .line 1045
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    .line 1047
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    .line 198
    return-void
.end method

.method public static IsDialingNumberRevert()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 283
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mRevertDialingNumber:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static OutgoingCallAbroad(Ljava/lang/String;)Z
    .registers 10
    .parameter "number"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 553
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "00"

    aput-object v6, v0, v5

    const-string v6, "*23#00"

    aput-object v6, v0, v4

    const-string v6, "+"

    aput-object v6, v0, v8

    .line 554
    .local v0, INTERNATIONAL_PREFIX:[Ljava/lang/String;
    const-string v1, "+"

    .line 555
    .local v1, INTERNATIONAL_RAD_RESTRICT:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 557
    .local v3, phoneType:I
    if-nez p0, :cond_1f

    .line 594
    :cond_1e
    :goto_1e
    return v4

    .line 559
    :cond_1f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "internationalcall_settings"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1e

    .line 560
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_41

    const-string v6, "+82"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 564
    :cond_41
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 565
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_59

    .line 567
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_59

    move v4, v5

    .line 569
    goto :goto_1e

    .line 572
    :cond_59
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c4

    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 573
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLGTRADSetting = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getLGTRADTemp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getLGTRADCallog = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 574
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v6

    if-ne v6, v8, :cond_b9

    :cond_ad
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v6

    if-nez v6, :cond_c4

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v6

    if-ne v6, v4, :cond_c4

    :cond_b9
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_c4

    move v4, v5

    .line 577
    goto/16 :goto_1e

    .line 580
    :cond_c4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c5
    array-length v6, v0

    if-ge v2, v6, :cond_1e

    .line 582
    aget-object v6, v0, v2

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_d9

    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_d9

    move v4, v5

    .line 586
    goto/16 :goto_1e

    .line 580
    :cond_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_c5
.end method

.method public static OutgoingCallRoamingArea(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .registers 8
    .parameter "number"
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 810
    const-string v0, "OutgoingCallRoamingArea Call!!"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 812
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADOutgoingCallNumber(Ljava/lang/String;)V

    .line 813
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallEnd()Z

    move-result v0

    if-nez v0, :cond_35

    .line 814
    const-string v0, "LGT_RAD_TEMP"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADTemp(I)V

    .line 815
    const-string v0, "COUNTRY_CODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    .line 816
    const-string v0, "COUNTRY_CODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->hasCountryCode:Z

    .line 817
    const-string v0, "CALL_TYPE"

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/PhoneUtilsExt;->callType:I

    .line 819
    :cond_35
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setRADCode()V

    .line 820
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - isLGTRADSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - hasCountryCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->hasCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - callType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/PhoneUtilsExt;->callType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 825
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCountryCodeTemp(Ljava/lang/String;)V

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - countryCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - getCountryCodeTemp() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCountryCodeTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_c6

    .line 830
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 856
    :cond_c5
    :goto_c5
    return-object p0

    .line 831
    :cond_c6
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 832
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADTemp(I)V

    goto :goto_c5

    .line 833
    :cond_d2
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    if-eqz v0, :cond_198

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v4, :cond_198

    .line 834
    const-string v0, "001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_104

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_104

    const-string v0, "005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_104

    const-string v0, "008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11c

    const-string v0, "0082"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 835
    :cond_104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c5

    .line 836
    :cond_11c
    const-string v0, "00700"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13c

    const-string v0, "00345"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13c

    const-string v0, "00365"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13c

    const-string v0, "00321"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 837
    :cond_13c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_c5

    .line 838
    :cond_156
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_c5

    .line 841
    :cond_17d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_c5

    .line 842
    :cond_198
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    if-nez v0, :cond_c5

    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->hasCountryCode:Z

    if-eqz v0, :cond_c5

    sget v0, Lcom/android/phone/PhoneUtilsExt;->callType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_c5

    sget v0, Lcom/android/phone/PhoneUtilsExt;->callType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_c5

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v4, :cond_c5

    .line 845
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 846
    const-string v0, "Set Auto Dial Temp On"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 847
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADTemp(I)V

    goto/16 :goto_c5
.end method

.method public static OutgoingCallSKTRAD(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 610
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setPhoneAppSetting()V

    .line 611
    const-string v1, "SKTRADDialOption"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, SKTRADDialOption:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutgoingCallSKTRAD getSKTRADSetting() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADSetting()Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SKTRADDialOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 614
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADSetting()Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->OnlyOutgoingToKorea:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    if-ne v1, v2, :cond_53

    .line 615
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_4f

    .line 616
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    .line 620
    :goto_4c
    sput-boolean v3, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 635
    :cond_4e
    :goto_4e
    return-void

    .line 618
    :cond_4f
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_4c

    .line 622
    :cond_53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 623
    sput-boolean v3, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 624
    const-string v1, "korea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 625
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_4e

    .line 626
    :cond_67
    const-string v1, "abroad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 627
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_4e

    .line 631
    :cond_73
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    .line 632
    sput-boolean v4, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    goto :goto_4e
.end method

.method public static OutgoingCallSKTWZone(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 601
    const-string v0, "com.skt.iswzone"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 602
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 603
    const-string v0, "Wzoneprefix"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    .line 606
    :cond_16
    return-void
.end method

.method public static canUseHoldInVoIP()Z
    .registers 6

    .prologue
    .line 675
    const/4 v1, 0x0

    .line 677
    .local v1, ret:Z
    :try_start_1
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 678
    .local v2, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_11

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->canUseHoldInVoIP()Z

    move-result v1

    .line 679
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUseHoldInVoIP - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    .line 683
    .end local v2           #voipCall:Landroid/os/IVoIPInterface;
    :goto_28
    return v1

    .line 680
    :catch_29
    move-exception v0

    .line 681
    .local v0, e:Ljava/lang/Exception;
    :try_start_2a
    const-string v3, "PhoneUtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canUseHoldInVoIP - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_43

    goto :goto_28

    .line 683
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_43
    move-exception v3

    goto :goto_28
.end method

.method static changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 948
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->setUserInputDialingNumber(Ljava/lang/String;)V

    .line 950
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 952
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getInternationalAccessCode()Ljava/lang/String;

    .line 953
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 955
    const-string v1, "+"

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InternationalAccessCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  CountryCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_3c

    .line 963
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 995
    :goto_3b
    return-object p0

    .line 965
    :cond_3c
    const-string v2, "0234167010"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 966
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 967
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3b

    .line 969
    :cond_66
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSMS()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 970
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 971
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3b

    .line 974
    :cond_8e
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9a

    .line 975
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_3b

    .line 978
    :cond_9a
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-le v2, v3, :cond_ac

    .line 979
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_3b

    .line 981
    :cond_ac
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 982
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3b

    .line 984
    :cond_c8
    const-string v2, "00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 985
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto/16 :goto_3b

    .line 987
    :cond_d5
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 988
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3b

    .line 990
    :cond_fb
    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10b

    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 991
    :cond_10b
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto/16 :goto_3b

    .line 994
    :cond_110
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3b
.end method

.method public static changeDialingNumberForSKTRAD(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "number"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 413
    const-string v1, "changeDialingNumberForSKTRAD : "

    invoke-static {v1, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, result:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->setUserInputDialingNumber(Ljava/lang/String;)V

    .line 416
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 418
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 419
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 475
    .end local p0
    :cond_19
    :goto_19
    return-object p0

    .line 423
    .restart local p0
    :cond_1a
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 424
    const-string v1, "114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "010114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "011114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "017114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "0082114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "+82114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 426
    :cond_52
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 427
    const-string p0, "+82263439000"

    goto :goto_19

    .line 431
    :cond_58
    const-string v1, "111"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "112"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "113"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "119"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "122"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "125"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, "127"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 433
    :cond_90
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 434
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 435
    const-string p0, "+82232100404"

    goto/16 :goto_19

    .line 439
    :cond_9f
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 440
    const-string v1, "*88"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 441
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_19

    .line 445
    :cond_b5
    const-string v1, "001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_dd

    const-string v1, "002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_dd

    const-string v1, "005"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_dd

    const-string v1, "008"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10e

    const-string v1, "0082"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10e

    .line 447
    :cond_dd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    :goto_f5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDialingNumberForSKTRAD result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    move-object p0, v0

    .line 475
    goto/16 :goto_19

    .line 449
    :cond_10e
    const-string v1, "00700"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12e

    const-string v1, "00345"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12e

    const-string v1, "00365"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12e

    const-string v1, "00321"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_147

    .line 451
    :cond_12e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f5

    .line 453
    :cond_147
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_157

    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 454
    :cond_157
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 455
    move-object v0, p0

    goto :goto_f5

    .line 457
    :cond_15c
    const-string v1, "1544"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_184

    const-string v1, "1577"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_184

    const-string v1, "1588"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_184

    const-string v1, "1599"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_184

    const-string v1, "1644"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19f

    :cond_184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_19f

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f5

    .line 461
    :cond_19f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1ac

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_1c9

    :cond_1ac
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c9

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+8210"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f5

    .line 464
    :cond_1c9
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e6

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f5

    .line 467
    :cond_1e6
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_207

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f5

    .line 471
    :cond_207
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 472
    move-object v0, p0

    goto/16 :goto_f5
.end method

.method public static changeNameForSKTRAD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "number"
    .parameter "name"

    .prologue
    .line 401
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 402
    .local v0, app:Lcom/android/phone/PhoneApp;
    if-eqz p0, :cond_19

    .line 403
    const-string v1, "+82263439000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 404
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 409
    .end local p1
    :cond_19
    :goto_19
    return-object p1

    .line 405
    .restart local p1
    :cond_1a
    const-string v1, "+82232100404"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 406
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_19
.end method

.method public static changeRtsMessage(I)Ljava/lang/CharSequence;
    .registers 10
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1505
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1506
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1507
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1508
    const-string v1, "%s"

    .line 1512
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v1

    .line 1513
    if-nez v1, :cond_3c

    .line 1514
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->initRtsValueForKor()V

    .line 1515
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v1

    .line 1517
    :cond_3c
    if-eqz v1, :cond_1f5

    .line 1518
    aget-object v3, v1, v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1519
    aget-object v3, v1, v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1520
    const/4 v6, 0x3

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1523
    :goto_51
    const v6, 0x7f0e070d

    if-eq p0, v6, :cond_5b

    const v6, 0x7f0e070e

    if-ne p0, v6, :cond_a2

    .line 1525
    :cond_5b
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1542
    :cond_67
    :goto_67
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 1543
    const v2, 0x7f0e06ff

    if-eq p0, v2, :cond_7e

    const v2, 0x7f0e0700

    if-eq p0, v2, :cond_7e

    const v2, 0x7f0e0719

    if-ne p0, v2, :cond_142

    .line 1545
    :cond_7e
    if-nez v3, :cond_11f

    .line 1546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1566
    :cond_a1
    :goto_a1
    return-object v0

    .line 1526
    :cond_a2
    const v2, 0x7f0e06fc

    if-ne p0, v2, :cond_f7

    .line 1527
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1528
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 1529
    const-string v0, "%s"

    const-string v2, "+82-2-6343-9000"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    :goto_bb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    .line 1531
    :cond_dd
    const-string v2, "domestic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1532
    const-string v0, "%s"

    const-string v2, "1599-0011"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_bb

    .line 1534
    :cond_ee
    const-string v0, "%s"

    const-string v2, "+82-2-6343-9000"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_bb

    .line 1538
    :cond_f7
    const v2, 0x7f0e0704

    if-ne p0, v2, :cond_67

    .line 1539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_67

    .line 1548
    :cond_11f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a1

    .line 1549
    :cond_142
    const v2, 0x7f0e0715

    if-ne p0, v2, :cond_191

    .line 1550
    const-string v0, "%s"

    const-string v2, "+82-2-3416-7010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1551
    if-nez v4, :cond_16e

    if-nez v3, :cond_16e

    if-ne v1, v8, :cond_16e

    .line 1552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a1

    .line 1554
    :cond_16e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a1

    .line 1556
    :cond_191
    const v2, 0x7f0e0716

    if-eq p0, v2, :cond_1a5

    const v2, 0x7f0e0717

    if-eq p0, v2, :cond_1a5

    const v2, 0x7f0e0718

    if-eq p0, v2, :cond_1a5

    const v2, 0x7f0e071b

    if-ne p0, v2, :cond_a1

    .line 1558
    :cond_1a5
    const-string v0, "%s"

    const-string v2, "+82-2-3416-7010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1559
    if-nez v3, :cond_1d2

    .line 1560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a1

    .line 1562
    :cond_1d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a1

    :cond_1f5
    move v1, v2

    move v3, v2

    move v4, v2

    goto/16 :goto_51
.end method

.method public static changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "number"

    .prologue
    .line 493
    if-nez p0, :cond_3

    .line 504
    :cond_2
    :goto_2
    return-object p0

    .line 495
    :cond_3
    const-string v1, "*88"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 497
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    .line 498
    if-eqz p0, :cond_2

    .line 499
    const-string v1, "+0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method static checkCallProtectionValue()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 690
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 691
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v2, 0x0

    .line 693
    .local v2, value:I
    :try_start_6
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_call_protect_when_calling"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable_call_protect_when_calling : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_27
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_27} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_3b

    .line 702
    :goto_27
    if-ne v2, v3, :cond_55

    :goto_29
    return v3

    .line 695
    :catch_2a
    move-exception v1

    .line 696
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_call_protect_when_calling"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 697
    const-string v4, "enable_call_protect_when_calling : null->1"

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 698
    const/4 v2, 0x1

    .line 701
    goto :goto_27

    .line 699
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_3b
    move-exception v1

    .line 700
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "PhoneUtilsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable_call_protect_when_calling : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 702
    .end local v1           #e:Ljava/lang/Exception;
    :cond_55
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public static fgConnectionsIsIncoming()Z
    .registers 3

    .prologue
    .line 1186
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 1187
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 1188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_49

    .line 1189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fgConnectionsIsIncoming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    .line 1195
    :goto_48
    return v0

    .line 1194
    :cond_49
    const-string v0, "fgConnections is not have Connection!!!!!!!!!"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1195
    const/4 v0, 0x0

    goto :goto_48
.end method

.method public static findAccessCode(Z)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 919
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 920
    new-instance v2, Lcom/android/phone/LGTRoamingData;

    invoke-direct {v2, v0}, Lcom/android/phone/LGTRoamingData;-><init>(Landroid/content/Context;)V

    .line 921
    const-string v3, "RoamingPrefs"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 923
    const-string v3, "fakesid"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    if-eqz v0, :cond_28

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 925
    :cond_28
    const-string v0, "ril.cdma.sid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    :cond_2e
    const-string v3, ""

    .line 928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 930
    :try_start_46
    invoke-virtual {v2, v0}, Lcom/android/phone/LGTRoamingData;->getConnectNumBySid(Ljava/lang/String;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4e

    move-result-object v0

    .line 931
    if-nez v0, :cond_5a

    move v0, v1

    .line 943
    :goto_4d
    return v0

    .line 933
    :catch_4e
    move-exception v0

    .line 934
    if-eqz p0, :cond_55

    .line 935
    const-string v0, "00"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 936
    :cond_55
    invoke-virtual {v2}, Lcom/android/phone/LGTRoamingData;->close()V

    move v0, v1

    .line 937
    goto :goto_4d

    .line 940
    :cond_5a
    invoke-virtual {v2}, Lcom/android/phone/LGTRoamingData;->close()V

    .line 941
    if-eqz p0, :cond_61

    .line 942
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 943
    :cond_61
    const/4 v0, 0x1

    goto :goto_4d
.end method

.method public static getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;
    .registers 1

    .prologue
    .line 1094
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    return-object v0
.end method

.method public static getCallCardNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1015
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getCallEnd()Z
    .registers 1

    .prologue
    .line 1020
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    return v0
.end method

.method public static getCallType()Lcom/android/phone/PhoneUtilsExt$CallType;
    .registers 1

    .prologue
    .line 296
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    return-object v0
.end method

.method public static getContactsNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1007
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mContactsNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 890
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, ""

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 891
    :cond_e
    const-string v0, "82"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    .line 892
    :cond_12
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryCodeTemp()Ljava/lang/String;
    .registers 1

    .prologue
    .line 899
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCodeTemp:Ljava/lang/String;

    return-object v0
.end method

.method public static getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1229
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 1230
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1232
    return-object v0
.end method

.method public static getInternationalAccessCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 880
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, ""

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 881
    :cond_e
    const-string v0, "00"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 882
    :cond_12
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    return-object v0
.end method

.method private static getKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;
    .registers 9
    .parameter "rtsValue"
    .parameter "isSvc"

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 1591
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_1d

    aget-object v3, p0, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_34

    aget-object v3, p0, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_34

    :cond_1d
    move v0, v2

    .line 1592
    .local v0, isRtsStatus:Z
    :goto_1e
    if-nez p1, :cond_45

    .line 1593
    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3c

    .line 1594
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_b4

    .line 1600
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    .line 1655
    :goto_33
    return-object v1

    .end local v0           #isRtsStatus:Z
    :cond_34
    move v0, v1

    .line 1591
    goto :goto_1e

    .line 1596
    .restart local v0       #isRtsStatus:Z
    :sswitch_36
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1598
    :sswitch_39
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1602
    :cond_3c
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_c6

    .line 1628
    :cond_45
    if-nez p1, :cond_49

    if-eqz v0, :cond_b1

    .line 1629
    :cond_49
    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_118

    .line 1650
    if-nez p1, :cond_b1

    .line 1651
    aget-object v1, p0, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_ae

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1604
    :sswitch_5f
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1606
    :sswitch_62
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1608
    :sswitch_65
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1610
    :sswitch_68
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1612
    :sswitch_6b
    aget-object v1, p0, v2

    aput-object v1, p0, v5

    .line 1613
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1615
    :sswitch_72
    aget-object v1, p0, v2

    aput-object v1, p0, v5

    .line 1616
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1618
    :sswitch_79
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1620
    :sswitch_7c
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1621
    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_45

    .line 1622
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1631
    :sswitch_8f
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1633
    :sswitch_92
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1635
    :sswitch_95
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1637
    :sswitch_98
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1639
    :sswitch_9b
    if-nez p1, :cond_a4

    .line 1640
    aget-object v1, p0, v4

    aput-object v1, p0, v5

    .line 1641
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1644
    :cond_a4
    :sswitch_a4
    aget-object v1, p0, v4

    aput-object v1, p0, v5

    .line 1645
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1647
    :sswitch_ab
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1652
    :cond_ae
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_33

    .line 1655
    :cond_b1
    const/4 v1, 0x0

    goto :goto_33

    .line 1594
    nop

    :sswitch_data_b4
    .sparse-switch
        0xc -> :sswitch_36
        0xd -> :sswitch_36
        0xf -> :sswitch_36
        0xfe -> :sswitch_39
    .end sparse-switch

    .line 1602
    :sswitch_data_c6
    .sparse-switch
        0x2 -> :sswitch_5f
        0x3 -> :sswitch_62
        0x6 -> :sswitch_65
        0x7 -> :sswitch_6b
        0x8 -> :sswitch_68
        0xb -> :sswitch_68
        0xc -> :sswitch_68
        0xd -> :sswitch_68
        0xe -> :sswitch_6b
        0xf -> :sswitch_68
        0x10 -> :sswitch_72
        0x11 -> :sswitch_72
        0x16 -> :sswitch_72
        0x5f -> :sswitch_7c
        0x60 -> :sswitch_7c
        0x61 -> :sswitch_7c
        0x63 -> :sswitch_7c
        0x6f -> :sswitch_7c
        0xfe -> :sswitch_72
        0xff -> :sswitch_79
    .end sparse-switch

    .line 1629
    :sswitch_data_118
    .sparse-switch
        0x2 -> :sswitch_8f
        0x3 -> :sswitch_92
        0x6 -> :sswitch_95
        0x7 -> :sswitch_9b
        0x8 -> :sswitch_98
        0xb -> :sswitch_98
        0xc -> :sswitch_98
        0xd -> :sswitch_98
        0xe -> :sswitch_9b
        0xf -> :sswitch_98
        0x10 -> :sswitch_a4
        0x11 -> :sswitch_a4
        0x16 -> :sswitch_a4
        0xff -> :sswitch_ab
    .end sparse-switch
.end method

.method public static getKorCallStatusCode(Z)Lcom/android/phone/Constants$CallStatusCode;
    .registers 4
    .parameter "isSvc"

    .prologue
    const/4 v1, 0x0

    .line 1736
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v2}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v0

    .line 1737
    .local v0, rtsValue:[Ljava/lang/Integer;
    if-nez v0, :cond_20

    .line 1738
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v2}, Lcom/android/phone/CallController;->initRtsValueForKor()V

    .line 1739
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v2}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v0

    .line 1741
    :cond_20
    if-nez v0, :cond_23

    .line 1751
    :cond_22
    :goto_22
    return-object v1

    .line 1742
    :cond_23
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1743
    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtilsExt;->getSKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v1

    goto :goto_22

    .line 1745
    :cond_30
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1746
    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtilsExt;->getKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v1

    goto :goto_22

    .line 1748
    :cond_3d
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1749
    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtilsExt;->getLGTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v1

    goto :goto_22
.end method

.method private static getLGTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;
    .registers 7
    .parameter "rtsValue"
    .parameter "isSvc"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 1659
    if-nez p1, :cond_17

    .line 1660
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_44

    .line 1661
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_ac

    .line 1709
    :cond_17
    :goto_17
    if-eqz p1, :cond_22

    .line 1710
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_fe

    .line 1732
    :cond_22
    const/4 v0, 0x0

    :goto_23
    return-object v0

    .line 1663
    :sswitch_24
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1665
    :sswitch_27
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1667
    :sswitch_2a
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1669
    :sswitch_2d
    aget-object v0, p0, v2

    aput-object v0, p0, v3

    .line 1670
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1672
    :sswitch_34
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1674
    :sswitch_37
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1676
    :sswitch_3a
    aget-object v0, p0, v2

    aput-object v0, p0, v3

    .line 1677
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1679
    :sswitch_41
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1683
    :cond_44
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_54

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_17

    :cond_54
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 1686
    aget-object v0, p0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_138

    goto :goto_17

    .line 1688
    :sswitch_69
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1690
    :sswitch_6c
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1692
    :sswitch_6f
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1694
    :sswitch_72
    aget-object v0, p0, v4

    aput-object v0, p0, v3

    .line 1695
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1697
    :sswitch_79
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1699
    :sswitch_7c
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1701
    :sswitch_7f
    aget-object v0, p0, v4

    aput-object v0, p0, v3

    .line 1702
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1704
    :sswitch_86
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1712
    :sswitch_89
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1714
    :sswitch_8c
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1716
    :sswitch_8f
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1718
    :sswitch_92
    aget-object v0, p0, v2

    aput-object v0, p0, v3

    .line 1719
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1721
    :sswitch_99
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1723
    :sswitch_9c
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_23

    .line 1725
    :sswitch_9f
    aget-object v0, p0, v2

    aput-object v0, p0, v3

    .line 1726
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_23

    .line 1728
    :sswitch_a7
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_23

    .line 1661
    nop

    :sswitch_data_ac
    .sparse-switch
        0x2 -> :sswitch_24
        0x3 -> :sswitch_27
        0x6 -> :sswitch_2a
        0x7 -> :sswitch_34
        0x8 -> :sswitch_2d
        0xb -> :sswitch_2d
        0xc -> :sswitch_2d
        0xd -> :sswitch_2d
        0xe -> :sswitch_37
        0xf -> :sswitch_2d
        0x10 -> :sswitch_3a
        0x11 -> :sswitch_3a
        0x16 -> :sswitch_3a
        0x5f -> :sswitch_41
        0x60 -> :sswitch_41
        0x61 -> :sswitch_41
        0x63 -> :sswitch_41
        0x6f -> :sswitch_41
        0xfe -> :sswitch_41
        0xff -> :sswitch_41
    .end sparse-switch

    .line 1710
    :sswitch_data_fe
    .sparse-switch
        0x2 -> :sswitch_89
        0x3 -> :sswitch_8c
        0x6 -> :sswitch_8f
        0x7 -> :sswitch_99
        0x8 -> :sswitch_92
        0xb -> :sswitch_92
        0xc -> :sswitch_92
        0xd -> :sswitch_92
        0xe -> :sswitch_9c
        0xf -> :sswitch_92
        0x10 -> :sswitch_9f
        0x11 -> :sswitch_9f
        0x16 -> :sswitch_9f
        0xff -> :sswitch_a7
    .end sparse-switch

    .line 1686
    :sswitch_data_138
    .sparse-switch
        0x2 -> :sswitch_69
        0x3 -> :sswitch_6c
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_79
        0x8 -> :sswitch_72
        0xb -> :sswitch_72
        0xc -> :sswitch_72
        0xd -> :sswitch_72
        0xe -> :sswitch_7c
        0xf -> :sswitch_72
        0x10 -> :sswitch_7f
        0x11 -> :sswitch_7f
        0x16 -> :sswitch_7f
        0xff -> :sswitch_86
    .end sparse-switch
.end method

.method public static getLGTRADCallog()I
    .registers 1

    .prologue
    .line 915
    sget v0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADCallog:I

    return v0
.end method

.method public static getLGTRADTemp()I
    .registers 1

    .prologue
    .line 907
    sget v0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADTemp:I

    return v0
.end method

.method public static getNetworkMode()I
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1328
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1330
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    .line 1331
    const-string v3, "ril.roaming.networkmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1332
    const-string v4, "gsm.sim.roaming"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1333
    const-string v5, "ril.simtype"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNetworkSelManual => simtype  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "efRoaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsManualSelection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,networkMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1336
    const-string v6, "3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 1337
    const-string v1, "isNetworkSelManual - efRoaming is blank !! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1355
    :goto_69
    return v0

    .line 1340
    :cond_6a
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 1341
    const-string v1, "isNetworkSelManual - networkMode is blank !! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_69

    .line 1344
    :cond_78
    const-string v0, "3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1345
    const-string v0, "00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    if-nez v2, :cond_aa

    const-string v0, "AUTO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 1346
    const-string v0, "isNetworkSelManual - AUTO MODE "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1347
    goto :goto_69

    .line 1350
    :cond_99
    if-nez v2, :cond_aa

    const-string v0, "AUTO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 1351
    const-string v0, "isNetworkSelManual - AUTO MODE "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1352
    goto :goto_69

    .line 1355
    :cond_aa
    const/4 v0, 0x2

    goto :goto_69
.end method

.method public static getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "number"

    .prologue
    .line 536
    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 548
    .end local p0
    :cond_3
    :goto_3
    return-object p0

    .line 538
    .restart local p0
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 539
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 541
    :cond_16
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    if-eqz v0, :cond_3

    .line 542
    :cond_1e
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 543
    const-string v0, "***"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 544
    :cond_31
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    const-string v0, "#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private static getSKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;
    .registers 6
    .parameter "rtsValue"
    .parameter "isSvc"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 1570
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1b

    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1c

    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    .line 1571
    .local v0, isRtsStatus:Z
    :cond_1c
    if-eqz p1, :cond_2f

    .line 1572
    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_42

    .line 1587
    :goto_27
    const/4 v1, 0x0

    :goto_28
    return-object v1

    .line 1574
    :sswitch_29
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_28

    .line 1576
    :sswitch_2c
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_28

    .line 1580
    :cond_2f
    if-eqz v0, :cond_34

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_28

    .line 1581
    :cond_34
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_5c

    goto :goto_27

    .line 1583
    :sswitch_3e
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_28

    .line 1572
    nop

    :sswitch_data_42
    .sparse-switch
        0x2 -> :sswitch_29
        0x3 -> :sswitch_2c
        0x6 -> :sswitch_2c
        0xb -> :sswitch_2c
        0x11 -> :sswitch_2c
        0x16 -> :sswitch_2c
    .end sparse-switch

    .line 1581
    :sswitch_data_5c
    .sparse-switch
        0x10 -> :sswitch_3e
        0x11 -> :sswitch_3e
        0x16 -> :sswitch_3e
    .end sparse-switch
.end method

.method public static getSKTRADOutgoingCallNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSKTRADOutgoingCallNumber : mOutgoingCallString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallString:Ljava/lang/String;

    return-object v0
.end method

.method public static getSKTRADOutgoingCallUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSKTRADOutgoingCallUri : mOutgoingCallUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getSKTRADSetting()Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;
    .registers 1

    .prologue
    .line 314
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    return-object v0
.end method

.method public static getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "number"

    .prologue
    .line 328
    const/4 v5, 0x7

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "+82"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "0082"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string v6, "+082"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, "082"

    aput-object v6, v0, v5

    const/4 v5, 0x4

    const-string v6, "82"

    aput-object v6, v0, v5

    const/4 v5, 0x5

    const-string v6, "00682"

    aput-object v6, v0, v5

    const/4 v5, 0x6

    const-string v6, "+00682"

    aput-object v6, v0, v5

    .line 329
    .local v0, SKTRADPrefixlist:[Ljava/lang/String;
    if-eqz p0, :cond_71

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_71

    .line 330
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_33
    if-ge v2, v3, :cond_71

    aget-object v4, v1, v2

    .line 331
    .local v4, strPrefix:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSKTRADisplayNumber : number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 330
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 344
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #strPrefix:Ljava/lang/String;
    :cond_71
    return-object p0
.end method

.method public static getSponImsi()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1765
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, ""

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, ""

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, ""

    aput-object v2, v1, v0

    .line 1767
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1768
    if-nez v0, :cond_22

    move-object v0, v1

    .line 1780
    :goto_21
    return-object v0

    .line 1771
    :cond_22
    :try_start_22
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string v3, "getSponImsi"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1772
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_22 .. :try_end_34} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_34} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_34} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22 .. :try_end_34} :catch_35

    goto :goto_21

    .line 1777
    :catch_35
    move-exception v0

    :goto_36
    move-object v0, v1

    .line 1780
    goto :goto_21

    .line 1776
    :catch_38
    move-exception v0

    goto :goto_36

    .line 1775
    :catch_3a
    move-exception v0

    goto :goto_36

    .line 1774
    :catch_3c
    move-exception v0

    goto :goto_36
.end method

.method public static getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;
    .registers 1

    .prologue
    .line 1090
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    return-object v0
.end method

.method public static getUserInputDialingNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 310
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mUserInputDialingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static isChinaCommercialSim()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 218
    const-string v5, "ctc_dual_mode"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 219
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    const-string v6, "phone2"

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 220
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, imsi:Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, mcc:Ljava/lang/String;
    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, plmnId:Ljava/lang/String;
    const-string v5, "460"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    const-string v5, "45404"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 226
    :cond_33
    const/4 v4, 0x1

    .line 231
    :cond_34
    return v4
.end method

.method public static isDefaultIMEI()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 202
    const-string v3, "ctc_dual_mode"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 203
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    const-string v4, "phone2"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 207
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_15
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, imei:Ljava/lang/String;
    const-string v3, "000000000000000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDefaultIMEI : imei = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 212
    :goto_37
    return v2

    .line 205
    .end local v0           #imei:Ljava/lang/String;
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_38
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .restart local v1       #telephonyManager:Landroid/telephony/TelephonyManager;
    goto :goto_15

    .line 212
    .restart local v0       #imei:Ljava/lang/String;
    :cond_45
    const/4 v2, 0x0

    goto :goto_37
.end method

.method public static isEmergencyNumberToChange(Ljava/lang/String;)Z
    .registers 2
    .parameter "number"

    .prologue
    .line 287
    const-string v0, "114"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "112"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "113"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "119"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "122"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "125"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "127"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 290
    :cond_40
    const/4 v0, 0x1

    .line 292
    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public static isEvdoOnly()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1199
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_EVDO_Only_Mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1200
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkType()I

    move-result v2

    .line 1201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEvdoOnly - evdo_only :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", network_type :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 1202
    const-string v2, "Y"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1208
    :goto_45
    return v0

    :cond_46
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public static isLGTRADSetting()Z
    .registers 3

    .prologue
    .line 872
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dial_enable"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isLGTmergeState()Z
    .registers 1

    .prologue
    .line 1068
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->LGTmergeState:Z

    return v0
.end method

.method public static isLGTtransferState()Z
    .registers 1

    .prologue
    .line 1075
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->LGTtransferState:Z

    return v0
.end method

.method public static isNetworkSettingEnable()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1240
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1242
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 1243
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1245
    if-eqz v3, :cond_bf

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 1246
    const-string v0, "00101"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v1

    .line 1247
    :goto_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetworkSettingEnable imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " isFactorySim = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1249
    :goto_4b
    if-eqz v0, :cond_50

    .line 1265
    :cond_4d
    :goto_4d
    return v1

    :cond_4e
    move v0, v2

    .line 1246
    goto :goto_2b

    .line 1250
    :cond_50
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1252
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1253
    if-eqz v0, :cond_bd

    .line 1254
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v5, :cond_9b

    move v0, v1

    .line 1257
    :goto_69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetworkSettingEnable current_plmn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSimCardReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simOperator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1259
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9d

    move v1, v2

    .line 1260
    goto :goto_4d

    :cond_9b
    move v0, v2

    .line 1254
    goto :goto_69

    .line 1261
    :cond_9d
    if-eqz v4, :cond_b1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    const-string v5, "450"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b1

    move v1, v0

    .line 1262
    goto :goto_4d

    .line 1265
    :cond_b1
    const-string v4, "domestic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    if-nez v0, :cond_4d

    :cond_bb
    move v1, v2

    goto :goto_4d

    :cond_bd
    move v0, v2

    goto :goto_69

    :cond_bf
    move v0, v2

    goto :goto_4b
.end method

.method public static isRoamingArea()Ljava/lang/Boolean;
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 240
    const/4 v4, 0x0

    .line 242
    .local v4, result:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 243
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const-string v7, "ril.currentplmn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, current_plmn:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 246
    .local v3, phoneType:I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isDefaultIMEI()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 247
    :cond_21
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 262
    .end local v4           #result:Ljava/lang/Boolean;
    :goto_25
    return-object v4

    .line 249
    .restart local v4       #result:Ljava/lang/Boolean;
    :cond_26
    const/4 v7, 0x2

    if-ne v3, v7, :cond_40

    .line 250
    const-string v7, "domestic"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    const-string v7, "unknown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    :goto_39
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 251
    goto :goto_25

    :cond_3e
    move v5, v6

    .line 250
    goto :goto_39

    .line 254
    :cond_40
    const/4 v1, 0x0

    .line 255
    .local v1, isSimCardReady:Z
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    if-eqz v7, :cond_54

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v7, v8, :cond_96

    move v1, v5

    .line 258
    :cond_54
    :goto_54
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    if-nez v7, :cond_5f

    const-string v7, "isRoamingArea :: phone.getIccCard() == null "

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 259
    :cond_5f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRoamingArea :: current_plmn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isSimCardReady = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 261
    const-string v7, "domestic"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_98

    const-string v7, "unknown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_98

    if-eqz v1, :cond_98

    :goto_91
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 262
    goto :goto_25

    :cond_96
    move v1, v6

    .line 255
    goto :goto_54

    :cond_98
    move v5, v6

    .line 261
    goto :goto_91
.end method

.method public static isSKTRADDialingToKoreaEnabled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSKTRADDialingToKoreaEnabled : mSKTRADDialingToKoreaEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 279
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isSKTRADEnabled()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 236
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    if-eq v1, v2, :cond_16

    const/4 v1, 0x1

    :goto_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 237
    .local v0, result:Ljava/lang/Boolean;
    return-object v0

    .line 236
    .end local v0           #result:Ljava/lang/Boolean;
    :cond_16
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static isSKTSIM()Z
    .registers 3

    .prologue
    .line 1754
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1755
    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1756
    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "45005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1757
    :cond_1c
    const/4 v0, 0x1

    .line 1758
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isSMS()Z
    .registers 1

    .prologue
    .line 1040
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->smsCall:Z

    return v0
.end method

.method public static isSendDtmf()Z
    .registers 1

    .prologue
    .line 1058
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    return v0
.end method

.method public static isSendEmptyFlash()Z
    .registers 1

    .prologue
    .line 1050
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    return v0
.end method

.method public static isThrWayCallAvailable(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1212
    .line 1213
    const-string v2, "*22"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1215
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 1216
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    .line 1225
    :goto_10
    return v0

    .line 1217
    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1220
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 1221
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    goto :goto_10

    :cond_1e
    move v0, v1

    .line 1223
    goto :goto_10
.end method

.method public static isVideoCallType()Z
    .registers 2

    .prologue
    .line 305
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    if-eq v0, v1, :cond_c

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    .line 306
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isVoIPActivated()Z
    .registers 6

    .prologue
    .line 639
    const/4 v1, 0x0

    .line 641
    .local v1, ret:Z
    :try_start_1
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 642
    .local v2, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_11

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v1

    .line 643
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPActivated - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    .line 647
    .end local v2           #voipCall:Landroid/os/IVoIPInterface;
    :goto_28
    return v1

    .line 644
    :catch_29
    move-exception v0

    .line 645
    .local v0, e:Ljava/lang/Exception;
    :try_start_2a
    const-string v3, "PhoneUtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoIPActivated - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_43

    goto :goto_28

    .line 647
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_43
    move-exception v3

    goto :goto_28
.end method

.method public static isVoIPRingOrDialing()Z
    .registers 6

    .prologue
    .line 651
    const/4 v1, 0x0

    .line 653
    .local v1, ret:Z
    :try_start_1
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 654
    .local v2, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_11

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z

    move-result v1

    .line 655
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPRingOrDialing - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    .line 659
    .end local v2           #voipCall:Landroid/os/IVoIPInterface;
    :goto_28
    return v1

    .line 656
    :catch_29
    move-exception v0

    .line 657
    .local v0, e:Ljava/lang/Exception;
    :try_start_2a
    const-string v3, "PhoneUtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoIPRingOrDialing - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_43

    goto :goto_28

    .line 659
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_43
    move-exception v3

    goto :goto_28
.end method

.method public static isVoIPRingOrOffhook()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 663
    const/4 v1, 0x0

    .line 665
    .local v1, ret:Z
    :try_start_2
    const-string v4, "voip"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 666
    .local v2, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_1b

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_1a
    move v1, v3

    .line 667
    :cond_1b
    :goto_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPRingOrOffhook - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_4f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_35

    .line 671
    .end local v2           #voipCall:Landroid/os/IVoIPInterface;
    :goto_32
    return v1

    .line 666
    .restart local v2       #voipCall:Landroid/os/IVoIPInterface;
    :cond_33
    const/4 v1, 0x0

    goto :goto_1b

    .line 668
    .end local v2           #voipCall:Landroid/os/IVoIPInterface;
    :catch_35
    move-exception v0

    .line 669
    .local v0, e:Ljava/lang/Exception;
    :try_start_36
    const-string v3, "PhoneUtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoIPRingOrOffhook - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_4f

    goto :goto_32

    .line 671
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_4f
    move-exception v3

    goto :goto_32
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1786
    const-string v0, "PhoneUtilsExt"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .registers 3
    .parameter "message"
    .parameter "always"

    .prologue
    .line 1790
    const-string v0, "PhoneUtilsExt"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1791
    return-void
.end method

.method static notifyCallProtectionStatus(Z)V
    .registers 12
    .parameter "foreground"

    .prologue
    const/4 v7, 0x1

    .line 751
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->notifyCallProtectionValue()V

    .line 752
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 753
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v8, "gsm.version.ril-impl"

    const-string v9, "Qualcomm"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 755
    .local v6, ril_version:Ljava/lang/String;
    :try_start_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ril version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 756
    const-string v8, "Qualcomm"

    const/4 v9, 0x0

    const-string v10, "Qualcomm"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 757
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v8, :cond_49

    .line 758
    new-instance v8, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_49} :catch_9f

    .line 770
    :cond_49
    :goto_49
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 771
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 773
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v5, 0x6

    .line 774
    .local v5, fileSize:I
    const/16 v8, 0x16

    :try_start_56
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 775
    const/16 v8, 0x37

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 776
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 777
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 778
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_b9

    .line 779
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 780
    const-string v7, "notifyCallProtectionStatus : No Call"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 785
    :goto_79
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v7, :cond_11e

    .line 786
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_87
    .catchall {:try_start_56 .. :try_end_87} :catchall_12a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_87} :catch_da

    .line 794
    :goto_87
    if-eqz v1, :cond_8c

    :try_start_89
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 795
    :cond_8c
    if-eqz v2, :cond_91

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_91} :catch_136

    .line 800
    :cond_91
    :goto_91
    return-void

    .line 761
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v5           #fileSize:I
    :cond_92
    :try_start_92
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v8, :cond_49

    .line 762
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v8}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 763
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9e} :catch_9f

    goto :goto_49

    .line 766
    :catch_9f
    move-exception v4

    .line 767
    .local v4, ex:Ljava/lang/Exception;
    const-string v8, "PhoneUtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCallProtectionStatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 782
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    .restart local v5       #fileSize:I
    :cond_b9
    if-eqz p0, :cond_119

    :goto_bb
    :try_start_bb
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 783
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyCallProtectionStatus : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p0, :cond_11b

    const-string v7, "Foreground"

    :goto_cd
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_d9
    .catchall {:try_start_bb .. :try_end_d9} :catchall_12a
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d9} :catch_da

    goto :goto_79

    .line 790
    :catch_da
    move-exception v3

    .line 791
    .local v3, e:Ljava/lang/Exception;
    :try_start_db
    const-string v7, "PhoneUtilsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyCallProtectionStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catchall {:try_start_db .. :try_end_f3} :catchall_12a

    .line 794
    if-eqz v1, :cond_f8

    :try_start_f5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 795
    :cond_f8
    if-eqz v2, :cond_91

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fd} :catch_fe

    goto :goto_91

    .line 796
    :catch_fe
    move-exception v3

    .line 797
    const-string v7, "PhoneUtilsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyCallProtectionStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    .line 782
    .end local v3           #e:Ljava/lang/Exception;
    :cond_119
    const/4 v7, 0x2

    goto :goto_bb

    .line 783
    :cond_11b
    :try_start_11b
    const-string v7, "Background"

    goto :goto_cd

    .line 788
    :cond_11e
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_128
    .catchall {:try_start_11b .. :try_end_128} :catchall_12a
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_128} :catch_da

    goto/16 :goto_87

    .line 793
    :catchall_12a
    move-exception v7

    .line 794
    if-eqz v1, :cond_130

    :try_start_12d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 795
    :cond_130
    if-eqz v2, :cond_135

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_135} :catch_151

    .line 798
    :cond_135
    :goto_135
    throw v7

    .line 796
    :catch_136
    move-exception v3

    .line 797
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "PhoneUtilsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyCallProtectionStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    .line 796
    .end local v3           #e:Ljava/lang/Exception;
    :catch_151
    move-exception v3

    .line 797
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "PhoneUtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCallProtectionStatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135
.end method

.method static notifyCallProtectionValue()V
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 705
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 706
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v10, "gsm.version.ril-impl"

    const-string v11, "Qualcomm"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 708
    .local v7, ril_version:Ljava/lang/String;
    :try_start_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ril version : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 709
    const-string v10, "Qualcomm"

    const/4 v11, 0x0

    const-string v12, "Qualcomm"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a0

    .line 710
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v10, :cond_47

    .line 711
    new-instance v10, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_47} :catch_ad

    .line 723
    :cond_47
    :goto_47
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 724
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 726
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v6, 0x6

    .line 727
    .local v6, fileSize:I
    const/16 v10, 0x16

    :try_start_54
    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 728
    const/16 v10, 0x37

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 729
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 730
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 731
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->checkCallProtectionValue()Z

    move-result v4

    .line 732
    .local v4, enableCallProtect:Z
    if-eqz v4, :cond_c7

    :goto_69
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 733
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyCallProtectionValue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v4, :cond_c9

    const-string v8, "Set"

    :goto_7b
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 734
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v8, :cond_cc

    .line 735
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_95
    .catchall {:try_start_54 .. :try_end_95} :catchall_130
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_95} :catch_d7

    .line 743
    :goto_95
    if-eqz v1, :cond_9a

    :try_start_97
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 744
    :cond_9a
    if-eqz v2, :cond_9f

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9f} :catch_115

    .line 749
    .end local v4           #enableCallProtect:Z
    :cond_9f
    :goto_9f
    return-void

    .line 714
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v6           #fileSize:I
    :cond_a0
    :try_start_a0
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v10, :cond_47

    .line 715
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v10}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 716
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_ac} :catch_ad

    goto :goto_47

    .line 719
    :catch_ad
    move-exception v5

    .line 720
    .local v5, ex:Ljava/lang/Exception;
    const-string v10, "PhoneUtilsExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyCallProtectionValue: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    .restart local v4       #enableCallProtect:Z
    .restart local v6       #fileSize:I
    :cond_c7
    move v8, v9

    .line 732
    goto :goto_69

    .line 733
    :cond_c9
    :try_start_c9
    const-string v8, "Unset"

    goto :goto_7b

    .line 737
    :cond_cc
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_d6
    .catchall {:try_start_c9 .. :try_end_d6} :catchall_130
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d6} :catch_d7

    goto :goto_95

    .line 739
    .end local v4           #enableCallProtect:Z
    :catch_d7
    move-exception v3

    .line 740
    .local v3, e:Ljava/lang/Exception;
    :try_start_d8
    const-string v8, "PhoneUtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCallProtectionValue : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catchall {:try_start_d8 .. :try_end_f0} :catchall_130

    .line 743
    if-eqz v1, :cond_f5

    :try_start_f2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 744
    :cond_f5
    if-eqz v2, :cond_9f

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_fa} :catch_fb

    goto :goto_9f

    .line 745
    :catch_fb
    move-exception v3

    .line 746
    const-string v8, "PhoneUtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCallProtectionValue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 745
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #enableCallProtect:Z
    :catch_115
    move-exception v3

    .line 746
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "PhoneUtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCallProtectionValue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9f

    .line 742
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #enableCallProtect:Z
    :catchall_130
    move-exception v8

    .line 743
    if-eqz v1, :cond_136

    :try_start_133
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 744
    :cond_136
    if-eqz v2, :cond_13b

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_13b} :catch_13c

    .line 747
    :cond_13b
    :goto_13b
    throw v8

    .line 745
    :catch_13c
    move-exception v3

    .line 746
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v9, "PhoneUtilsExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyCallProtectionValue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b
.end method

.method public static setAutoDialState()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1269
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1270
    const-string v0, ""

    .line 1271
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1272
    const-string v0, "RoamingPrefs"

    invoke-virtual {v2, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1273
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1275
    const-string v4, "lastest_country"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 1276
    const-string v4, "contain lastest_country"

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1277
    const-string v4, "lastest_country"

    const-string v5, "kr"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1284
    :goto_31
    if-eqz v1, :cond_48

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 1285
    const-string v4, "lastestCountry Change"

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1286
    const-string v4, "lastest_country"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1287
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1290
    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isoCountryCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lastestCountry = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1291
    if-eqz v1, :cond_85

    .line 1292
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 1293
    :cond_78
    const-string v0, "LGT AutoDialState No Change!!"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1294
    const-string v0, "kr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 1326
    :cond_85
    :goto_85
    return-void

    .line 1279
    :cond_86
    const-string v0, "Not contain lastest_country"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1280
    const-string v0, "lastest_country"

    const-string v4, "kr"

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1281
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1282
    const-string v0, "kr"

    goto :goto_31

    .line 1297
    :cond_98
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_setting"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGT roaming_auto_setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1299
    if-ne v0, v7, :cond_85

    .line 1300
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getNetworkMode()I

    move-result v0

    if-ne v0, v7, :cond_e5

    .line 1302
    const-string v0, "LGT show toast!!"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1303
    const v0, 0x7f0e0600

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    .line 1304
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_setting"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_85

    .line 1307
    :cond_e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkMode()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getNetworkMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_85

    .line 1312
    :cond_100
    const-string v0, "kr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 1313
    const-string v0, "LGT AutoDialing off"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dial_enable"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1323
    :goto_118
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setDefaultRoamingValue()V

    goto/16 :goto_85

    .line 1319
    :cond_11d
    const-string v0, "LGT AutoDialing on"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dial_enable"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_118
.end method

.method public static setCONFCallState(Lcom/android/phone/PhoneUtilsExt$CONFCallState;)V
    .registers 1
    .parameter "newState"

    .prologue
    .line 1101
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    .line 1102
    return-void
.end method

.method public static setCallCardNumber(Ljava/lang/String;)V
    .registers 1
    .parameter "callCardNumber"

    .prologue
    .line 1011
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCallCardNumber:Ljava/lang/String;

    .line 1012
    return-void
.end method

.method public static setCallEnd(Z)V
    .registers 1
    .parameter "callend"

    .prologue
    .line 1024
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    .line 1025
    return-void
.end method

.method public static setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 301
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    .line 302
    return-void
.end method

.method public static setContactsNumber(Ljava/lang/String;)V
    .registers 1
    .parameter "contactsNumber"

    .prologue
    .line 1003
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mContactsNumber:Ljava/lang/String;

    .line 1004
    return-void
.end method

.method public static setCountryCode(Ljava/lang/String;)V
    .registers 1
    .parameter "countryCode"

    .prologue
    .line 886
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    .line 887
    return-void
.end method

.method public static setCountryCodeTemp(Ljava/lang/String;)V
    .registers 1
    .parameter "countryCodeTemp"

    .prologue
    .line 896
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCountryCodeTemp:Ljava/lang/String;

    .line 897
    return-void
.end method

.method private static setDefaultRoamingValue()V
    .registers 6

    .prologue
    .line 1493
    const-string v0, "PhoneUtilsExt : setDefaultRoamingValue"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1494
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1496
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1498
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_id"

    const-wide/16 v4, 0x6c

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1499
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_code"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1500
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CONTURY_NAME_KOR"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1501
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "CONTURY_NAME_ENG"

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1502
    return-void
.end method

.method public static setDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1138
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 1139
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallEnd()Z

    move-result v1

    if-nez v1, :cond_48

    .line 1140
    if-eqz v0, :cond_22

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1142
    :cond_22
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1143
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    .line 1144
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 1171
    :cond_32
    :goto_32
    const-string v0, "0234167010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->IsDialingNumberRevert()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_48

    .line 1173
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1175
    :cond_48
    return-object p0

    .line 1145
    :cond_49
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v2, :cond_54

    .line 1146
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 1148
    :cond_54
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_60

    .line 1149
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_32

    .line 1151
    :cond_60
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 1154
    :cond_65
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v2, :cond_70

    .line 1155
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 1156
    :cond_70
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v2, :cond_7b

    .line 1157
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 1158
    :cond_7b
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSMS()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 1159
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->findAccessCode(Z)Z

    .line 1160
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 1162
    :cond_89
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_99

    .line 1163
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->findAccessCode(Z)Z

    .line 1164
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    .line 1166
    :cond_99
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_32
.end method

.method public static setDialingNumberForRAD(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1124
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 1125
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_54

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isEmergencyNumberToChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1126
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in Roaming Area --setDialingNumberForRAD before - number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1128
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADDialingToKoreaEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1129
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForSKTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1132
    :goto_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in Roaming Area --setDialingNumberForRAD after -number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1134
    :cond_54
    return-object p0

    .line 1131
    :cond_55
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_3e
.end method

.method public static setDialingNumberRevert(Z)V
    .registers 1
    .parameter "revert"

    .prologue
    .line 392
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->mRevertDialingNumber:Z

    .line 393
    return-void
.end method

.method public static setEmptyFlash(Z)V
    .registers 1
    .parameter "isSend"

    .prologue
    .line 1054
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    .line 1055
    return-void
.end method

.method public static setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4
    .parameter "phoneNumber"
    .parameter "isIncome"

    .prologue
    .line 1179
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, ""

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1180
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object p0

    .line 1182
    :cond_1c
    return-object p0
.end method

.method public static setLGTRADTemp(I)V
    .registers 1
    .parameter "temp"

    .prologue
    .line 903
    sput p0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADTemp:I

    .line 904
    return-void
.end method

.method public static setLGTisPartyCall(Z)V
    .registers 1
    .parameter "lGTisPartyCall"

    .prologue
    .line 1087
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTisPartyCall:Z

    .line 1088
    return-void
.end method

.method public static setLGTmergeState(Z)V
    .registers 1
    .parameter "lGTmergeState"

    .prologue
    .line 1072
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTmergeState:Z

    .line 1073
    return-void
.end method

.method public static setLGTtransferState(Z)V
    .registers 1
    .parameter "lGTtransferState"

    .prologue
    .line 1079
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTtransferState:Z

    .line 1080
    return-void
.end method

.method public static setMultiCallState()V
    .registers 3

    .prologue
    .line 1105
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1106
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_2b

    .line 1108
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v2, :cond_1c

    .line 1109
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTmergeState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1110
    :cond_1c
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v2, :cond_2a

    .line 1111
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTtransferState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1121
    :cond_2a
    :goto_2a
    return-void

    .line 1112
    :cond_2b
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_4f

    .line 1114
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v2, :cond_43

    .line 1115
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTmergeState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1116
    :cond_43
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v2, :cond_2a

    .line 1117
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    goto :goto_2a

    .line 1119
    :cond_4f
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    goto :goto_2a
.end method

.method public static setOutgoingToKorea(Z)V
    .registers 1
    .parameter "isKorea"

    .prologue
    .line 1028
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->outgoingToKorea:Z

    .line 1029
    return-void
.end method

.method public static setPhoneAppSetting()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 348
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_auto_dial"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 349
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneAppSetting : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => 0=Enabled, 1=Disabled, 2=OnlyOutgoingToKorea"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 350
    packed-switch v0, :pswitch_data_4a

    .line 366
    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    .line 367
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 370
    :goto_36
    return-void

    .line 353
    :pswitch_37
    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Enabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    goto :goto_36

    .line 357
    :pswitch_3c
    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    .line 358
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_36

    .line 362
    :pswitch_44
    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->OnlyOutgoingToKorea:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    goto :goto_36

    .line 350
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_37
        :pswitch_3c
        :pswitch_44
    .end packed-switch
.end method

.method public static setRADCode()V
    .registers 4

    .prologue
    .line 862
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "country_code"

    const/16 v3, 0x52

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, country_code:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRADCode : country_code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 867
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCountryCode(Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public static setSKTCallLogType(Ljava/lang/String;)V
    .registers 4
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 509
    if-nez p0, :cond_5

    .line 533
    :cond_4
    :goto_4
    return-void

    .line 510
    :cond_5
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 511
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 513
    :cond_17
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 514
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 515
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 516
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_4

    .line 517
    :cond_2c
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_47

    .line 518
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 519
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_4

    .line 521
    :cond_47
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 522
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_4

    .line 524
    :cond_4c
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 525
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 526
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 527
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_4

    .line 529
    :cond_61
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 530
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_4
.end method

.method public static setSKTRADDialingToKoreaEnabled(Z)V
    .registers 3
    .parameter "set"

    .prologue
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSKTRADDialingToKoreaEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 397
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    .line 398
    return-void
.end method

.method public static setSKTRADOutgoingCallNumber(Ljava/lang/String;)V
    .registers 1
    .parameter "outgoingCallString"

    .prologue
    .line 377
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallString:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public static setSKTRADOutgoingCallUri(Landroid/net/Uri;)V
    .registers 1
    .parameter "outgoingCallUri"

    .prologue
    .line 373
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallUri:Landroid/net/Uri;

    .line 374
    return-void
.end method

.method public static setSendDtmf(Z)V
    .registers 1
    .parameter "isSend"

    .prologue
    .line 1062
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    .line 1063
    return-void
.end method

.method public static setTHRWAYCallState(Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;)V
    .registers 1
    .parameter "newState"

    .prologue
    .line 1097
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    .line 1098
    return-void
.end method

.method public static setUserInputDialingNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "number"

    .prologue
    .line 382
    move-object v0, p0

    .line 383
    .local v0, inputNumber:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 384
    const-string v1, "\\,.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "\\;.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserInputDialingNumber  input num= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "set num= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 388
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mUserInputDialingNumber:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public static showNetworkAutoReboot()V
    .registers 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1359
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1361
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    .line 1362
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1363
    const-string v3, "gsm.sim.roaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI efRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IsManualSelection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,networkMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1367
    const-string v1, "showNetworkAutoReboot - MANUAL MODE need to show popup!! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1369
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 1372
    const-string v2, " setIMSIAuto !! "

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1374
    new-array v2, v6, [B

    .line 1375
    aput-byte v8, v2, v8

    .line 1378
    :try_start_59
    const-class v3, Lcom/android/internal/telephony/IccCard;

    const-string v4, "setRoaming"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Message;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1379
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    const/4 v6, 0x0

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catch Ljava/lang/NoSuchMethodException; {:try_start_59 .. :try_end_81} :catch_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_81} :catch_dc
    .catch Ljava/lang/IllegalAccessException; {:try_start_59 .. :try_end_81} :catch_da
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_59 .. :try_end_81} :catch_d8

    .line 1388
    :goto_81
    const-string v2, " networkSelectAuto !! "

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1389
    invoke-interface {v0, v9}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1392
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_98

    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1395
    :cond_98
    const-string v0, "setAutoBandMode"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1397
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1399
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1404
    :cond_b6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v8, v9}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1409
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1410
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.LGTNetworkAutoRebootPopup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1411
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1412
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 1414
    return-void

    .line 1383
    :catch_d8
    move-exception v2

    goto :goto_81

    .line 1382
    :catch_da
    move-exception v2

    goto :goto_81

    .line 1381
    :catch_dc
    move-exception v2

    goto :goto_81

    .line 1380
    :catch_de
    move-exception v2

    goto :goto_81
.end method

.method public static showNetworkAutoRebootIfManualSelected()V
    .registers 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 1418
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1420
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    .line 1421
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1422
    const-string v3, "gsm.sim.roaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI efRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", IsManualSelection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,networkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1425
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1426
    const-string v0, "showNetworkAutoRebootIfManualSelected - efRoaming is blank !! "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1490
    :goto_54
    return-void

    .line 1429
    :cond_55
    const-string v4, "00"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    if-nez v1, :cond_6d

    const-string v4, "AUTO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1430
    const-string v0, "showNetworkAutoRebootIfManualSelected - AUTO MODE "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_54

    .line 1434
    :cond_6d
    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1435
    const-string v5, "domestic"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNetworkAutoRebootIfManualSelected - currentplmn is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_54

    .line 1440
    :cond_92
    const-string v4, "showNetworkAutoRebootIfManualSelected - MANUAL MODE need to show popup!! "

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1443
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 1445
    const-string v5, "00"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 1446
    const-string v3, " setIMSIAuto !! "

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1448
    new-array v3, v6, [B

    .line 1449
    aput-byte v10, v3, v10

    .line 1452
    :try_start_ac
    const-class v5, Lcom/android/internal/telephony/IccCard;

    const-string v6, "setRoaming"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1453
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    const/4 v8, 0x0

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ac .. :try_end_d4} :catch_13c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ac .. :try_end_d4} :catch_13a
    .catch Ljava/lang/IllegalAccessException; {:try_start_ac .. :try_end_d4} :catch_138
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_ac .. :try_end_d4} :catch_136

    .line 1462
    :cond_d4
    :goto_d4
    if-eqz v1, :cond_de

    .line 1463
    const-string v1, " networkSelectAuto !! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1464
    invoke-interface {v0, v11}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1467
    :cond_de
    iget-object v0, v4, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_ed

    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1469
    :cond_ed
    const-string v0, "AUTO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 1471
    const-string v0, "setAutoBandMode"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1473
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 1475
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1480
    :cond_113
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v10, v11}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1485
    :cond_11c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1486
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.LGTNetworkAutoRebootPopup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1487
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1488
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_54

    .line 1457
    :catch_136
    move-exception v3

    goto :goto_d4

    .line 1456
    :catch_138
    move-exception v3

    goto :goto_d4

    .line 1455
    :catch_13a
    move-exception v3

    goto :goto_d4

    .line 1454
    :catch_13c
    move-exception v3

    goto :goto_d4
.end method
