.class Lcom/android/phone/RejectCallWithMsgContent$3;
.super Ljava/lang/Object;
.source "RejectCallWithMsgContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsgContent;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$3;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    .line 212
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 213
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1b

    .line 214
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 215
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_1b

    .line 216
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$3;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$402(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1b
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 220
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$3;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent$3;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/RejectCallWithMsgContent;->setRejectCallNumber(Ljava/lang/String;)V

    .line 222
    :cond_2e
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$3;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 223
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$3;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$500(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 225
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 226
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto"

    iget-object v5, p0, Lcom/android/phone/RejectCallWithMsgContent$3;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1800

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    const-string v3, "exit_on_sent"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$3;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$500(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7c
    return-void
.end method
