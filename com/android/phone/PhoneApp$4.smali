.class Lcom/android/phone/PhoneApp$4;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .registers 2
    .parameter

    .prologue
    .line 3743
    iput-object p1, p0, Lcom/android/phone/PhoneApp$4;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 3749
    const-string v0, "AutoCSP"

    const-string v1, "AutoCSP Service Connected"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    iget-object v0, p0, Lcom/android/phone/PhoneApp$4;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {p2}, Lcom/android/phone/IAutoCSP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IAutoCSP;

    move-result-object v1

    #setter for: Lcom/android/phone/PhoneApp;->autoCSP:Lcom/android/phone/IAutoCSP;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$2402(Lcom/android/phone/PhoneApp;Lcom/android/phone/IAutoCSP;)Lcom/android/phone/IAutoCSP;

    .line 3752
    const-string v0, "feature_ltn_auto_csp"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/phone/PhoneApp$4;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_29

    .line 3753
    iget-object v0, p0, Lcom/android/phone/PhoneApp$4;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, p0, Lcom/android/phone/PhoneApp$4;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->autoCSP:Lcom/android/phone/IAutoCSP;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$2400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/IAutoCSP;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneApp;->setAutoCSP(Lcom/android/phone/IAutoCSP;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$2500(Lcom/android/phone/PhoneApp;Lcom/android/phone/IAutoCSP;)V

    .line 3755
    :cond_29
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/android/phone/PhoneApp$4;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->autoCSP:Lcom/android/phone/IAutoCSP;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$2402(Lcom/android/phone/PhoneApp;Lcom/android/phone/IAutoCSP;)Lcom/android/phone/IAutoCSP;

    .line 3746
    return-void
.end method
