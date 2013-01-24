.class Lcom/android/phone/InCallScreen$6;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 934
    iput-object p1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResults([Ljava/lang/String;)V
    .registers 7
    .parameter "strResult"

    .prologue
    .line 936
    iget-object v1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IWSpeechRecognizerListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 938
    const/4 v0, -0x1

    .line 940
    .local v0, result:I
    iget-object v1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2800(Lcom/android/phone/InCallScreen;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 941
    iget-object v1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2800(Lcom/android/phone/InCallScreen;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getIntBargeInResult()I

    move-result v0

    .line 944
    :cond_2e
    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    .line 945
    packed-switch v0, :pswitch_data_70

    .line 968
    :cond_34
    :goto_34
    return-void

    .line 947
    :pswitch_35
    iget-object v1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2800(Lcom/android/phone/InCallScreen;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 948
    iget-object v1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2800(Lcom/android/phone/InCallScreen;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 951
    :cond_46
    iget-object v1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 954
    iget-object v1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x99

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_34

    .line 958
    :pswitch_59
    iget-object v1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2800(Lcom/android/phone/InCallScreen;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 959
    iget-object v1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2800(Lcom/android/phone/InCallScreen;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 962
    :cond_6a
    iget-object v1, p0, Lcom/android/phone/InCallScreen$6;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    goto :goto_34

    .line 945
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_35
        :pswitch_59
    .end packed-switch
.end method
