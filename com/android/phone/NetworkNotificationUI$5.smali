.class Lcom/android/phone/NetworkNotificationUI$5;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .registers 2
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$5;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$5;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/NetworkNotificationUI;->mDataConnectSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$2502(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 707
    return-void
.end method
