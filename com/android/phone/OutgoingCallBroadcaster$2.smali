.class Lcom/android/phone/OutgoingCallBroadcaster$2;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 1583
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$2;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1587
    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    const/4 v0, 0x5

    if-ne p2, v0, :cond_8

    .line 1588
    :cond_6
    const/4 v0, 0x1

    .line 1590
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
