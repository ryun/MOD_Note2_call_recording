.class Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$6;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgRemindScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->afterTextChanged(Landroid/text/Editable;)V
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
    .line 515
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$6;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen$6;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgRemindScreen;->istoastshowing:Z

    .line 518
    return-void
.end method
