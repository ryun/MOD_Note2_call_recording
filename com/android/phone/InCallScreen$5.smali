.class Lcom/android/phone/InCallScreen$5;
.super Landroid/database/ContentObserver;
.source "InCallScreen.java"


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
.method constructor <init>(Lcom/android/phone/InCallScreen;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .parameter "selfChange"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 907
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 909
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mRcsInvitation:Lcom/android/phone/RcsInvitation;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/RcsInvitation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/RcsShare;->getCallStartTime(Lcom/android/internal/telephony/CallManager;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/phone/RcsShare;->setupRcsCallCard(Lcom/android/phone/RcsInvitation;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/telephony/CallManager;)V

    .line 912
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/RcsShare;->isShareActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 913
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->getFrgndCallContactName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/RcsShare;->getCallStartTime(Lcom/android/internal/telephony/CallManager;)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/RcsShare;->resumeShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 918
    :cond_8d
    iget-object v0, p0, Lcom/android/phone/InCallScreen$5;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateProximityMode()V

    .line 919
    return-void
.end method
