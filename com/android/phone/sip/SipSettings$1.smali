.class Lcom/android/phone/sip/SipSettings$1;
.super Ljava/lang/Thread;
.source "SipSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;Landroid/content/Intent;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    iput-object p2, p0, Lcom/android/phone/sip/SipSettings$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/phone/sip/SipSettings$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/phone/sip/SipSettings;->access$400(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipProfile;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 265
    const-string v2, "SipSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed Profile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v4}, Lcom/android/phone/sip/SipSettings;->access$400(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v3}, Lcom/android/phone/sip/SipSettings;->access$400(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/sip/SipSettings;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 269
    :cond_35
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$1;->val$intent:Landroid/content/Intent;

    const-string v3, "sip_profile"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 270
    .local v1, profile:Landroid/net/sip/SipProfile;
    iget v2, p0, Lcom/android/phone/sip/SipSettings$1;->val$resultCode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_65

    .line 271
    const-string v2, "SipSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Profile Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    #calls: Lcom/android/phone/sip/SipSettings;->addProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v2, v1}, Lcom/android/phone/sip/SipSettings;->access$500(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    .line 274
    :cond_65
    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$1;->this$0:Lcom/android/phone/sip/SipSettings;

    #calls: Lcom/android/phone/sip/SipSettings;->updateProfilesStatus()V
    invoke-static {v2}, Lcom/android/phone/sip/SipSettings;->access$600(Lcom/android/phone/sip/SipSettings;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6a} :catch_6b

    .line 278
    .end local v1           #profile:Landroid/net/sip/SipProfile;
    :goto_6a
    return-void

    .line 275
    :catch_6b
    move-exception v0

    .line 276
    .local v0, e:Ljava/io/IOException;
    const-string v2, "SipSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle the profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a
.end method
