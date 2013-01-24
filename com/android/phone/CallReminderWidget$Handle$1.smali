.class Lcom/android/phone/CallReminderWidget$Handle$1;
.super Landroid/widget/FrameLayout;
.source "CallReminderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallReminderWidget$Handle;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CallReminderWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/CallReminderWidget$Handle;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/phone/CallReminderWidget$Handle$1;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle$1;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/CallReminderWidget$Handle;->this$0:Lcom/android/phone/CallReminderWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallReminderWidget;->log(Ljava/lang/String;)V

    .line 390
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 391
    packed-switch p1, :pswitch_data_2c

    .line 396
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle$1;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    #calls: Lcom/android/phone/CallReminderWidget$Handle;->hideArrow()V
    invoke-static {v0}, Lcom/android/phone/CallReminderWidget$Handle;->access$200(Lcom/android/phone/CallReminderWidget$Handle;)V

    .line 399
    :goto_25
    return-void

    .line 393
    :pswitch_26
    iget-object v0, p0, Lcom/android/phone/CallReminderWidget$Handle$1;->this$1:Lcom/android/phone/CallReminderWidget$Handle;

    #calls: Lcom/android/phone/CallReminderWidget$Handle;->showArrow()V
    invoke-static {v0}, Lcom/android/phone/CallReminderWidget$Handle;->access$100(Lcom/android/phone/CallReminderWidget$Handle;)V

    goto :goto_25

    .line 391
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method
