.class Lcom/android/phone/AutomaticAcceptAlertDialog$2;
.super Ljava/util/TimerTask;
.source "AutomaticAcceptAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutomaticAcceptAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutomaticAcceptAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/AutomaticAcceptAlertDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/phone/AutomaticAcceptAlertDialog$2;->this$0:Lcom/android/phone/AutomaticAcceptAlertDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 76
    const-string v0, "AutomaticAcceptAlertDialog TimerTask"

    const-string v1, "TimerTask run"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/phone/AutomaticAcceptAlertDialog$2;->this$0:Lcom/android/phone/AutomaticAcceptAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/AutomaticAcceptAlertDialog;->AcceptAlertDialogInit()V

    .line 78
    return-void
.end method
