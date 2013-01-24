.class Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$7;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgRemindScreen.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;
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
    .line 531
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$7;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 534
    const/16 v0, 0x42

    if-ne p2, v0, :cond_6

    .line 535
    const/4 v0, 0x1

    .line 537
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
