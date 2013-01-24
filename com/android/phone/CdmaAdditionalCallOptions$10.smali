.class Lcom/android/phone/CdmaAdditionalCallOptions$10;
.super Landroid/os/Handler;
.source "CdmaAdditionalCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field enhancedVoicePrivacy:Z

.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 3
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$10;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$10;->enhancedVoicePrivacy:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 741
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 752
    :goto_5
    return-void

    .line 743
    :pswitch_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$10;->enhancedVoicePrivacy:Z

    goto :goto_5

    .line 746
    :pswitch_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaAdditionalCallOptions$10;->enhancedVoicePrivacy:Z

    goto :goto_5

    .line 741
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method
