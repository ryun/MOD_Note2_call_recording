.class Lcom/android/phone/DeleteFdnContactScreen$2;
.super Ljava/lang/Object;
.source "DeleteFdnContactScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DeleteFdnContactScreen;->handleResult(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$2;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$2;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/DeleteFdnContactScreen;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$2;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/DeleteFdnContactScreen;->finish()V

    .line 221
    :cond_d
    return-void
.end method
