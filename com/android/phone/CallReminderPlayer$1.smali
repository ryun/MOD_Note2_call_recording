.class Lcom/android/phone/CallReminderPlayer$1;
.super Ljava/lang/Object;
.source "CallReminderPlayer.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallReminderPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallReminderPlayer;


# direct methods
.method constructor <init>(Lcom/android/phone/CallReminderPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/phone/CallReminderPlayer$1;->this$0:Lcom/android/phone/CallReminderPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 5
    .parameter "motionEvent"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 56
    .local v0, motion:I
    packed-switch v0, :pswitch_data_14

    .line 67
    :goto_7
    return-void

    .line 58
    :pswitch_8
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer$1;->this$0:Lcom/android/phone/CallReminderPlayer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/phone/CallReminderPlayer;->mIsMute:Z

    .line 61
    iget-object v1, p0, Lcom/android/phone/CallReminderPlayer$1;->this$0:Lcom/android/phone/CallReminderPlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallReminderPlayer;->Stop()V

    goto :goto_7

    .line 56
    nop

    :pswitch_data_14
    .packed-switch 0xa
        :pswitch_8
    .end packed-switch
.end method
