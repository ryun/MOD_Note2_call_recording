.class Lcom/android/phone/BluetoothHandsfree$15;
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
    .line 4039
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$15;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .registers 8

    .prologue
    .line 4042
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$15;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 4045
    .local v2, phoneType:I
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$15;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$5600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 4046
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$15;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 4047
    .local v1, number:Ljava/lang/String;
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4049
    .local v3, result:Landroid/bluetooth/AtCommandResult;
    if-nez v1, :cond_32

    .line 4050
    const-string v0, "+CLCC: 1,0,0,0,0,\"\",0"

    .line 4057
    .local v0, args:Ljava/lang/String;
    :goto_2e
    invoke-virtual {v3, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4069
    .end local v0           #args:Ljava/lang/String;
    .end local v1           #number:Ljava/lang/String;
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    :goto_31
    return-object v3

    .line 4054
    .restart local v1       #number:Ljava/lang/String;
    .restart local v3       #result:Landroid/bluetooth/AtCommandResult;
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CLCC: 1,0,0,0,0,\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #args:Ljava/lang/String;
    goto :goto_2e

    .line 4061
    .end local v0           #args:Ljava/lang/String;
    .end local v1           #number:Ljava/lang/String;
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    :cond_54
    const-string v4, "ims_volte"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$15;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->imsHelper:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_78

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$15;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->hasActiveImsCall()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$7400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 4063
    const-string v4, "CLCC PhoneFeature.IMS_VOLTE"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 4064
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$15;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->imsGetClccResult()Landroid/bluetooth/AtCommandResult;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$8700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v3

    goto :goto_31

    .line 4066
    :cond_78
    const/4 v4, 0x2

    if-ne v2, v4, :cond_82

    .line 4067
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$15;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$8800(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v3

    goto :goto_31

    .line 4068
    :cond_82
    const/4 v4, 0x1

    if-ne v2, v4, :cond_8c

    .line 4069
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$15;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->gsmGetClccResult()Landroid/bluetooth/AtCommandResult;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$8900(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v3

    goto :goto_31

    .line 4071
    :cond_8c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
