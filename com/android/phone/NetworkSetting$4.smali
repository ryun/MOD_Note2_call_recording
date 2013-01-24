.class Lcom/android/phone/NetworkSetting$4;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 417
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v1, "connection created, binding local service."

    const/4 v2, 0x1

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 422
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    check-cast p2, Lcom/android/phone/NetworkQueryService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/phone/NetworkQueryService$LocalBinder;->getService()Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    #setter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$2502(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 427
    const-string v0, "usa_gsm_network_setting"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 428
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->checkDataConnectionSearchButton()V
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$2600(Lcom/android/phone/NetworkSetting;)V

    .line 430
    :cond_20
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v1, "connection disconnected, cleaning local binding."

    const/4 v2, 0x1

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    .line 435
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$2502(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 436
    return-void
.end method
