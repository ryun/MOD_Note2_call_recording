.class Lcom/android/phone/CallFeaturesSetting$10;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2669
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_8e

    .line 2700
    :cond_7
    :goto_7
    return-void

    .line 2671
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1c

    .line 2672
    const-string v4, "CallFeaturesSetting"

    const-string v5, "OEM_HIDDEN_GET_DDTM_MODE Exception Occur!!!"

    invoke-static {v4, v5, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_7

    .line 2676
    :cond_1c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "response"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    check-cast v1, [B

    .line 2678
    .local v1, response:[B
    array-length v5, v1

    if-nez v5, :cond_33

    .line 2679
    const-string v4, "CallFeaturesSetting"

    const-string v5, "No answer for OEM_HIDDEN_GET_DDTM_MODE response"

    invoke-static {v4, v5, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_7

    .line 2683
    :cond_33
    aget-byte v0, v1, v4

    .line 2684
    .local v0, mode:I
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const v6, 0x7f0e0434

    invoke-virtual {v5, v6}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2685
    .local v2, value:Ljava/lang/String;
    if-ne v0, v3, :cond_49

    .line 2686
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const v6, 0x7f0e0435

    invoke-virtual {v5, v6}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2688
    :cond_49
    const-string v5, "CallFeaturesSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OEM_HIDDEN_GET_DDTM_MODE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2689
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$2500(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    if-eqz v0, :cond_6d

    :goto_69
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    :cond_6d
    move v3, v4

    goto :goto_69

    .line 2692
    .end local v0           #mode:I
    .end local v1           #response:[B
    .end local v2           #value:Ljava/lang/String;
    :pswitch_6f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_7

    .line 2693
    const-string v5, "CallFeaturesSetting"

    const-string v6, "OEM_HIDDEN_SET_DDTM_MODE Exception Occur!!!"

    invoke-static {v5, v6, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2694
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonDDTM:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$2500(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 2669
    nop

    :pswitch_data_8e
    .packed-switch 0x16
        :pswitch_8
        :pswitch_6f
    .end packed-switch
.end method
