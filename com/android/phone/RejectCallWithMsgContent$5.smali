.class Lcom/android/phone/RejectCallWithMsgContent$5;
.super Ljava/lang/Object;
.source "RejectCallWithMsgContent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsgContent;->RemindmeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;)V
    .registers 2
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$5;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 407
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 409
    return-void
.end method
