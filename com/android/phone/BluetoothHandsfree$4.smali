.class Lcom/android/phone/BluetoothHandsfree$4;
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
    .line 3666
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .registers 13
    .parameter "args"

    .prologue
    const/high16 v10, 0x1000

    const/16 v9, 0x3b

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3669
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10e

    .line 3670
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_c9

    .line 3673
    const-string v4, ">9999"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 3674
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3735
    :goto_22
    return-object v4

    .line 3677
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3a

    .line 3678
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v4

    if-eqz v4, :cond_34

    const-string v4, "No number specified in ATD>nnn command"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 3679
    :cond_34
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_22

    .line 3682
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_6a

    .line 3683
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3689
    :goto_50
    const/4 v3, 0x0

    .line 3691
    .local v3, number:Ljava/lang/String;
    :try_start_51
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_54} :catch_6f

    move-result v2

    .line 3697
    .local v2, memIndex:I
    const-string v4, "sec_korea_bluetooth"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 3698
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->getSpeedDialNumber(I)Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/phone/BluetoothHandsfree;->access$7500(Lcom/android/phone/BluetoothHandsfree;I)Ljava/lang/String;

    move-result-object v3

    .line 3713
    :goto_63
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->memoryDial(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    invoke-static {v4, v3}, Lcom/android/phone/BluetoothHandsfree;->access$7700(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v4

    goto :goto_22

    .line 3685
    .end local v2           #memIndex:I
    .end local v3           #number:Ljava/lang/String;
    :cond_6a
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    .line 3692
    .restart local v3       #number:Ljava/lang/String;
    :catch_6f
    move-exception v0

    .line 3693
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/phone/BluetoothHandsfree;->access$3200()Z

    move-result v4

    if-eqz v4, :cond_92

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "args \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is not a valid integer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Ljava/lang/String;)V

    .line 3694
    :cond_92
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_22

    .line 3701
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #memIndex:I
    :cond_98
    if-ne v2, v6, :cond_c2

    .line 3702
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "voicemail"

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3704
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3705
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3707
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$7600(Lcom/android/phone/BluetoothHandsfree;)V

    .line 3708
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_22

    .line 3710
    .end local v1           #intent:Landroid/content/Intent;
    :cond_c2
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->getSpeedDialNumber(I)Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/phone/BluetoothHandsfree;->access$7500(Lcom/android/phone/BluetoothHandsfree;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_63

    .line 3718
    .end local v2           #memIndex:I
    .end local v3           #number:Ljava/lang/String;
    :cond_c9
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 3720
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_e4

    .line 3721
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3724
    :cond_e4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3726
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, p1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3728
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3729
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3731
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$7600(Lcom/android/phone/BluetoothHandsfree;)V

    .line 3732
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_22

    .line 3735
    .end local v1           #intent:Landroid/content/Intent;
    :cond_10e
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_22
.end method
