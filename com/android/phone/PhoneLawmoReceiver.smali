.class public Lcom/android/phone/PhoneLawmoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneLawmoReceiver.java"


# static fields
.field private static final DBG:Z

.field private static ckstate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    sput-boolean v1, Lcom/android/phone/PhoneLawmoReceiver;->ckstate:Z

    .line 34
    sget v2, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v2, v0, :cond_13

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_13

    :goto_10
    sput-boolean v0, Lcom/android/phone/PhoneLawmoReceiver;->DBG:Z

    return-void

    :cond_13
    move v0, v1

    goto :goto_10
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, action:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/PhoneLawmoReceiver;->DBG:Z

    if-eqz v2, :cond_21

    const-string v2, "PhoneLawmoReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_21
    const-string v2, "android.intent.action.OMADM_LAWMO_SET_LOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 41
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->setLawmoLockState(Z)V

    .line 42
    :cond_31
    const-string v2, "android.intent.action.OMADM_LAWMO_SET_UNLOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 43
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/phone/PhoneApp;->setLawmoLockState(Z)V

    .line 44
    :cond_40
    const-string v2, "android.intent.action.OMADM_LAWMO_IS_LOCK_RESULT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 45
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const-string v3, "LAWMO_ISLOCKED"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->setLawmoLockState(Z)V

    .line 46
    :cond_55
    const-string v2, "android.intent.action.BROWSER_WLAN_RESELECTION_VALUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 48
    sget-boolean v2, Lcom/android/phone/PhoneLawmoReceiver;->DBG:Z

    if-eqz v2, :cond_68

    const-string v2, "connectivity"

    const-string v3, "Received Reselection Intent from browser"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WLAN_RESELECTION_VALUE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, intent_wlan:Landroid/content/Intent;
    const-string v2, "state"

    sget-boolean v3, Lcom/android/phone/PhoneLawmoReceiver;->ckstate:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    sget-boolean v2, Lcom/android/phone/PhoneLawmoReceiver;->DBG:Z

    if-eqz v2, :cond_97

    const-string v2, "connectivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send inpormation Intent to browser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/PhoneLawmoReceiver;->ckstate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v1           #intent_wlan:Landroid/content/Intent;
    :cond_97
    const-string v2, "android.intent.action.FOR_RECEIVE_RESELECTION_VALUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 56
    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/PhoneLawmoReceiver;->ckstate:Z

    .line 57
    sget-boolean v2, Lcom/android/phone/PhoneLawmoReceiver;->DBG:Z

    if-eqz v2, :cond_c5

    const-string v2, "connectivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received information from Setting is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/PhoneLawmoReceiver;->ckstate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_c5
    sget-boolean v2, Lcom/android/phone/PhoneLawmoReceiver;->DBG:Z

    if-eqz v2, :cond_e9

    const-string v2, "PhoneLawmoReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive:PhoneApp.getInstance().isLAWMOLocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getLawmoLockState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_e9
    return-void
.end method
