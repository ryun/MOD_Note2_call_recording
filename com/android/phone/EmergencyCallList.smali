.class public Lcom/android/phone/EmergencyCallList;
.super Landroid/app/ListActivity;
.source "EmergencyCallList.java"


# instance fields
.field final RTS_CS:I

.field final RTS_PS:I

.field final RTS_STATUS:I

.field final RTS_TOKEN_CS:Ljava/lang/String;

.field final RTS_TOKEN_STATUS:Ljava/lang/String;

.field final RTS_VALUES_COUNT:I

.field final RTS_VALUE_LOC:I

.field private mDialAlertDialog:Landroid/app/AlertDialog;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mLocked:Z

.field private mNameList:[Ljava/lang/String;

.field private mNumberList:[Ljava/lang/String;

.field private mSelectedPosition:I

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_VALUES_COUNT:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_STATUS:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_CS:I

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_PS:I

    .line 52
    const-string v0, "Status"

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_TOKEN_STATUS:Ljava/lang/String;

    .line 54
    const-string v0, "CS"

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_TOKEN_CS:Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallList;->RTS_VALUE_LOC:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallList;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyCallList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;)V

    return-void
.end method

.method private isDomesticArea()Z
    .registers 4

    .prologue
    .line 347
    const-string v1, "ril.currentplmn"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, currIso:Ljava/lang/String;
    const-string v1, "domestic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 349
    :cond_1e
    const/4 v1, 0x1

    .line 351
    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private isSystemKeyEventRequested(I)Z
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 381
    :goto_a
    return v1

    .line 378
    :catch_b
    move-exception v0

    .line 379
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemKeyEventRequested - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;)V

    .line 381
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 385
    const-string v0, "EmergencyCallList"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .registers 3
    .parameter "message"
    .parameter "always"

    .prologue
    .line 389
    const-string v0, "EmergencyCallList"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 390
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 6
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 373
    :goto_a
    return v1

    .line 370
    :catch_b
    move-exception v0

    .line 371
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSystemKeyEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;)V

    .line 373
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private setCategoryOf119(I)V
    .registers 12
    .parameter "position"

    .prologue
    const/4 v9, 0x1

    .line 232
    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a8

    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->isDomesticArea()Z

    move-result v7

    if-nez v7, :cond_a8

    .line 233
    const-string v7, "ril.skt.network_regist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, ril:Ljava/lang/String;
    const-string v7, ";"

    const/4 v8, 0x4

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 235
    .local v5, rtsValues:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    const-string v8, "Status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, statusValue:[Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v5, v7

    const-string v8, "CS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, csValue:[Ljava/lang/String;
    aget-object v7, v1, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 238
    .local v3, rtsCsValue:I
    aget-object v7, v6, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 239
    .local v4, rtsStatusValue:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rtsCsValue - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rtsStatusValue - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 240
    const/4 v7, 0x5

    if-ne v4, v7, :cond_9c

    if-nez v3, :cond_9c

    .line 242
    packed-switch p1, :pswitch_data_ec

    .line 253
    :pswitch_6a
    const/4 v0, 0x4

    .line 272
    .local v0, categoryOf119:I
    :goto_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", categoryOf119 - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 273
    const-string v7, "ril.skt119Cat"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v0           #categoryOf119:I
    .end local v1           #csValue:[Ljava/lang/String;
    .end local v2           #ril:Ljava/lang/String;
    .end local v3           #rtsCsValue:I
    .end local v4           #rtsStatusValue:I
    .end local v5           #rtsValues:[Ljava/lang/String;
    .end local v6           #statusValue:[Ljava/lang/String;
    :cond_94
    :goto_94
    return-void

    .line 244
    .restart local v1       #csValue:[Ljava/lang/String;
    .restart local v2       #ril:Ljava/lang/String;
    .restart local v3       #rtsCsValue:I
    .restart local v4       #rtsStatusValue:I
    .restart local v5       #rtsValues:[Ljava/lang/String;
    .restart local v6       #statusValue:[Ljava/lang/String;
    :pswitch_95
    const/4 v0, 0x2

    .line 245
    .restart local v0       #categoryOf119:I
    goto :goto_6b

    .line 247
    .end local v0           #categoryOf119:I
    :pswitch_97
    const/4 v0, 0x4

    .line 248
    .restart local v0       #categoryOf119:I
    goto :goto_6b

    .line 250
    .end local v0           #categoryOf119:I
    :pswitch_99
    const/16 v0, 0x10

    .line 251
    .restart local v0       #categoryOf119:I
    goto :goto_6b

    .line 257
    .end local v0           #categoryOf119:I
    :cond_9c
    packed-switch p1, :pswitch_data_f8

    .line 268
    :pswitch_9f
    const/4 v0, 0x4

    .restart local v0       #categoryOf119:I
    goto :goto_6b

    .line 259
    .end local v0           #categoryOf119:I
    :pswitch_a1
    const/4 v0, 0x2

    .line 260
    .restart local v0       #categoryOf119:I
    goto :goto_6b

    .line 262
    .end local v0           #categoryOf119:I
    :pswitch_a3
    const/4 v0, 0x4

    .line 263
    .restart local v0       #categoryOf119:I
    goto :goto_6b

    .line 265
    .end local v0           #categoryOf119:I
    :pswitch_a5
    const/16 v0, 0x10

    .line 266
    .restart local v0       #categoryOf119:I
    goto :goto_6b

    .line 275
    .end local v0           #categoryOf119:I
    .end local v1           #csValue:[Ljava/lang/String;
    .end local v2           #ril:Ljava/lang/String;
    .end local v3           #rtsCsValue:I
    .end local v4           #rtsStatusValue:I
    .end local v5           #rtsValues:[Ljava/lang/String;
    .end local v6           #statusValue:[Ljava/lang/String;
    :cond_a8
    const-string v7, "feature_skt"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->isDomesticArea()Z

    move-result v7

    if-nez v7, :cond_94

    .line 276
    packed-switch p1, :pswitch_data_104

    .line 287
    :pswitch_b9
    const/4 v0, 0x4

    .line 290
    .restart local v0       #categoryOf119:I
    :goto_ba
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", categoryOf119 - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 291
    const-string v7, "ril.skt119Cat"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    .line 278
    .end local v0           #categoryOf119:I
    :pswitch_e4
    const/4 v0, 0x2

    .line 279
    .restart local v0       #categoryOf119:I
    goto :goto_ba

    .line 281
    .end local v0           #categoryOf119:I
    :pswitch_e6
    const/4 v0, 0x4

    .line 282
    .restart local v0       #categoryOf119:I
    goto :goto_ba

    .line 284
    .end local v0           #categoryOf119:I
    :pswitch_e8
    const/16 v0, 0x10

    .line 285
    .restart local v0       #categoryOf119:I
    goto :goto_ba

    .line 242
    nop

    :pswitch_data_ec
    .packed-switch 0x4
        :pswitch_95
        :pswitch_97
        :pswitch_6a
        :pswitch_99
    .end packed-switch

    .line 257
    :pswitch_data_f8
    .packed-switch 0x2
        :pswitch_a1
        :pswitch_a3
        :pswitch_9f
        :pswitch_a5
    .end packed-switch

    .line 276
    :pswitch_data_104
    .packed-switch 0x2
        :pswitch_e4
        :pswitch_e6
        :pswitch_b9
        :pswitch_e8
    .end packed-switch
.end method

.method private setEmergencyList()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 297
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->isDomesticArea()Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 298
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 300
    const-string v6, "3"

    const-string v7, "ril.simtype"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    const-string v6, "18"

    const-string v7, "ril.simtype"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    :cond_2c
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_51

    .line 302
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    .line 344
    :goto_50
    return-void

    .line 305
    :cond_51
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 306
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_50

    .line 309
    :cond_6c
    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 310
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080040

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_50

    .line 313
    :cond_8f
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto :goto_50

    .line 317
    :cond_aa
    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14d

    .line 318
    const-string v6, "ril.skt.network_regist"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, ril:Ljava/lang/String;
    const-string v6, ";"

    const/4 v7, 0x4

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, rtsValues:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, "Status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, statusValue:[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 322
    .local v3, rtsStatusValue:I
    aget-object v6, v4, v9

    const-string v7, "CS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, csValue:[Ljava/lang/String;
    aget-object v6, v0, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 325
    .local v2, rtsCsValue:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rtsStatusValue - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 326
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rtsCsValue - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/android/phone/EmergencyCallList;->log(Ljava/lang/String;Z)V

    .line 328
    const/4 v6, 0x5

    if-ne v3, v6, :cond_131

    if-nez v2, :cond_131

    .line 329
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_50

    .line 332
    :cond_131
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 333
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_50

    .line 336
    .end local v0           #csValue:[Ljava/lang/String;
    .end local v1           #ril:Ljava/lang/String;
    .end local v2           #rtsCsValue:I
    .end local v3           #rtsStatusValue:I
    .end local v4           #rtsValues:[Ljava/lang/String;
    .end local v5           #statusValue:[Ljava/lang/String;
    :cond_14d
    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_171

    .line 337
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 338
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_50

    .line 340
    :cond_171
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    .line 341
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNumberList:[Ljava/lang/String;

    goto/16 :goto_50
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 63
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->mWindowManager:Landroid/view/IWindowManager;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallList;->mLocked:Z

    .line 65
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "20"

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    :cond_33
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "18"

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 68
    :cond_49
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 69
    invoke-direct {p0, v3, v2}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 72
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallList;->isSystemKeyEventRequested(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallList;->mLocked:Z

    .line 74
    :cond_57
    const-string v0, "ril.domesticOtaStart"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 356
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "20"

    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 357
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    .line 358
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 365
    :goto_1d
    return v0

    .line 361
    :cond_1e
    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallList;->mLocked:Z

    if-eqz v0, :cond_24

    .line 362
    const/4 v0, 0x1

    goto :goto_1d

    .line 365
    :cond_24
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1d
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 14
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 173
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 175
    iput p3, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    .line 176
    invoke-direct {p0, p3}, Lcom/android/phone/EmergencyCallList;->setCategoryOf119(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 179
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x100

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 183
    iget v4, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    if-nez v4, :cond_32

    .line 184
    const-string v0, "com.android.phone.EmergencyDialer.DIAL"

    .line 185
    .local v0, ACTION_EMERGENCY_DIAL:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallList;->startActivity(Landroid/content/Intent;)V

    .line 227
    .end local v0           #ACTION_EMERGENCY_DIAL:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_31
    return-void

    .line 191
    :cond_32
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0507

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    iget-object v6, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    iget v7, p0, Lcom/android/phone/EmergencyCallList;->mSelectedPosition:I

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    const v4, 0x7f0e002a

    new-instance v5, Lcom/android/phone/EmergencyCallList$2;

    invoke-direct {v5, p0}, Lcom/android/phone/EmergencyCallList$2;-><init>(Lcom/android/phone/EmergencyCallList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    const v4, 0x7f0e002e

    new-instance v5, Lcom/android/phone/EmergencyCallList$3;

    invoke-direct {v5, p0}, Lcom/android/phone/EmergencyCallList$3;-><init>(Lcom/android/phone/EmergencyCallList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    new-instance v4, Lcom/android/phone/EmergencyCallList$4;

    invoke-direct {v4, p0}, Lcom/android/phone/EmergencyCallList$4;-><init>(Lcom/android/phone/EmergencyCallList;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    .line 222
    iget-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    const v5, 0x7f0e0506

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 223
    iget-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 224
    iget-object v4, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_31
.end method

.method public onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 152
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v2, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 154
    const-string v2, "ota_mode_disable_expand"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 155
    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 156
    const/4 v2, 0x3

    invoke-direct {p0, v2, v4}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 157
    const/16 v2, 0x1a

    invoke-direct {p0, v2, v4}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 161
    :cond_2b
    const-string v2, "ota_mode_disable_expand"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 163
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 164
    .local v1, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 167
    .end local v1           #sbm:Landroid/app/StatusBarManager;
    :cond_3e
    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/android/phone/EmergencyCallList;->mDialAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 168
    :cond_47
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 169
    return-void
.end method

.method protected onResume()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 79
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 82
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v11, -0x1000001

    and-int/2addr v10, v11

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 85
    const-string v10, "ota_mode_disable_expand"

    invoke-static {v10}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 86
    iget-object v10, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v10, :cond_bc

    iget-object v10, p0, Lcom/android/phone/EmergencyCallList;->mDomesticOtaStart:Ljava/lang/String;

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bc

    .line 88
    const/4 v10, 0x3

    invoke-direct {p0, v10, v12}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 89
    const/16 v10, 0x1a

    invoke-direct {p0, v10, v12}, Lcom/android/phone/EmergencyCallList;->requestSystemKeyEvent(IZ)Z

    .line 92
    const-string v10, "statusbar"

    invoke-virtual {p0, v10}, Lcom/android/phone/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    .line 93
    .local v8, sbm:Landroid/app/StatusBarManager;
    const/high16 v10, 0x47

    invoke-virtual {v8, v10}, Landroid/app/StatusBarManager;->disable(I)V

    .line 107
    .end local v8           #sbm:Landroid/app/StatusBarManager;
    :cond_47
    :goto_47
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallList;->setEmergencyList()V

    .line 109
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v11, 0x1090003

    iget-object v12, p0, Lcom/android/phone/EmergencyCallList;->mNameList:[Ljava/lang/String;

    invoke-direct {v10, p0, v11, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v10}, Lcom/android/phone/EmergencyCallList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    const v10, 0x7f0e0506

    invoke-virtual {p0, v10}, Lcom/android/phone/EmergencyCallList;->setTitle(I)V

    .line 111
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 113
    .local v9, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, sIMEI:Ljava/lang/String;
    const-string v10, "ril.simtype"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, sSimType:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_cb

    const/4 v3, 0x0

    .line 120
    .local v3, iSimType:I
    :goto_7a
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, sNumeric:Ljava/lang/String;
    const-string v10, "000000000000000"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_94

    const/16 v10, 0xc

    if-ne v3, v10, :cond_b0

    const-string v10, "45001"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 126
    :cond_94
    new-instance v1, Lcom/android/phone/EmergencyCallList$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyCallList$1;-><init>(Lcom/android/phone/EmergencyCallList;)V

    .line 132
    .local v1, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0e01b4

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 137
    .local v2, defaultIMEI_Dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 139
    .end local v1           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v2           #defaultIMEI_Dialog:Landroid/app/AlertDialog;
    :cond_b0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallList;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 140
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v10, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v10}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 141
    return-void

    .line 99
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v3           #iSimType:I
    .end local v5           #sIMEI:Ljava/lang/String;
    .end local v6           #sNumeric:Ljava/lang/String;
    .end local v7           #sSimType:Ljava/lang/String;
    .end local v9           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_bc
    const-string v10, "statusbar"

    invoke-virtual {p0, v10}, Lcom/android/phone/EmergencyCallList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    .line 100
    .restart local v8       #sbm:Landroid/app/StatusBarManager;
    const/high16 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_47

    .line 118
    .end local v8           #sbm:Landroid/app/StatusBarManager;
    .restart local v5       #sIMEI:Ljava/lang/String;
    .restart local v7       #sSimType:Ljava/lang/String;
    .restart local v9       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_cb
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #iSimType:I
    goto :goto_7a
.end method
