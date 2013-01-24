.class Lcom/android/phone/InVTCallScreen$8;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 2536
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResults([Ljava/lang/String;)V
    .registers 6
    .parameter "strResult"

    .prologue
    .line 2538
    const-string v1, "InVTCallScreen"

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

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    const/4 v0, -0x1

    .line 2542
    .local v0, result:I
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 2543
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getIntBargeInResult()I

    move-result v0

    .line 2546
    :cond_2e
    const/4 v1, -0x1

    if-eq v0, v1, :cond_45

    .line 2547
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 2548
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 2551
    :cond_42
    packed-switch v0, :pswitch_data_52

    .line 2562
    :cond_45
    :goto_45
    return-void

    .line 2553
    :pswitch_46
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto :goto_45

    .line 2556
    :pswitch_4c
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->hangupRingingCall()V

    goto :goto_45

    .line 2551
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_46
        :pswitch_4c
    .end packed-switch
.end method
