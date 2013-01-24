.class Lcom/android/phone/callsettings/RejectCallWithMsg$6;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyRightRun(Landroid/view/View;)V
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
    .line 384
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 386
    const-string v0, "feature_remind_me_later_support "

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 387
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mRemindListAdapter:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    :goto_15
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    .line 392
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 393
    return-void

    .line 389
    :cond_24
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$6;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_15
.end method
