.class Lcom/android/phone/NetworkModePreference$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkModePreference.java"


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
    .line 56
    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 59
    packed-switch p1, :pswitch_data_28

    .line 72
    :cond_4
    :goto_4
    return-void

    .line 61
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$000(Lcom/android/phone/NetworkModePreference;)Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 62
    const-string v0, "NetworkModePreference"

    const-string v1, "onDataConnectionStateChanged.."

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 63
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MobileNetworkSettings;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->removeDialog(I)V

    .line 64
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    #calls: Lcom/android/phone/NetworkModePreference;->changeNetworkType()V
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)V

    goto :goto_4

    .line 59
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
