.class public Lcom/android/phone/LGTRoamingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGTRoamingReceiver.java"


# static fields
.field private static final DBG:Ljava/lang/Boolean;


# instance fields
.field private mDefaultIMEI:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/phone/LGTRoamingReceiver;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/LGTRoamingReceiver;->mDefaultIMEI:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 42
    const-string v7, "fake_change"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 43
    const-string v7, "RoamingPrefs"

    invoke-virtual {p1, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 44
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 45
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "fakesid"

    const-string v8, ""

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_29
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.fake.SIDCHANGE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v3, i:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    .end local v3           #i:Landroid/content/Intent;
    :cond_38
    :goto_38
    return-void

    .line 52
    :cond_39
    const-string v7, "fakeSID"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, roamingArea:Ljava/lang/String;
    const-string v7, "LGTRoamingReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "roamingArea = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-eqz v4, :cond_a4

    :try_start_59
    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a4

    .line 56
    const-string v7, "LGTRoamingReceiver"

    const-string v8, "Set oversea!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v7, "ril.cdma.roamingarea"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v7, "ril.currentplmn"

    const-string v8, "oversea"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 60
    const-string v7, "LGTRoamingReceiver"

    const-string v8, "Set domestic!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v7, "ril.currentplmn"

    const-string v8, "domestic"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_8a} :catch_8b

    goto :goto_38

    .line 65
    :catch_8b
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "LGTRoamingReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v1           #e:Ljava/lang/Exception;
    :cond_a4
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 71
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, IMEI:Ljava/lang/String;
    if-eqz v0, :cond_ba

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_de

    .line 75
    :cond_ba
    iput-boolean v10, p0, Lcom/android/phone/LGTRoamingReceiver;->mDefaultIMEI:Z

    .line 79
    :goto_bc
    iget-boolean v7, p0, Lcom/android/phone/LGTRoamingReceiver;->mDefaultIMEI:Z

    if-nez v7, :cond_38

    .line 81
    const-string v7, "DataConnectivityToggler"

    const-string v8, "OK"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v7, "-1"

    const-string v8, "ril.cdma.sid"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 83
    const-string v7, "ril.cdma.roamingarea"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 77
    :cond_de
    const-string v7, "357858010034783"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/phone/LGTRoamingReceiver;->mDefaultIMEI:Z

    goto :goto_bc

    .line 86
    :cond_e7
    const-string v7, "LGTRoamingReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "if SID == 1 then MayBe Not Write This Log : SID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ril.cdma.sid"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38
.end method
