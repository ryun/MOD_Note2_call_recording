.class public Lcom/android/phone/LGTServiceProviderSelect;
.super Landroid/preference/PreferenceActivity;
.source "LGTServiceProviderSelect.java"


# instance fields
.field public dialog:Landroid/app/ProgressDialog;

.field ef_sponimst1:Landroid/preference/Preference;

.field ef_sponimst2:Landroid/preference/Preference;

.field ef_sponimst3:Landroid/preference/Preference;

.field private mCard:Lcom/android/internal/telephony/IccCard;

.field private mEfRoaming:Ljava/lang/String;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingLgt:Ljava/lang/String;

.field private mRoamingSponsor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 60
    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingLgt:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingSponsor:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 296
    new-instance v0, Lcom/android/phone/LGTServiceProviderSelect$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTServiceProviderSelect$1;-><init>(Lcom/android/phone/LGTServiceProviderSelect;)V

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTServiceProviderSelect;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/LGTServiceProviderSelect;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/LGTServiceProviderSelect;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProviderSelect;->sendImsiStatusChangeNoti()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/LGTServiceProviderSelect;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/LGTServiceProviderSelect;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProviderSelect;->reboot()V

    return-void
.end method

.method private constructDialog()Landroid/app/ProgressDialog;
    .registers 4

    .prologue
    .line 283
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, pd:Landroid/app/ProgressDialog;
    const v1, 0x7f0e05f8

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTServiceProviderSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 285
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 287
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 288
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 291
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 293
    return-object v0
.end method

.method private getTitleFromSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "str"

    .prologue
    .line 119
    const-string v0, ""

    .line 120
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingLgt:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingSponsor:Ljava/lang/String;

    .line 122
    const-string v1, "LG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 123
    iget-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingLgt:Ljava/lang/String;

    .line 127
    :goto_26
    return-object v0

    .line 125
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingSponsor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method private getToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"

    .prologue
    .line 269
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .local v1, str1:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 271
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_10

    move-result-object p1

    move-object v2, p1

    .line 276
    .end local v1           #str1:Ljava/util/StringTokenizer;
    :goto_f
    return-object v2

    .line 272
    :catch_10
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_f
.end method

.method private reboot()V
    .registers 5

    .prologue
    .line 334
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 335
    .local v0, mRebootHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/phone/LGTServiceProviderSelect$2;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTServiceProviderSelect$2;-><init>(Lcom/android/phone/LGTServiceProviderSelect;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    return-void
.end method

.method private removeSpon(I)V
    .registers 4
    .parameter "sponNum"

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_22

    .line 148
    :goto_3
    return-void

    .line 134
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst1:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 137
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 140
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst3:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 132
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_4
        :pswitch_e
        :pswitch_18
    .end packed-switch
.end method

.method private sendImsiStatusChangeNoti()V
    .registers 8

    .prologue
    .line 152
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 155
    .local v1, dos:Ljava/io/DataOutputStream;
    const-string v4, "LGTServiceProviderSelect"

    const-string v5, "sendImsiStatusChangeNoti!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v3, 0x5

    .line 159
    .local v3, fileSize:I
    const/16 v4, 0x16

    :try_start_14
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 160
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 161
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 162
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_23} :catch_33

    .line 171
    :try_start_23
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_31

    .line 176
    iget-object v4, p0, Lcom/android/phone/LGTServiceProviderSelect;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 178
    :goto_30
    return-void

    .line 172
    :catch_31
    move-exception v2

    .line 173
    .local v2, e:Ljava/lang/Exception;
    goto :goto_30

    .line 164
    .end local v2           #e:Ljava/lang/Exception;
    :catch_33
    move-exception v2

    .line 171
    .local v2, e:Ljava/io/IOException;
    :try_start_34
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_30

    .line 172
    :catch_38
    move-exception v2

    .line 173
    .local v2, e:Ljava/lang/Exception;
    goto :goto_30

    .line 170
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_3a
    move-exception v4

    .line 171
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 173
    throw v4

    .line 172
    :catch_3f
    move-exception v2

    .line 173
    .restart local v2       #e:Ljava/lang/Exception;
    goto :goto_30
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-string v7, "LGTServiceProviderSelect"

    const-string v8, "On Create!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 73
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    new-array v4, v12, [Ljava/lang/String;

    .line 74
    .local v4, sponIMSI:[Ljava/lang/String;
    if-eqz v6, :cond_7f

    .line 75
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSponImsi()[Ljava/lang/String;

    move-result-object v4

    .line 82
    :goto_1e
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 83
    new-instance v7, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v7, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 84
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->mCard:Lcom/android/internal/telephony/IccCard;

    .line 85
    const v7, 0x7f060032

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->addPreferencesFromResource(I)V

    .line 86
    const-string v7, "ef_sponimsi1"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst1:Landroid/preference/Preference;

    .line 87
    const-string v7, "ef_sponimsi2"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst2:Landroid/preference/Preference;

    .line 88
    const-string v7, "ef_sponimsi3"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst3:Landroid/preference/Preference;

    .line 89
    aget-object v0, v4, v9

    .line 90
    .local v0, efSpon1:Ljava/lang/String;
    aget-object v1, v4, v10

    .line 91
    .local v1, efSpon2:Ljava/lang/String;
    aget-object v2, v4, v11

    .line 92
    .local v2, efSpon3:Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/String;

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    aput-object v2, v5, v11

    .line 94
    .local v5, str:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_60
    array-length v7, v5

    if-ge v3, v7, :cond_8c

    .line 96
    aget-object v7, v5, v3

    if-eqz v7, :cond_71

    const-string v7, ""

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 97
    :cond_71
    invoke-direct {p0, v3}, Lcom/android/phone/LGTServiceProviderSelect;->removeSpon(I)V

    .line 99
    :cond_74
    aget-object v7, v5, v3

    invoke-direct {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 77
    .end local v0           #efSpon1:Ljava/lang/String;
    .end local v1           #efSpon2:Ljava/lang/String;
    .end local v2           #efSpon3:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #str:[Ljava/lang/String;
    :cond_7f
    const-string v7, ""

    aput-object v7, v4, v9

    .line 78
    const-string v7, ""

    aput-object v7, v4, v10

    .line 79
    const-string v7, ""

    aput-object v7, v4, v11

    goto :goto_1e

    .line 107
    .restart local v0       #efSpon1:Ljava/lang/String;
    .restart local v1       #efSpon2:Ljava/lang/String;
    .restart local v2       #efSpon3:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v5       #str:[Ljava/lang/String;
    :cond_8c
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "button_srch_netwrks_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/LGTServiceProviderSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst1:Landroid/preference/Preference;

    aget-object v8, v5, v9

    invoke-direct {p0, v8}, Lcom/android/phone/LGTServiceProviderSelect;->getTitleFromSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst1:Landroid/preference/Preference;

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst2:Landroid/preference/Preference;

    aget-object v8, v5, v10

    invoke-direct {p0, v8}, Lcom/android/phone/LGTServiceProviderSelect;->getTitleFromSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst2:Landroid/preference/Preference;

    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst3:Landroid/preference/Preference;

    aget-object v8, v5, v11

    invoke-direct {p0, v8}, Lcom/android/phone/LGTServiceProviderSelect;->getTitleFromSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst3:Landroid/preference/Preference;

    aget-object v8, v5, v11

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 184
    const-string v0, "LGTServiceProviderSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 186
    new-array v1, v3, [B

    .line 188
    const-string v2, "kor_phone_via_chip"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 189
    iget-object v2, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 192
    :cond_35
    const-string v2, "ef_lgu"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 193
    const/16 v2, 0x10

    aput-byte v2, v1, v4

    .line 197
    :try_start_45
    const-class v2, Lcom/android/internal/telephony/IccCard;

    const-string v3, "setRoaming"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 198
    iget-object v3, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/NoSuchMethodException; {:try_start_45 .. :try_end_70} :catch_173
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_70} :catch_170
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_70} :catch_16d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_45 .. :try_end_70} :catch_16a

    .line 205
    :goto_70
    const-string v0, "10"

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    .line 263
    :goto_74
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProviderSelect;->constructDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->dialog:Landroid/app/ProgressDialog;

    .line 264
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_7e
    return v0

    .line 207
    :cond_7f
    const-string v2, "ef_sponimsi1"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 210
    const/16 v2, 0x11

    aput-byte v2, v1, v4

    .line 214
    :try_start_8f
    const-class v2, Lcom/android/internal/telephony/IccCard;

    const-string v3, "setRoaming"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 215
    iget-object v3, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ba
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8f .. :try_end_ba} :catch_167
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8f .. :try_end_ba} :catch_164
    .catch Ljava/lang/IllegalAccessException; {:try_start_8f .. :try_end_ba} :catch_161
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8f .. :try_end_ba} :catch_15e

    .line 222
    :goto_ba
    const-string v0, "11"

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    goto :goto_74

    .line 224
    :cond_bf
    const-string v2, "ef_sponimsi2"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 227
    const/16 v2, 0x12

    aput-byte v2, v1, v4

    .line 231
    :try_start_cf
    const-class v2, Lcom/android/internal/telephony/IccCard;

    const-string v3, "setRoaming"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 232
    iget-object v3, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fa
    .catch Ljava/lang/NoSuchMethodException; {:try_start_cf .. :try_end_fa} :catch_15c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cf .. :try_end_fa} :catch_15a
    .catch Ljava/lang/IllegalAccessException; {:try_start_cf .. :try_end_fa} :catch_158
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_cf .. :try_end_fa} :catch_156

    .line 239
    :goto_fa
    const-string v0, "12"

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    goto/16 :goto_74

    .line 241
    :cond_100
    const-string v2, "ef_sponimsi3"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_141

    .line 244
    const/16 v2, 0x13

    aput-byte v2, v1, v4

    .line 248
    :try_start_110
    const-class v2, Lcom/android/internal/telephony/IccCard;

    const-string v3, "setRoaming"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_110 .. :try_end_13b} :catch_154
    .catch Ljava/lang/IllegalArgumentException; {:try_start_110 .. :try_end_13b} :catch_152
    .catch Ljava/lang/IllegalAccessException; {:try_start_110 .. :try_end_13b} :catch_150
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_110 .. :try_end_13b} :catch_14e

    .line 256
    :goto_13b
    const-string v0, "13"

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    goto/16 :goto_74

    .line 259
    :cond_141
    const-string v0, "LGTServiceProviderSelect"

    const-string v1, "Not Support!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_7e

    .line 253
    :catch_14e
    move-exception v0

    goto :goto_13b

    .line 252
    :catch_150
    move-exception v0

    goto :goto_13b

    .line 251
    :catch_152
    move-exception v0

    goto :goto_13b

    .line 250
    :catch_154
    move-exception v0

    goto :goto_13b

    .line 236
    :catch_156
    move-exception v0

    goto :goto_fa

    .line 235
    :catch_158
    move-exception v0

    goto :goto_fa

    .line 234
    :catch_15a
    move-exception v0

    goto :goto_fa

    .line 233
    :catch_15c
    move-exception v0

    goto :goto_fa

    .line 219
    :catch_15e
    move-exception v0

    goto/16 :goto_ba

    .line 218
    :catch_161
    move-exception v0

    goto/16 :goto_ba

    .line 217
    :catch_164
    move-exception v0

    goto/16 :goto_ba

    .line 216
    :catch_167
    move-exception v0

    goto/16 :goto_ba

    .line 202
    :catch_16a
    move-exception v0

    goto/16 :goto_70

    .line 201
    :catch_16d
    move-exception v0

    goto/16 :goto_70

    .line 200
    :catch_170
    move-exception v0

    goto/16 :goto_70

    .line 199
    :catch_173
    move-exception v0

    goto/16 :goto_70
.end method
