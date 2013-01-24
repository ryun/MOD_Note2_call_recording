.class Lcom/android/phone/BluetoothHandsfree$14;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 2
    .parameter

    .prologue
    .line 3988
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private isValidDtmf(C)Z
    .registers 5
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 4025
    sparse-switch p1, :sswitch_data_10

    .line 4030
    const/16 v1, 0xe

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 4033
    :goto_d
    :sswitch_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 4025
    :sswitch_data_10
    .sparse-switch
        0x23 -> :sswitch_d
        0x2a -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 3991
    array-length v0, p1

    if-lt v0, v2, :cond_c3

    .line 3993
    aget-object v0, p1, v6

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_62

    .line 3994
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3998
    :goto_17
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$14;->isValidDtmf(C)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 3999
    const-string v1, "ims_volte"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->hasActiveImsCall()Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 4002
    :try_start_35
    const-string v1, "com.android.phone.ImsBluetoothHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendDtmf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Character;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5c} :catch_6b

    .line 4006
    :goto_5c
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4022
    :goto_61
    return-object v0

    .line 3996
    :cond_62
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_17

    .line 4003
    :catch_6b
    move-exception v0

    .line 4004
    const-string v1, "Bluetooth HS/HF"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 4008
    :cond_76
    const-string v1, "sec_korea_bluetooth"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 4009
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a7

    .line 4010
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 4011
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v6, v6, v2}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 4018
    :goto_a1
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_61

    .line 4013
    :cond_a7
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_a1

    .line 4016
    :cond_b5
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_a1

    .line 4022
    :cond_c3
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_61
.end method
