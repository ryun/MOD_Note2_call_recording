.class Lcom/android/phone/callsettings/IpCall$6;
.super Landroid/os/Handler;
.source "IpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .registers 2
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$6;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 433
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 438
    :goto_5
    return-void

    .line 435
    :pswitch_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DONE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 433
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
