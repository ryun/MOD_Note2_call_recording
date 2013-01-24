.class Lcom/android/phone/BootupListener$1;
.super Landroid/os/Handler;
.source "BootupListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BootupListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BootupListener;


# direct methods
.method constructor <init>(Lcom/android/phone/BootupListener;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/phone/BootupListener$1;->this$0:Lcom/android/phone/BootupListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 130
    :goto_5
    return-void

    .line 127
    :pswitch_6
    const-string v0, "BootupListener"

    const-string v1, "set_cdma_network"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 125
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
