.class Lcom/android/phone/RejectCallWithMsg$1;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsg;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsg;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsg;->access$000(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 108
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsg;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    #getter for: Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsg;->access$000(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "exit_on_sent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-virtual {v1, v0}, Lcom/android/phone/RejectCallWithMsg;->startActivity(Landroid/content/Intent;)V

    .line 112
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg$1;->this$0:Lcom/android/phone/RejectCallWithMsg;

    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsg;->finish()V

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    :cond_37
    return-void
.end method
