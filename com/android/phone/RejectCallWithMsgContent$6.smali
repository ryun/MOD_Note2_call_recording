.class Lcom/android/phone/RejectCallWithMsgContent$6;
.super Ljava/lang/Object;
.source "RejectCallWithMsgContent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsgContent;->RemindmeDialog()V
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
    .line 364
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$6;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x0

    .line 366
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 367
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1f

    .line 368
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 369
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_1c

    .line 370
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$6;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$402(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    :cond_1c
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 374
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1f
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 375
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$6;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent$6;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$400(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/RejectCallWithMsgContent;->setRejectCallNumber(Ljava/lang/String;)V

    .line 377
    :cond_32
    packed-switch p2, :pswitch_data_70

    .line 394
    sput v6, Lcom/android/phone/PhoneApp;->remindCallTime:I

    .line 397
    :goto_37
    sget v3, Lcom/android/phone/PhoneApp;->remindCallTime:I

    if-eqz v3, :cond_54

    .line 398
    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgContent$6;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgContent;->access$500(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent$6;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/RejectCallWithMsgContent;->access$500(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/phone/PhoneApp;->remindCallTime:I

    invoke-static {v4, v5}, Lcom/android/phone/RejectCallWithMsgContent;->constructReminderLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 399
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 401
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_54
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 402
    return-void

    .line 379
    :pswitch_58
    const/4 v3, 0x5

    sput v3, Lcom/android/phone/PhoneApp;->remindCallTime:I

    goto :goto_37

    .line 382
    :pswitch_5c
    const/16 v3, 0xf

    sput v3, Lcom/android/phone/PhoneApp;->remindCallTime:I

    goto :goto_37

    .line 385
    :pswitch_61
    const/16 v3, 0x1e

    sput v3, Lcom/android/phone/PhoneApp;->remindCallTime:I

    goto :goto_37

    .line 388
    :pswitch_66
    const/16 v3, 0x3c

    sput v3, Lcom/android/phone/PhoneApp;->remindCallTime:I

    goto :goto_37

    .line 391
    :pswitch_6b
    const/16 v3, 0x78

    sput v3, Lcom/android/phone/PhoneApp;->remindCallTime:I

    goto :goto_37

    .line 377
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_58
        :pswitch_5c
        :pswitch_61
        :pswitch_66
        :pswitch_6b
    .end packed-switch
.end method
