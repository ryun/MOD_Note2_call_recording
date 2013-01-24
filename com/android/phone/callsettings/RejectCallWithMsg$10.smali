.class Lcom/android/phone/callsettings/RejectCallWithMsg$10;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .registers 2
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$10;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 952
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$10;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->isAdded()Z

    move-result v0

    if-nez v0, :cond_11

    .line 953
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$10;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const-string v1, "Fragment finished. We ignore updateRejectMessage."

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    .line 959
    :cond_10
    :goto_10
    return-void

    .line 956
    :cond_11
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$10;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    .line 957
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$10;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$200(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v0

    if-ne v0, v2, :cond_10

    .line 958
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$10;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_10
.end method
