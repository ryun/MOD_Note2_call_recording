.class Lcom/android/phone/IncomingCallWidget$Handle$1;
.super Landroid/widget/FrameLayout;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingCallWidget$Handle;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$1;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$1;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v0, v0, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    .line 392
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 393
    packed-switch p1, :pswitch_data_2c

    .line 398
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$1;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallWidget$Handle;->hideArrow()V
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->access$100(Lcom/android/phone/IncomingCallWidget$Handle;)V

    .line 401
    :goto_25
    return-void

    .line 395
    :pswitch_26
    iget-object v0, p0, Lcom/android/phone/IncomingCallWidget$Handle$1;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    #calls: Lcom/android/phone/IncomingCallWidget$Handle;->showArrow()V
    invoke-static {v0}, Lcom/android/phone/IncomingCallWidget$Handle;->access$000(Lcom/android/phone/IncomingCallWidget$Handle;)V

    goto :goto_25

    .line 393
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method
