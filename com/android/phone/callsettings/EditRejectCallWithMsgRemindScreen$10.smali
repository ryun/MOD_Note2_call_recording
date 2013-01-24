.class Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$10;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgRemindScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$10;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 734
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 735
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$10;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$10;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindType:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$500(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$10;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemindTime:I
    invoke-static {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$400(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$302(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)I

    .line 736
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$10;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$300(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 737
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$10;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    const/4 v1, 0x6

    #setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$302(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)I

    .line 739
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$10;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$10;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    #getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->mRemind_index:I
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$300(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;)I

    move-result v1

    #calls: Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->updateRemind(I)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->access$600(Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;I)V

    .line 740
    return-void
.end method
