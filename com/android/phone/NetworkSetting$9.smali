.class Lcom/android/phone/NetworkSetting$9;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v2, 0x0

    #calls: Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$2700(Lcom/android/phone/NetworkSetting;Z)V

    .line 774
    const-string v1, "dcm_manual_select_delay"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 775
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xbb9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 778
    :cond_25
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v2, -0x2713

    #setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->access$2302(Lcom/android/phone/NetworkSetting;I)I

    .line 780
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mTempPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2800(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, networkStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$9;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/phone/NetworkSetting;->access$2900(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 782
    return-void
.end method
