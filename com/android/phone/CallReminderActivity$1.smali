.class Lcom/android/phone/CallReminderActivity$1;
.super Landroid/os/CountDownTimer;
.source "CallReminderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallReminderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallReminderActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/CallReminderActivity;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/phone/CallReminderActivity$1;->this$0:Lcom/android/phone/CallReminderActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity$1;->this$0:Lcom/android/phone/CallReminderActivity;

    const-string v1, "mAlertTimer onFinish()"

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity$1;->this$0:Lcom/android/phone/CallReminderActivity;

    invoke-virtual {v0}, Lcom/android/phone/CallReminderActivity;->StopAll()V

    .line 193
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity$1;->this$0:Lcom/android/phone/CallReminderActivity;

    invoke-static {v0}, Lcom/android/phone/CallReminderActivity;->access$008(Lcom/android/phone/CallReminderActivity;)I

    .line 185
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity$1;->this$0:Lcom/android/phone/CallReminderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallReminderActivity$1;->this$0:Lcom/android/phone/CallReminderActivity;

    #getter for: Lcom/android/phone/CallReminderActivity;->mCount:I
    invoke-static {v2}, Lcom/android/phone/CallReminderActivity;->access$000(Lcom/android/phone/CallReminderActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderActivity;->log(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_40

    .line 187
    iget-object v0, p0, Lcom/android/phone/CallReminderActivity$1;->this$0:Lcom/android/phone/CallReminderActivity;

    #getter for: Lcom/android/phone/CallReminderActivity;->player:Lcom/android/phone/CallReminderPlayer;
    invoke-static {v0}, Lcom/android/phone/CallReminderActivity;->access$100(Lcom/android/phone/CallReminderActivity;)Lcom/android/phone/CallReminderPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallReminderActivity$1;->this$0:Lcom/android/phone/CallReminderActivity;

    #getter for: Lcom/android/phone/CallReminderActivity;->mCount:I
    invoke-static {v1}, Lcom/android/phone/CallReminderActivity;->access$000(Lcom/android/phone/CallReminderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderPlayer;->Play(I)V

    .line 189
    :cond_40
    return-void
.end method
