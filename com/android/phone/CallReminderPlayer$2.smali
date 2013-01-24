.class Lcom/android/phone/CallReminderPlayer$2;
.super Ljava/lang/Object;
.source "CallReminderPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallReminderPlayer;->beepSoundPlay()V
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
    .line 364
    iput-object p1, p0, Lcom/android/phone/CallReminderPlayer$2;->this$0:Lcom/android/phone/CallReminderPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 366
    const-string v0, "CallReminderPlayer"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 368
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 369
    iget-object v0, p0, Lcom/android/phone/CallReminderPlayer$2;->this$0:Lcom/android/phone/CallReminderPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/CallReminderPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/phone/CallReminderPlayer;->access$102(Lcom/android/phone/CallReminderPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 370
    const/4 v0, 0x1

    return v0
.end method
