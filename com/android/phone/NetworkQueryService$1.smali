.class Lcom/android/phone/NetworkQueryService$1;
.super Landroid/os/Handler;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 100
    :goto_5
    return-void

    .line 96
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    const-string v1, "scan completed, broadcasting results"

    const/4 v2, 0x1

    #calls: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;Ljava/lang/String;Z)V

    .line 97
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/NetworkQueryService;->broadcastQueryResults(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/NetworkQueryService;->access$200(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 92
    :pswitch_data_18
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
