.class Lcom/android/phone/CallReminderWidget$Handle$3;
.super Ljava/lang/Object;
.source "CallReminderWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallReminderWidget$Handle;->tabletProcessMoveEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CallReminderWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/CallReminderWidget$Handle;)V
    .registers 2
    .parameter

    .prologue
    .line 909
    iput-object p1, p0, Lcom/android/phone/CallReminderWidget$Handle$3;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 911
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle$3;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    iget-object v0, v0, Lcom/android/phone/CallReminderWidget;->mLeftHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderWidget$Handle;->setState(I)V

    .line 912
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle$3;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    iget-object v0, v0, Lcom/android/phone/CallReminderWidget;->mRightHandle:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderWidget$Handle;->setState(I)V

    .line 913
    return-void
.end method
