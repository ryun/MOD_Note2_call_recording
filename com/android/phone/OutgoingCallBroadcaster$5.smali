.class Lcom/android/phone/OutgoingCallBroadcaster$5;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 1630
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$5;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$5;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->removeDialog(I)V

    .line 1633
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$5;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 1634
    return-void
.end method
