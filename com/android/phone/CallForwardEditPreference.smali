.class public Lcom/android/phone/CallForwardEditPreference;
.super Lcom/android/phone/EditPhoneNumberPreference;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardEditPreference$1;,
        Lcom/android/phone/CallForwardEditPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private bIsActivating:Z

.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mButtonClicked:I

.field private mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

.field private mServiceClass:I

.field private mSummaryOnTemplate:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/Phone;

.field reason:I

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v1, Lcom/android/phone/CallForwardEditPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    .line 69
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 70
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 74
    :goto_1b
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    .line 76
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f100006

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    .line 80
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    const-string v1, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServiceClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 85
    return-void

    .line 72
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_60
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_1b
.end method

.method static synthetic access$100(Lcom/android/phone/CallForwardEditPreference;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallForwardEditPreference;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V

    return-void
.end method

.method private updateSummaryText()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 230
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 232
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, number:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, locale:Ljava/lang/String;
    const-string v5, "ar"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    const-string v5, "fa"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    const-string v5, "ur"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 236
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v5, "\u200f\u202d"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_3d
    if-eqz v1, :cond_75

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_75

    .line 241
    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 243
    .local v4, values:[Ljava/lang/String;
    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    if-ne v5, v6, :cond_63

    .line 245
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0069

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 253
    .end local v4           #values:[Ljava/lang/String;
    .local v3, summaryOn:Ljava/lang/CharSequence;
    :goto_5f
    invoke-virtual {p0, v3}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 256
    .end local v0           #locale:Ljava/lang/String;
    .end local v1           #number:Ljava/lang/String;
    .end local v3           #summaryOn:Ljava/lang/CharSequence;
    :cond_62
    return-void

    .line 248
    .restart local v0       #locale:Ljava/lang/String;
    .restart local v1       #number:Ljava/lang/String;
    .restart local v4       #values:[Ljava/lang/String;
    :cond_63
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e029d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .restart local v3       #summaryOn:Ljava/lang/CharSequence;
    goto :goto_5f

    .line 251
    .end local v3           #summaryOn:Ljava/lang/CharSequence;
    .end local v4           #values:[Ljava/lang/String;
    :cond_75
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e006a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #summaryOn:Ljava/lang/CharSequence;
    goto :goto_5f
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V
    .registers 13
    .parameter "cf"
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 194
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 197
    const-string v4, "CallForwardEditPreference"

    const-string v7, "handleGetCFResponse done: "

    invoke-static {v4, v7, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 198
    const-string v4, "CallForwardEditPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callForwardInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v4, v5, :cond_9e

    move v4, v5

    :goto_2d
    invoke-virtual {p0, v4}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 201
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/phone/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 204
    iput-boolean v6, p0, Lcom/android/phone/CallForwardEditPreference;->bIsActivating:Z

    .line 205
    if-eqz p2, :cond_8b

    .line 206
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 207
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-nez v4, :cond_8b

    iget-boolean v4, p0, Lcom/android/phone/CallForwardEditPreference;->bIsActivating:Z

    if-eqz v4, :cond_8b

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v4, :cond_8b

    .line 208
    const-string v4, "CallForwardEditPreference"

    const-string v6, "Activation failed"

    invoke-static {v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e0087

    invoke-virtual {v2, v4, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0e007f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0e0083

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 215
    :try_start_84
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8b} :catch_a0

    .line 223
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :cond_8b
    :goto_8b
    iget v4, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-nez v4, :cond_9d

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.phone.cfwidget.widget_reload_action"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, broadcastIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 227
    .end local v1           #broadcastIntent:Landroid/content/Intent;
    :cond_9d
    return-void

    :cond_9e
    move v4, v6

    .line 200
    goto :goto_2d

    .line 216
    .restart local v0       #ar:Landroid/os/AsyncResult;
    .restart local v2       #builder:Landroid/app/AlertDialog$Builder;
    :catch_a0
    move-exception v3

    .line 217
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "CallForwardEditPreference"

    const-string v6, "handleCallForwardResult: is your activity running?"

    invoke-static {v4, v6, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_8b
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .registers 8
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    const/4 v4, 0x0

    .line 92
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 93
    if-nez p2, :cond_1d

    .line 94
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 99
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_1d

    .line 100
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 103
    :cond_1d
    iput-boolean v4, p0, Lcom/android/phone/CallForwardEditPreference;->bIsActivating:Z

    .line 104
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 109
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    .line 110
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 116
    iput p2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    .line 117
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 13
    .parameter "positiveResult"

    .prologue
    const/4 v0, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 121
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onDialogClosed(Z)V

    .line 123
    const-string v2, "CallForwardEditPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mButtonClicked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", positiveResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 127
    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v5, -0x2

    if-eq v2, v5, :cond_9d

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v2

    if-nez v2, :cond_3a

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_9e

    :cond_3a
    move v1, v0

    .line 131
    .local v1, action:I
    :goto_3b
    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_a0

    move v4, v8

    .line 132
    .local v4, time:I
    :goto_41
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    .line 136
    .local v7, app:Lcom/android/phone/PhoneApp;
    iget-boolean v2, p0, Lcom/android/phone/EditPhoneNumberPreference;->mChecked:Z

    if-eqz v2, :cond_66

    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 137
    iget-object v2, v7, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v5, 0x6

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v9, 0x7f0e0068

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 141
    :cond_66
    const-string v2, "CallForwardEditPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callForwardInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-ne v1, v0, :cond_a3

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v2, v10, :cond_a3

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 148
    const-string v0, "CallForwardEditPreference"

    const-string v2, "no change, do nothing"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v1           #action:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #time:I
    .end local v7           #app:Lcom/android/phone/PhoneApp;
    :cond_9d
    :goto_9d
    return-void

    :cond_9e
    move v1, v8

    .line 128
    goto :goto_3b

    .line 131
    .restart local v1       #action:I
    :cond_a0
    const/16 v4, 0x14

    goto :goto_41

    .line 151
    .restart local v3       #number:Ljava/lang/String;
    .restart local v4       #time:I
    .restart local v7       #app:Lcom/android/phone/PhoneApp;
    :cond_a3
    const-string v2, "CallForwardEditPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", service class="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 158
    if-ne v1, v0, :cond_ed

    .line 159
    const-string v0, "CallForwardEditPreference"

    const-string v2, "start activating"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-boolean v10, p0, Lcom/android/phone/CallForwardEditPreference;->bIsActivating:Z

    .line 165
    :cond_ed
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    if-ne v0, v10, :cond_108

    .line 166
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v5, v10, v1, v10}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 186
    :goto_fe
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_9d

    .line 187
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_9d

    .line 175
    :cond_108
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v5, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    iget-object v6, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v6, v10, v1, v10}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto :goto_fe
.end method
