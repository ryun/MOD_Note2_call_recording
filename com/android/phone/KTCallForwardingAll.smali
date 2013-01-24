.class public Lcom/android/phone/KTCallForwardingAll;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTCallForwardingAll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/KTCallForwardingAll$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mChecked:Z

.field private mCheckedProgressDialog:Z

.field private mHandler:Lcom/android/phone/KTCallForwardingAll$MyHandler;

.field private mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceClass:I

.field private mSettingInfo:Landroid/preference/PreferenceScreen;

.field private mSettingOff:Landroid/preference/PreferenceScreen;

.field private mSettingOn:Landroid/preference/EditTextPreference;

.field private mSettingStatus:Landroid/preference/PreferenceScreen;

.field private mtimer:Ljava/util/Timer;

.field private phone:Lcom/android/internal/telephony/Phone;

.field reason:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_a
    sput-boolean v0, Lcom/android/phone/KTCallForwardingAll;->DBG:Z

    return-void

    :cond_d
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/android/phone/KTCallForwardingAll$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/KTCallForwardingAll$MyHandler;-><init>(Lcom/android/phone/KTCallForwardingAll;Lcom/android/phone/KTCallForwardingAll$1;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mHandler:Lcom/android/phone/KTCallForwardingAll$MyHandler;

    .line 72
    iput-object v1, p0, Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    .line 77
    iput-object v1, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    .line 494
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/KTCallForwardingAll;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/phone/KTCallForwardingAll;->mServiceClass:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/KTCallForwardingAll;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/phone/KTCallForwardingAll;->mServiceClass:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/KTCallForwardingAll;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/KTCallForwardingAll;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/KTCallForwardingAll;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/phone/KTCallForwardingAll;->mChecked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/KTCallForwardingAll;)Lcom/android/phone/KTCallForwardingAll$MyHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mHandler:Lcom/android/phone/KTCallForwardingAll$MyHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/KTCallForwardingAll;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/KTCallForwardingAll;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/KTCallForwardingAll;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/KTCallForwardingAll;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingAll;->destoryProgressDialogFromNoResponse()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/KTCallForwardingAll;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    return-object p1
.end method

.method private destoryProgressDialogFromNoResponse()V
    .registers 6

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    if-nez v1, :cond_23

    .line 255
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e062b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 256
    .local v0, NoResponse:Landroid/widget/Toast;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    .line 257
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/phone/KTCallForwardingAll$3;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/KTCallForwardingAll$3;-><init>(Lcom/android/phone/KTCallForwardingAll;Landroid/widget/Toast;)V

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 271
    .end local v0           #NoResponse:Landroid/widget/Toast;
    :cond_23
    return-void
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V
    .registers 14
    .parameter "cf"

    .prologue
    const/16 v11, 0x8

    const/4 v0, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v5, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 275
    .local v1, context:Landroid/content/Context;
    iput-object p1, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 276
    const-string v6, "KTCallForwardingAll"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleGetCFResponse done, callForwardInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v6, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    if-nez v6, :cond_2b

    .line 319
    :goto_2a
    return-void

    .line 281
    :cond_2b
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v0, :cond_61

    .line 282
    .local v0, active:Z
    :goto_31
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProgressDialog;

    .line 284
    .local v4, progress:Landroid/app/ProgressDialog;
    if-eqz v4, :cond_4e

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 285
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 286
    iput-boolean v5, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    .line 287
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 288
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    .line 291
    :cond_4e
    if-eqz v0, :cond_169

    .line 292
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 293
    const v6, 0x7f0e061d

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2a

    .end local v0           #active:Z
    .end local v4           #progress:Landroid/app/ProgressDialog;
    :cond_61
    move v0, v5

    .line 281
    goto :goto_31

    .line 296
    .restart local v0       #active:Z
    .restart local v4       #progress:Landroid/app/ProgressDialog;
    :cond_63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e061f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e063d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, msg:Ljava/lang/String;
    const/4 v3, 0x0

    .line 300
    .local v3, number:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_100

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const/16 v8, 0x9

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 307
    :goto_e0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2a

    .line 302
    :cond_100
    iget-object v6, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_14c

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e0

    .line 305
    :cond_14c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_e0

    .line 311
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_169
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_17b

    .line 312
    const v6, 0x7f0e061e

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2a

    .line 314
    :cond_17b
    const v6, 0x7f0e0620

    invoke-static {v1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2a
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mChecked:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 554
    const-string v0, "KTCallForwardingAll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 556
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingAll;->addPreferencesFromResource(I)V

    .line 136
    const-string v0, "setting_on_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingAll;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOn:Landroid/preference/EditTextPreference;

    .line 137
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOn:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/phone/KTCallForwardingAll$1;

    invoke-direct {v1, p0}, Lcom/android/phone/KTCallForwardingAll$1;-><init>(Lcom/android/phone/KTCallForwardingAll;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOn:Landroid/preference/EditTextPreference;

    const v1, 0x7f0e0612

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 165
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOn:Landroid/preference/EditTextPreference;

    const v1, 0x7f0e0615

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogMessage(I)V

    .line 166
    const-string v0, "setting_off_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingAll;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOff:Landroid/preference/PreferenceScreen;

    .line 167
    const-string v0, "setting_status__preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingAll;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingStatus:Landroid/preference/PreferenceScreen;

    .line 168
    const-string v0, "setting_info_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/KTCallForwardingAll;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingInfo:Landroid/preference/PreferenceScreen;

    .line 171
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mtimer:Ljava/util/Timer;

    .line 175
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 14
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0e061c

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 181
    .local v7, context:Landroid/content/Context;
    iput v4, p0, Lcom/android/phone/KTCallForwardingAll;->reason:I

    .line 182
    iput v8, p0, Lcom/android/phone/KTCallForwardingAll;->mServiceClass:I

    .line 184
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingOff:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 185
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    if-nez v0, :cond_72

    .line 187
    const/4 v1, 0x4

    .line 188
    .local v1, action:I
    iget v0, p0, Lcom/android/phone/KTCallForwardingAll;->reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_74

    .line 189
    .local v4, time:I
    :goto_20
    const/4 v3, 0x0

    .line 190
    .local v3, number:Ljava/lang/String;
    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingAll;->mChecked:Z

    .line 192
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v0, :cond_77

    .line 193
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    :goto_2b
    sget-boolean v0, Lcom/android/phone/KTCallForwardingAll;->DBG:Z

    if-eqz v0, :cond_51

    const-string v0, "KTCallForwardingAll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",number="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v9}, Lcom/android/phone/KTCallForwardingAll;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v7, v10, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;

    .line 201
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/KTCallForwardingAll;->reason:I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingAll;->mHandler:Lcom/android/phone/KTCallForwardingAll$MyHandler;

    invoke-virtual {v5, v8}, Lcom/android/phone/KTCallForwardingAll$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 206
    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingAll;->destoryProgressDialogFromNoResponse()V

    .line 207
    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    .end local v1           #action:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #time:I
    :cond_72
    move v4, v8

    .line 243
    :cond_73
    :goto_73
    return v4

    .line 188
    .restart local v1       #action:I
    :cond_74
    const/16 v4, 0x14

    goto :goto_20

    .line 196
    .restart local v3       #number:Ljava/lang/String;
    .restart local v4       #time:I
    :cond_77
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    goto :goto_2b

    .line 212
    .end local v1           #action:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #time:I
    :cond_7c
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingStatus:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 213
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    if-nez v0, :cond_ab

    .line 215
    iput-boolean v4, p0, Lcom/android/phone/KTCallForwardingAll;->mChecked:Z

    .line 217
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v9}, Lcom/android/phone/KTCallForwardingAll;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v7, v10, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mProgress:Ljava/lang/ref/WeakReference;

    .line 220
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/KTCallForwardingAll;->reason:I

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingAll;->mHandler:Lcom/android/phone/KTCallForwardingAll$MyHandler;

    invoke-virtual {v5, v4}, Lcom/android/phone/KTCallForwardingAll$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 223
    invoke-direct {p0}, Lcom/android/phone/KTCallForwardingAll;->destoryProgressDialogFromNoResponse()V

    .line 224
    iput-boolean v8, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    :cond_ab
    move v4, v8

    .line 226
    goto :goto_73

    .line 228
    :cond_ad
    iget-object v0, p0, Lcom/android/phone/KTCallForwardingAll;->mSettingInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 229
    iget-boolean v0, p0, Lcom/android/phone/KTCallForwardingAll;->mCheckedProgressDialog:Z

    if-nez v0, :cond_d8

    .line 230
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    .local v6, alert:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0e0618

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 232
    const v0, 0x7f0e0619

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 233
    const v0, 0x7f0e002a

    new-instance v2, Lcom/android/phone/KTCallForwardingAll$2;

    invoke-direct {v2, p0}, Lcom/android/phone/KTCallForwardingAll$2;-><init>(Lcom/android/phone/KTCallForwardingAll;)V

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .end local v6           #alert:Landroid/app/AlertDialog$Builder;
    :cond_d8
    move v4, v8

    .line 240
    goto :goto_73
.end method

.method showReturnError(Ljava/lang/Throwable;)Z
    .registers 14
    .parameter "exception"

    .prologue
    const v11, 0x7f0e0636

    const v10, 0x7f0e0624

    const v9, 0x7f0e0621

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/android/phone/KTCallForwardingAll;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 323
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 324
    .local v2, errorcode:Ljava/lang/String;
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 326
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_26

    .line 327
    const-string v6, "ril.ss.errorcode"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    if-nez v2, :cond_27

    .line 491
    :cond_26
    :goto_26
    return v4

    .line 336
    :cond_27
    const/4 v3, 0x0

    .line 338
    .local v3, errorvalue:I
    const-string v6, "SOO_Test"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v6, "37"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 341
    invoke-static {v0, v9, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 343
    goto :goto_26

    .line 345
    :cond_5b
    const-string v6, "38"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 346
    invoke-static {v0, v9, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 348
    goto :goto_26

    .line 350
    :cond_6c
    const-string v6, "43"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 351
    const v6, 0x7f0e0622

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 353
    goto :goto_26

    .line 355
    :cond_80
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 356
    const v6, 0x7f0e0623

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 358
    goto :goto_26

    .line 360
    :cond_94
    const-string v6, "10"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 361
    invoke-static {v0, v10, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 363
    goto :goto_26

    .line 365
    :cond_a5
    const-string v6, "11"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 366
    invoke-static {v0, v10, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 368
    goto/16 :goto_26

    .line 370
    :cond_b7
    const-string v6, "13"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 371
    const v6, 0x7f0e0625

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 373
    goto/16 :goto_26

    .line 375
    :cond_cc
    const-string v6, "16"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 376
    const v6, 0x7f0e0626

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 378
    goto/16 :goto_26

    .line 380
    :cond_e1
    const-string v6, "17"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 381
    const v6, 0x7f0e0627

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 383
    goto/16 :goto_26

    .line 385
    :cond_f6
    const-string v6, "18"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10b

    .line 386
    const v6, 0x7f0e0628

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 388
    goto/16 :goto_26

    .line 390
    :cond_10b
    const-string v6, "19"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_120

    .line 391
    const v6, 0x7f0e0629

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 393
    goto/16 :goto_26

    .line 395
    :cond_120
    const-string v6, "20"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_135

    .line 396
    const v6, 0x7f0e062a

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 398
    goto/16 :goto_26

    .line 400
    :cond_135
    const-string v6, "34"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14a

    .line 401
    const v6, 0x7f0e062b

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 403
    goto/16 :goto_26

    .line 405
    :cond_14a
    const-string v6, "35"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15f

    .line 406
    const v6, 0x7f0e062c

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 408
    goto/16 :goto_26

    .line 410
    :cond_15f
    const-string v6, "36"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_174

    .line 411
    const v6, 0x7f0e062d

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 413
    goto/16 :goto_26

    .line 415
    :cond_174
    const-string v6, "121"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_189

    .line 416
    const v6, 0x7f0e062e

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 418
    goto/16 :goto_26

    .line 420
    :cond_189
    const-string v6, "122"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19e

    .line 421
    const v6, 0x7f0e062f

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 423
    goto/16 :goto_26

    .line 425
    :cond_19e
    const-string v6, "71"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b3

    .line 426
    const v6, 0x7f0e0630

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 428
    goto/16 :goto_26

    .line 430
    :cond_1b3
    const-string v6, "72"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c8

    .line 431
    const v6, 0x7f0e0631

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 433
    goto/16 :goto_26

    .line 435
    :cond_1c8
    const-string v6, "54"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1dd

    .line 436
    const v6, 0x7f0e0632

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 438
    goto/16 :goto_26

    .line 440
    :cond_1dd
    const-string v6, "9"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f2

    .line 441
    const v6, 0x7f0e0633

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 443
    goto/16 :goto_26

    .line 445
    :cond_1f2
    const-string v6, "21"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_207

    .line 446
    const v6, 0x7f0e0634

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 448
    goto/16 :goto_26

    .line 450
    :cond_207
    const-string v6, "27"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21c

    .line 451
    const v6, 0x7f0e0635

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 453
    goto/16 :goto_26

    .line 455
    :cond_21c
    const-string v6, "29"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22e

    .line 456
    invoke-static {v0, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 458
    goto/16 :goto_26

    .line 460
    :cond_22e
    const-string v6, "30"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_240

    .line 461
    invoke-static {v0, v11, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 463
    goto/16 :goto_26

    .line 465
    :cond_240
    const-string v6, "123"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_255

    .line 466
    const v6, 0x7f0e0637

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 468
    goto/16 :goto_26

    .line 470
    :cond_255
    const-string v6, "124"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26a

    .line 471
    const v6, 0x7f0e0638

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 473
    goto/16 :goto_26

    .line 475
    :cond_26a
    const-string v6, "125"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27f

    .line 476
    const v6, 0x7f0e0639

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 478
    goto/16 :goto_26

    .line 480
    :cond_27f
    const-string v6, "126"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_294

    .line 481
    const v6, 0x7f0e063a

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 483
    goto/16 :goto_26

    .line 485
    :cond_294
    const-string v6, "127"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 486
    const v6, 0x7f0e063b

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 488
    goto/16 :goto_26
.end method
