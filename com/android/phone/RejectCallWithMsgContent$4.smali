.class Lcom/android/phone/RejectCallWithMsgContent$4;
.super Ljava/lang/Object;
.source "RejectCallWithMsgContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectCallWithMsgContent;->onFinishInflate()V
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
    .line 249
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$4;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent$4;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #calls: Lcom/android/phone/RejectCallWithMsgContent;->RemindmeDialog()V
    invoke-static {v0}, Lcom/android/phone/RejectCallWithMsgContent;->access$600(Lcom/android/phone/RejectCallWithMsgContent;)V

    .line 253
    return-void
.end method
