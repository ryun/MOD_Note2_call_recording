.class Lcom/android/phone/PhoneVoiceRecorder$1;
.super Landroid/os/Handler;
.source "PhoneVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4e

    .line 93
    :goto_5
    return-void

    .line 78
    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/phone/PhoneVoiceRecorder;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$000(Lcom/android/phone/PhoneVoiceRecorder;Ljava/lang/String;)V

    goto :goto_5

    .line 81
    :pswitch_10
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_2a

    .line 82
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    .line 84
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, v0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_3b

    .line 85
    sget-boolean v0, Lcom/android/phone/PhoneVoiceRecorder;->mIsRecording:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, v0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->visibleRecInfoView()V

    .line 89
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    #getter for: Lcom/android/phone/PhoneVoiceRecorder;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_5

    .line 86
    :cond_45
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$1;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iget-object v0, v0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    goto :goto_3b

    .line 76
    nop

    :pswitch_data_4e
    .packed-switch 0x64
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method
