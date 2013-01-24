.class Lcom/android/phone/NetworkModePreference$3;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .registers 2
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$3;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 261
    packed-switch p2, :pswitch_data_3c

    .line 276
    :goto_4
    return-void

    .line 263
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$3;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MobileNetworkSettings;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    .line 264
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$3;->this$0:Lcom/android/phone/NetworkModePreference;

    #calls: Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/phone/NetworkModePreference;->access$600(Lcom/android/phone/NetworkModePreference;Z)V

    .line 265
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$3;->this$0:Lcom/android/phone/NetworkModePreference;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v0, v1}, Lcom/android/phone/NetworkModePreference;->access$002(Lcom/android/phone/NetworkModePreference;Z)Z

    goto :goto_4

    .line 269
    :pswitch_1e
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$3;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$3;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 270
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$3;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$700(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_4

    .line 261
    nop

    :pswitch_data_3c
    .packed-switch -0x2
        :pswitch_1e
        :pswitch_5
    .end packed-switch
.end method
