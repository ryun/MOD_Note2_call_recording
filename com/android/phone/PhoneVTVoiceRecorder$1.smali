.class Lcom/android/phone/PhoneVTVoiceRecorder$1;
.super Landroid/os/Handler;
.source "PhoneVTVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVTVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneVTVoiceRecorder;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneVTVoiceRecorder;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/PhoneVTVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVTVoiceRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 94
    :goto_5
    return-void

    .line 82
    :pswitch_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 80
    nop

    :pswitch_data_18
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
