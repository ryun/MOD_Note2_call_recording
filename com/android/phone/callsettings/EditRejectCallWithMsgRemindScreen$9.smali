.class Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$9;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgRemindScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->createAlarmCustomizeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

.field final synthetic val$alarm_hour:Ljava/lang/String;

.field final synthetic val$alarm_min:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$9;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iput-object p2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$9;->val$alarm_min:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$9;->val$alarm_hour:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 668
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 669
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 671
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$9;->val$alarm_min:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 672
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$9;->val$alarm_hour:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 676
    :cond_16
    :goto_16
    return-void

    .line 673
    :cond_17
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$9;->val$alarm_hour:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 674
    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$9;->val$alarm_min:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16
.end method
