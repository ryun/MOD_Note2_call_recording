.class public Lcom/android/phone/PenGestureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PenGestureReceiver.java"


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneApp;

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_33

    .line 122
    :cond_32
    :goto_32
    return-void

    .line 55
    :cond_33
    const-string v18, "PenGestureReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onReceive action "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v10

    .line 58
    .local v10, inCallScreen:Lcom/android/phone/InCallScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneApp;->getInVTCallScreenInstance()Lcom/android/phone/InVTCallScreen;

    move-result-object v11

    .line 60
    .local v11, inVTCallScreen:Lcom/android/phone/InVTCallScreen;
    const/16 v16, 0x0

    .line 62
    .local v16, mhasSystemFeature_SpenUsp:Z
    const-string v18, "com.samsung.pen.INSERT"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_81

    const-string v18, "android.intent.spengesture.DOUBLE_TAB"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_81

    const-string v18, "com.android.phone.MEMO_OPEN"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_32

    .line 65
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v18

    if-eqz v18, :cond_130

    .line 66
    if-eqz v11, :cond_9d

    .line 67
    invoke-virtual {v11}, Lcom/android/phone/InVTCallScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v19, "com.sec.feature.spen_usp"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    .line 74
    :cond_9d
    :goto_9d
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_32

    .line 75
    const-string v18, "penInsert"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 76
    .local v17, penInsert:Z
    const-string v18, "isFactoryMode"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 77
    .local v13, isFactoryMode:Z
    const/4 v14, 0x0

    .line 79
    .local v14, isKeyguardLocked:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v15

    .line 80
    .local v15, keyguarMgr:Landroid/app/KeyguardManager;
    if-eqz v15, :cond_e4

    invoke-virtual {v15}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v18

    if-eqz v18, :cond_e4

    .line 82
    if-eqz v10, :cond_e4

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isInCallScreenTopActivity()Z

    move-result v18

    if-nez v18, :cond_e4

    .line 84
    const/4 v14, 0x1

    .line 85
    if-nez v17, :cond_e4

    invoke-virtual {v15}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v18

    if-nez v18, :cond_e4

    .line 88
    const/4 v14, 0x0

    .line 92
    :cond_e4
    if-eqz v17, :cond_fa

    const-string v18, "android.intent.spengesture.DOUBLE_TAB"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_fa

    const-string v18, "com.android.phone.MEMO_OPEN"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_32

    :cond_fa
    if-nez v14, :cond_32

    if-nez v13, :cond_32

    .line 94
    const-string v8, ""

    .line 95
    .local v8, fgnumbers:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v7

    .line 97
    .local v7, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_10b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_15c

    .line 98
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 99
    .local v6, connection:Lcom/android/internal/telephony/Connection;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v6, v1, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v12

    .line 100
    .local v12, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v4, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 102
    .local v4, ci:Lcom/android/internal/telephony/CallerInfo;
    if-nez v9, :cond_13e

    .line 103
    iget-object v8, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 97
    :goto_12d
    add-int/lit8 v9, v9, 0x1

    goto :goto_10b

    .line 70
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v6           #connection:Lcom/android/internal/telephony/Connection;
    .end local v7           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v8           #fgnumbers:Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v13           #isFactoryMode:Z
    .end local v14           #isKeyguardLocked:Z
    .end local v15           #keyguarMgr:Landroid/app/KeyguardManager;
    .end local v17           #penInsert:Z
    :cond_130
    if-eqz v10, :cond_9d

    .line 71
    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v19, "com.sec.feature.spen_usp"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    goto/16 :goto_9d

    .line 105
    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v6       #connection:Lcom/android/internal/telephony/Connection;
    .restart local v7       #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v8       #fgnumbers:Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v12       #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v13       #isFactoryMode:Z
    .restart local v14       #isKeyguardLocked:Z
    .restart local v15       #keyguarMgr:Landroid/app/KeyguardManager;
    .restart local v17       #penInsert:Z
    :cond_13e
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_12d

    .line 109
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v6           #connection:Lcom/android/internal/telephony/Connection;
    .end local v12           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_15c
    const-string v18, "PenGestureReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "open quick note in call,  action "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v5, Landroid/content/ComponentName;

    const-string v18, "com.diotek.mini_penmemo"

    const-string v19, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v5, component:Landroid/content/ComponentName;
    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 113
    .local v9, i:Landroid/content/Intent;
    const-string v18, "phonenumbers"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PenGestureReceiver;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v18

    if-eqz v18, :cond_1ba

    .line 116
    invoke-virtual {v11, v9}, Lcom/android/phone/InVTCallScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_32

    .line 118
    :cond_1ba
    invoke-virtual {v10, v9}, Lcom/android/phone/InCallScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_32
.end method
