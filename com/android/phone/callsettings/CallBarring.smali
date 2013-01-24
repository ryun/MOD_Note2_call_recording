.class public Lcom/android/phone/callsettings/CallBarring;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/CallBarring$14;,
        Lcom/android/phone/callsettings/CallBarring$AppState;
    }
.end annotation


# instance fields
.field private callbarring_password:Ljava/lang/String;

.field doActivate:Ljava/lang/Runnable;

.field doCheckStatus:Ljava/lang/Runnable;

.field doConfirm:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field editText:Landroid/widget/EditText;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

.field private mCBVisible:Z

.field private mCB_Checked:Z

.field private mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

.field private mCheckAllCB:Z

.field private mConfirmPassword:Landroid/widget/EditText;

.field private mInputPassword:Landroid/widget/EditText;

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNewPassword:Landroid/widget/EditText;

.field private mOldPassword:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevBusyDialog:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mPwdChangeSubmit:Z

.field private mSelectedIndex:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipCallBarringReq:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field responseCBHandler:Landroid/os/Handler;

.field textEntryView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    .line 200
    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 202
    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 221
    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mInputPassword:Landroid/widget/EditText;

    .line 223
    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 225
    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 227
    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 229
    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 243
    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 775
    new-instance v0, Lcom/android/phone/callsettings/CallBarring$11;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$11;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    .line 1139
    new-instance v0, Lcom/android/phone/callsettings/CallBarring$12;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$12;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 1190
    new-instance v0, Lcom/android/phone/callsettings/CallBarring$13;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$13;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CallBarring;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/CallBarring;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/CallBarring;->changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/CallBarring;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/CallBarring;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/CallBarring;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/CallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/callsettings/CallBarring;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    return p1
.end method

.method static synthetic access$2100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/callsettings/CallBarring;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/callsettings/CallBarring;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/CallBarring;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/CallBarring;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/phone/callsettings/CallBarring;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/CallBarring;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->setCallBarring(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/CallBarring;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1212
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_87

    .line 1218
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 1219
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 1221
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1223
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePasswordCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1225
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    if-nez v0, :cond_5e

    .line 1228
    const-string v0, "CallBarring"

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/CallBarring;->requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    :goto_5d
    return-void

    .line 1231
    :cond_5e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_78

    .line 1232
    const-string v0, "CallBarring"

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_5d

    .line 1237
    :cond_78
    const-string v0, "CallBarring"

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_5d

    .line 1241
    :cond_87
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1242
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_5d
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x4

    .line 1255
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1256
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1257
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1259
    const-class v3, Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_oldPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const-class v3, Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_newPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-class v3, Lcom/android/phone/callsettings/CallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_confirmPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    if-eqz v0, :cond_7d

    if-eqz v0, :cond_89

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_89

    .line 1271
    :cond_7d
    const v0, 0x7f0e0353

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1296
    :goto_84
    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/CallBarring;->showError(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 1297
    const/4 v0, 0x0

    :goto_88
    return v0

    .line 1272
    :cond_89
    if-eqz v1, :cond_93

    if-eqz v1, :cond_9b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_9b

    .line 1275
    :cond_93
    const v0, 0x7f0e0354

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_84

    .line 1276
    :cond_9b
    if-eqz v2, :cond_a5

    if-eqz v2, :cond_ad

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_ad

    .line 1279
    :cond_a5
    const v0, 0x7f0e0355

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_84

    .line 1281
    :cond_ad
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 1286
    const v0, 0x7f0e0357

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_84

    .line 1289
    :cond_bb
    const v0, 0x7f0e02cc

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    .line 1290
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->doConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1291
    const/4 v0, 0x1

    goto :goto_88
.end method

.method private deleteBusyDialog()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1178
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckAllCB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSelectedIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevBusyDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1181
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3d

    .line 1188
    :goto_3c
    return-void

    .line 1184
    :cond_3d
    iput-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 1186
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->removeDialog(I)V

    goto :goto_3c
.end method

.method private dismissCallWaiting()V
    .registers 2

    .prologue
    .line 1172
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 1174
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->finish()V

    .line 1175
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1389
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1390
    return-void
.end method

.method private getCallBarring()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 626
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_6d

    .line 631
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 633
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 634
    .local v0, radioState:I
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallBarring() radioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 636
    if-nez v0, :cond_42

    .line 637
    const-string v1, "CallBarring"

    const-string v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->requestCBQueryCommand()V

    .line 653
    .end local v0           #radioState:I
    :goto_41
    return-void

    .line 640
    .restart local v0       #radioState:I
    :cond_42
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5e

    .line 641
    const-string v1, "CallBarring"

    const-string v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v1, "CallBarring"

    const-string v2, "onCreate: radio not ready, waiting for signal."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_41

    .line 646
    :cond_5e
    const-string v1, "CallBarring"

    const-string v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_41

    .line 650
    .end local v0           #radioState:I
    :cond_6d
    const-string v1, "CallBarring"

    const-string v2, "setDisplayMode: radio is off!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 651
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_41
.end method

.method private handleQueryCBMessage(Landroid/os/AsyncResult;)I
    .registers 12
    .parameter "ar"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v4, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 849
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_49

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ar:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 852
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_47

    .line 853
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 854
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_40

    .line 855
    const-string v3, "CallBarring"

    const-string v4, "CommandExceptionError = FDN"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 856
    const/16 v3, 0x384

    .line 929
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_3f
    return v3

    .line 858
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_40
    const-string v3, "CallBarring"

    const-string v5, "CommandExceptionError = EXCEPTION"

    invoke-static {v3, v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_47
    move v3, v4

    .line 860
    goto :goto_3f

    .line 862
    :cond_49
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 863
    .local v2, ints:[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ints.length:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 864
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 866
    const/4 v1, 0x0

    .local v1, i:I
    :goto_80
    array-length v3, v2

    if-ge v1, v3, :cond_a3

    .line 867
    const-string v3, "ints["

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "]:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    .line 872
    :cond_a3
    array-length v3, v2

    if-eqz v3, :cond_180

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ints[0]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v2, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 874
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_11f

    .line 876
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_d2

    .line 877
    const v3, 0x7f0e0349

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 879
    :cond_d2
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_ec

    .line 880
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 881
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 884
    :cond_ec
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_fc

    .line 885
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 888
    :cond_fc
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 889
    iput-boolean v6, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 890
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 929
    :cond_11b
    :goto_11b
    const/16 v3, 0x64

    goto/16 :goto_3f

    .line 894
    :cond_11f
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_17d

    .line 903
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_133

    .line 904
    const v3, 0x7f0e0348

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 906
    :cond_133
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_14d

    .line 907
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 908
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 911
    :cond_14d
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_15d

    .line 912
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 915
    :cond_15d
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_11b

    .line 916
    iput-boolean v6, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 917
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_11b

    :cond_17d
    move v3, v4

    .line 922
    goto/16 :goto_3f

    :cond_180
    move v3, v4

    .line 925
    goto/16 :goto_3f
.end method

.method private handleSetCBMessage(Landroid/os/AsyncResult;I)I
    .registers 8
    .parameter "ar"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0xc8

    const/16 v1, 0x64

    .line 933
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_52

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCBMessage() ar:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 936
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_50

    .line 937
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 938
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_38

    .line 940
    const/16 v1, 0x190

    .line 981
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_37
    return v1

    .line 941
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_38
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_43

    .line 942
    const-string v1, "SIM_PUK2"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    move v1, v2

    .line 943
    goto :goto_37

    .line 945
    :cond_43
    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_82

    move v1, v2

    .line 958
    goto :goto_37

    .line 952
    :pswitch_4a
    const/16 v1, 0x258

    goto :goto_37

    .line 955
    :pswitch_4d
    const/16 v1, 0x1f4

    goto :goto_37

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_50
    move v1, v2

    .line 962
    goto :goto_37

    .line 964
    :cond_52
    if-nez p2, :cond_5d

    .line 966
    const-string v2, "handleSetCBMessage() has been processed ACTIVATE"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 978
    :cond_59
    :goto_59
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->requestCBQueryCommand()V

    goto :goto_37

    .line 967
    :cond_5d
    if-ne p2, v4, :cond_65

    .line 968
    const-string v2, "handleSetCBMessage() has been processed DEACTIVATE"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    goto :goto_59

    .line 969
    :cond_65
    const/4 v2, 0x2

    if-ne p2, v2, :cond_6e

    .line 970
    const-string v2, "handleSetCBMessage() has been processed CANCELALL"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    goto :goto_37

    .line 972
    :cond_6e
    const/4 v2, 0x3

    if-ne p2, v2, :cond_59

    .line 973
    const-string v2, "handleSetCBMessage() has been processed CONFIRM"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 974
    const v2, 0x7f0e0356

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_37

    .line 945
    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4d
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1380
    const-string v0, "CallBarring"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .registers 3
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1384
    const-string v0, "CallBarring"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1385
    return-void
.end method

.method private requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "process"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "confirmPassword"

    .prologue
    .line 1203
    const-string v1, "AB"

    .line 1205
    .local v1, facility:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 1208
    return-void
.end method

.method private requestCBQueryCommand()V
    .registers 6

    .prologue
    .line 743
    const-string v0, "AO"

    .line 745
    .local v0, facility:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_28

    .line 771
    :goto_7
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 773
    return-void

    .line 747
    :pswitch_16
    const-string v0, "AO"

    .line 748
    goto :goto_7

    .line 751
    :pswitch_19
    const-string v0, "OI"

    .line 752
    goto :goto_7

    .line 755
    :pswitch_1c
    const-string v0, "OX"

    .line 756
    goto :goto_7

    .line 759
    :pswitch_1f
    const-string v0, "AI"

    .line 760
    goto :goto_7

    .line 763
    :pswitch_22
    const-string v0, "IR"

    .line 764
    goto :goto_7

    .line 767
    :pswitch_25
    const-string v0, "AB"

    goto :goto_7

    .line 745
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private requestCBSetCommand(I)V
    .registers 10
    .parameter "process"

    .prologue
    const/4 v7, 0x1

    .line 689
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    .line 690
    .local v2, password:Ljava/lang/String;
    if-nez v2, :cond_7

    .line 692
    const-string v2, ""

    .line 695
    :cond_7
    const-string v1, "AO"

    .line 696
    .local v1, facility:Ljava/lang/String;
    const/4 v0, 0x0

    .line 698
    .local v0, bActivate:Z
    packed-switch p1, :pswitch_data_3e

    .line 710
    const-string v3, "requestCBSetCommand (process) Exception!"

    invoke-static {v3, v7}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 713
    :goto_12
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v3, :pswitch_data_48

    .line 738
    :goto_17
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, p1, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 740
    return-void

    .line 700
    :pswitch_26
    const/4 v0, 0x1

    .line 701
    goto :goto_12

    .line 703
    :pswitch_28
    const/4 v0, 0x0

    .line 704
    goto :goto_12

    .line 706
    :pswitch_2a
    const/4 v0, 0x0

    .line 707
    goto :goto_12

    .line 715
    :pswitch_2c
    const-string v1, "AO"

    .line 716
    goto :goto_17

    .line 719
    :pswitch_2f
    const-string v1, "OI"

    .line 720
    goto :goto_17

    .line 723
    :pswitch_32
    const-string v1, "OX"

    .line 724
    goto :goto_17

    .line 727
    :pswitch_35
    const-string v1, "AI"

    .line 728
    goto :goto_17

    .line 731
    :pswitch_38
    const-string v1, "IR"

    .line 732
    goto :goto_17

    .line 734
    :pswitch_3b
    const-string v1, "AB"

    goto :goto_17

    .line 698
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_28
        :pswitch_2a
    .end packed-switch

    .line 713
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
    .end packed-switch
.end method

.method private setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V
    .registers 4
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 986
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_12

    .line 987
    const-string v0, "setAppState: illegal error state without reason."

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 988
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_12
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    .line 991
    return-void
.end method

.method private setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x258

    const/16 v6, 0x1f4

    const/16 v5, 0x12c

    const/16 v4, 0xc8

    const/4 v2, 0x1

    .line 996
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppState() mAppState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,requestedState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",msgStatus:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 999
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_41

    .line 1000
    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1128
    :goto_40
    return-void

    .line 1006
    :cond_41
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_13c

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCBVisible : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1010
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-nez v0, :cond_98

    .line 1011
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " so, we try remove busy dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1015
    :cond_98
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-eqz v0, :cond_115

    .line 1016
    sparse-switch p2, :sswitch_data_1f0

    .line 1065
    :goto_9f
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_dd

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_dd

    .line 1066
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v0, :cond_cd

    .line 1067
    iput-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 1068
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_13a

    move v1, v2

    :goto_ca
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1072
    :cond_cd
    if-eq p2, v4, :cond_dd

    const/16 v0, 0x320

    if-eq p2, v0, :cond_dd

    if-eq p2, v5, :cond_dd

    if-eq p2, v6, :cond_dd

    const/16 v0, 0x384

    if-eq p2, v0, :cond_dd

    if-ne p2, v7, :cond_dd

    .line 1080
    :cond_dd
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    goto/16 :goto_40

    .line 1018
    :sswitch_e1
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1020
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_9f

    .line 1024
    :sswitch_e8
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_9f

    .line 1028
    :sswitch_ee
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1030
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_9f

    .line 1034
    :sswitch_f5
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1036
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_9f

    .line 1040
    :sswitch_fe
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1042
    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_9f

    .line 1046
    :sswitch_105
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1048
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_9f

    .line 1052
    :sswitch_10c
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1054
    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_9f

    .line 1061
    :cond_115
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " so, skip displaying dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1062
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto/16 :goto_9f

    .line 1068
    :cond_13a
    const/4 v1, 0x0

    goto :goto_ca

    .line 1084
    :cond_13c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 1086
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$14;->$SwitchMap$com$android$phone$callsettings$CallBarring$AppState:[I

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallBarring$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20e

    .line 1127
    :cond_161
    :goto_161
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    goto/16 :goto_40

    .line 1090
    :pswitch_165
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_161

    .line 1091
    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1092
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :pswitch_176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1098
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-eqz v0, :cond_1a4

    .line 1099
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_19a

    .line 1100
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_161

    .line 1101
    :cond_19a
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_161

    .line 1102
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    goto :goto_161

    .line 1105
    :cond_1a4
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, skip displaying dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_161

    .line 1111
    :pswitch_1c5
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_1d6

    .line 1112
    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_1d6
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto :goto_161

    .line 1119
    :pswitch_1da
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_1eb

    .line 1120
    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :cond_1eb
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto/16 :goto_161

    .line 1016
    :sswitch_data_1f0
    .sparse-switch
        0xc8 -> :sswitch_e1
        0x12c -> :sswitch_ee
        0x190 -> :sswitch_f5
        0x1f4 -> :sswitch_fe
        0x258 -> :sswitch_105
        0x320 -> :sswitch_e8
        0x384 -> :sswitch_10c
    .end sparse-switch

    .line 1086
    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_165
        :pswitch_176
        :pswitch_1c5
        :pswitch_1da
    .end packed-switch
.end method

.method private setCallBarring(I)V
    .registers 7
    .parameter "process"

    .prologue
    const/4 v4, 0x1

    .line 657
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_68

    .line 663
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 664
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 666
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 667
    .local v0, radioState:I
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 669
    if-nez v0, :cond_44

    .line 670
    const-string v1, "CallBarring"

    const-string v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->requestCBSetCommand(I)V

    .line 685
    .end local v0           #radioState:I
    :goto_43
    return-void

    .line 673
    .restart local v0       #radioState:I
    :cond_44
    const/4 v1, 0x3

    if-ne v0, v1, :cond_59

    .line 674
    const-string v1, "CallBarring"

    const-string v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_43

    .line 678
    :cond_59
    const-string v1, "CallBarring"

    const-string v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_43

    .line 682
    .end local v0           #radioState:I
    :cond_68
    const-string v1, "CallBarring"

    const-string v2, "setDisplayMode: radio is off!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 683
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_43
.end method

.method private showError(Landroid/app/Dialog;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1247
    const v0, 0x7f090070

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1248
    if-eqz v0, :cond_12

    .line 1249
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1252
    :cond_12
    return-void
.end method

.method private showPasswordDialog()V
    .registers 4

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040015

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1323
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e0361

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1327
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1336
    const v0, 0x7f090072

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 1337
    const v0, 0x7f090073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 1338
    const v0, 0x7f090074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 1340
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 1341
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 1343
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1344
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1301
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    .line 1302
    return-void

    .line 1301
    :cond_7
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 261
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 262
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->addPreferencesFromResource(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 265
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_13

    .line 267
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 270
    :cond_13
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 271
    const-string v2, "callbarring_baoc_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    .line 272
    const-string v2, "callbarring_baoic_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    .line 273
    const-string v2, "callbarring_baoicxh_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    .line 274
    const-string v2, "callbarring_baic_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    .line 275
    const-string v2, "callbarring_baicr_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    .line 277
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    .line 284
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    .line 285
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    .line 287
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 289
    new-instance v2, Lcom/android/phone/callsettings/CallBarring$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$1;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->doActivate:Ljava/lang/Runnable;

    .line 306
    new-instance v2, Lcom/android/phone/callsettings/CallBarring$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$2;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->doDeactivate:Ljava/lang/Runnable;

    .line 322
    new-instance v2, Lcom/android/phone/callsettings/CallBarring$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$3;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->doCheckStatus:Ljava/lang/Runnable;

    .line 328
    new-instance v2, Lcom/android/phone/callsettings/CallBarring$4;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$4;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->doConfirm:Ljava/lang/Runnable;

    .line 340
    sget-object v2, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    .line 341
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d2

    const-string v2, "ctc_dual_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 343
    :cond_d2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSecondaryPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 344
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 350
    :goto_de
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_ee

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_11f

    .line 352
    :cond_ee
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    .line 353
    const-string v2, "CallBarring"

    const-string v3, "skip set or get CallBarring"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 355
    const/4 v1, 0x0

    .local v1, i:I
    :goto_fb
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_127

    .line 356
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_fb

    .line 346
    .end local v1           #i:I
    :cond_112
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 347
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    goto :goto_de

    .line 360
    :cond_11f
    iput-boolean v5, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    .line 361
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V

    .line 362
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallBarring;->setHasOptionsMenu(Z)V

    .line 363
    :cond_127
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 13
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const v10, 0x7f0e02cc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateDialog id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 458
    iput-boolean v8, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 460
    sparse-switch p1, :sswitch_data_158

    .line 610
    const v4, 0x7f0e0350

    .line 611
    .local v4, msgId:I
    const v5, 0x7f0e033e

    .line 612
    .local v5, titleId:I
    packed-switch p1, :pswitch_data_182

    .line 617
    :goto_2a
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 621
    .end local v4           #msgId:I
    .end local v5           #titleId:I
    :goto_31
    return-object v1

    .line 464
    :sswitch_32
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    .line 465
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    const v7, 0x7f040002

    invoke-virtual {v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    .line 466
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    const v7, 0x7f09000e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    .line 468
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    const v7, 0x7f0e0360

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 472
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 473
    .local v0, BADialog:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0e035f

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 474
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 476
    new-instance v6, Lcom/android/phone/callsettings/CallBarring$6;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/CallBarring$6;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 490
    const v6, 0x7f0e02cd

    new-instance v7, Lcom/android/phone/callsettings/CallBarring$7;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/CallBarring$7;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/CallBarring;->setCancelable(Z)V

    .line 501
    new-instance v6, Lcom/android/phone/callsettings/CallBarring$8;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/CallBarring$8;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallBarring;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 509
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 511
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_31

    .line 515
    .end local v0           #BADialog:Landroid/app/AlertDialog$Builder;
    :sswitch_9f
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 516
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v7, 0x7f0e007e

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 518
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 520
    iput p1, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    .line 522
    sparse-switch p1, :sswitch_data_188

    goto/16 :goto_31

    .line 525
    :sswitch_cb
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallBarring;->setCancelable(Z)V

    .line 526
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v7, 0x7f0e0081

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_31

    .line 531
    :sswitch_de
    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/CallBarring;->setCancelable(Z)V

    .line 532
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v7, 0x7f0e0080

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 533
    new-instance v6, Lcom/android/phone/callsettings/CallBarring$9;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/CallBarring$9;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallBarring;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 538
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_31

    .line 551
    :sswitch_f9
    const v5, 0x7f0e007f

    .line 552
    .restart local v5       #titleId:I
    const/4 v3, 0x0

    .line 553
    .local v3, isFDN:Z
    sparse-switch p1, :sswitch_data_192

    .line 581
    const v4, 0x7f0e0084

    .line 585
    .restart local v4       #msgId:I
    :goto_103
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 587
    .local v2, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallBarring;->setCancelable(Z)V

    .line 588
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 590
    if-nez v3, :cond_11e

    .line 591
    const v6, 0x1010355

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 593
    :cond_11e
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/phone/callsettings/CallBarring$10;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/CallBarring$10;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 604
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 606
    .local v1, dialog:Landroid/app/AlertDialog;
    goto/16 :goto_31

    .line 555
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #msgId:I
    :sswitch_137
    const v4, 0x7f0e0083

    .line 556
    .restart local v4       #msgId:I
    goto :goto_103

    .line 559
    .end local v4           #msgId:I
    :sswitch_13b
    const v4, 0x7f0e0086

    .line 560
    .restart local v4       #msgId:I
    goto :goto_103

    .line 563
    .end local v4           #msgId:I
    :sswitch_13f
    const v4, 0x7f0e0350

    .line 564
    .restart local v4       #msgId:I
    goto :goto_103

    .line 567
    .end local v4           #msgId:I
    :sswitch_143
    const v4, 0x7f0e0351

    .line 568
    .restart local v4       #msgId:I
    goto :goto_103

    .line 571
    .end local v4           #msgId:I
    :sswitch_147
    const v4, 0x7f0e0352

    .line 572
    .restart local v4       #msgId:I
    goto :goto_103

    .line 575
    .end local v4           #msgId:I
    :sswitch_14b
    const/4 v3, 0x1

    .line 576
    const v5, 0x7f0e02c7

    .line 577
    const v4, 0x7f0e033c

    .line 578
    .restart local v4       #msgId:I
    goto :goto_103

    .line 614
    .end local v3           #isFDN:Z
    :pswitch_153
    const v4, 0x7f0e0350

    goto/16 :goto_2a

    .line 460
    :sswitch_data_158
    .sparse-switch
        0x64 -> :sswitch_9f
        0xc8 -> :sswitch_f9
        0x12c -> :sswitch_f9
        0x190 -> :sswitch_f9
        0x1f4 -> :sswitch_f9
        0x258 -> :sswitch_f9
        0x2bc -> :sswitch_f9
        0x320 -> :sswitch_f9
        0x384 -> :sswitch_9f
        0x3e8 -> :sswitch_32
    .end sparse-switch

    .line 612
    :pswitch_data_182
    .packed-switch 0x190
        :pswitch_153
    .end packed-switch

    .line 522
    :sswitch_data_188
    .sparse-switch
        0x64 -> :sswitch_cb
        0x384 -> :sswitch_de
    .end sparse-switch

    .line 553
    :sswitch_data_192
    .sparse-switch
        0x12c -> :sswitch_137
        0x190 -> :sswitch_13f
        0x1f4 -> :sswitch_143
        0x258 -> :sswitch_147
        0x2bc -> :sswitch_14b
        0x320 -> :sswitch_13b
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1196
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1197
    const/4 v0, 0x1

    const v1, 0x7f0e0361

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020300

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1199
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 1305
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallBarring;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    move-object v0, p1

    .line 1307
    check-cast v0, Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->checkPassword(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1308
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1312
    :cond_1b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 1348
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1350
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 1376
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 1373
    :pswitch_c
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->showPasswordDialog()V

    .line 1374
    const/4 v0, 0x1

    goto :goto_b

    .line 1350
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 385
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    .line 387
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 389
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 371
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 373
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 377
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 406
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    const-string v1, "callbarring_baoc_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 409
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 410
    .local v0, isChecked:Z
    iput v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 411
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 414
    .end local v0           #isChecked:Z
    :cond_29
    const-string v1, "callbarring_baoic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 415
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 416
    .restart local v0       #isChecked:Z
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 417
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 420
    .end local v0           #isChecked:Z
    :cond_3a
    const-string v1, "callbarring_baoicxh_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 421
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 422
    .restart local v0       #isChecked:Z
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 423
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 426
    .end local v0           #isChecked:Z
    :cond_4b
    const-string v1, "callbarring_baic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 427
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 428
    .restart local v0       #isChecked:Z
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 429
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 432
    .end local v0           #isChecked:Z
    :cond_5c
    const-string v1, "callbarring_baicr_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 433
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 434
    .restart local v0       #isChecked:Z
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 435
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 438
    .end local v0           #isChecked:Z
    :cond_6d
    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    if-eqz v1, :cond_74

    .line 439
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 451
    :goto_73
    return-void

    .line 441
    :cond_74
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    .line 442
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->showDialog(I)V

    .line 444
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/CallBarring$5;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$5;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_73
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 392
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    .line 395
    return-void
.end method
