.class Lcom/android/phone/NetworkNotificationUI$14;
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
    .line 1365
    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$14;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 1367
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$502(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1368
    return-void
.end method
