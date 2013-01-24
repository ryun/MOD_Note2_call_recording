.class Lcom/android/phone/CdmaAdditionalCallOptions$11;
.super Landroid/os/Handler;
.source "CdmaAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$11;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 787
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 797
    :goto_5
    return-void

    .line 789
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$11;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->handleGetVPResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1200(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/Message;)V

    goto :goto_5

    .line 792
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$11;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->handleSetVPMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1300(Lcom/android/phone/CdmaAdditionalCallOptions;Landroid/os/Message;)V

    goto :goto_5

    .line 787
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
