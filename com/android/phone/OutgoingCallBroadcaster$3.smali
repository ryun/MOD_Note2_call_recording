.class Lcom/android/phone/OutgoingCallBroadcaster$3;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .registers 2
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$3;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$3;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$800(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1579
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$3;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$3;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$900(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$3;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->roamingNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$800(Lcom/android/phone/OutgoingCallBroadcaster;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$1000(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1582
    :goto_19
    return-void

    .line 1581
    :cond_1a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$3;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    #getter for: Lcom/android/phone/OutgoingCallBroadcaster;->roamingIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$900(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    goto :goto_19
.end method
