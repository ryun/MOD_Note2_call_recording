.class Lcom/android/phone/sip/SipSettings$8;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;

.field final synthetic val$p:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$8;->this$0:Lcom/android/phone/sip/SipSettings;

    iput-object p2, p0, Lcom/android/phone/sip/SipSettings$8;->val$p:Landroid/net/sip/SipProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$8;->this$0:Lcom/android/phone/sip/SipSettings;

    #getter for: Lcom/android/phone/sip/SipSettings;->mSipManager:Landroid/net/sip/SipManager;
    invoke-static {v1}, Lcom/android/phone/sip/SipSettings;->access$1200(Lcom/android/phone/sip/SipSettings;)Landroid/net/sip/SipManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/sip/SipSettings$8;->val$p:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 478
    :goto_f
    return-void

    .line 475
    :catch_10
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SipSettings"

    const-string v2, "unregister failed, SipService died?"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
