.class Lcom/android/phone/IncomingCallWidget$Handle$4;
.super Ljava/lang/Object;
.source "IncomingCallWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingCallWidget$Handle;->tabletProcessMoveEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .registers 2
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$4;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 929
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$4;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget;->mLeftHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 930
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$4;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget;->mRightHandle:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget$Handle;->setState(I)V

    .line 931
    return-void
.end method
