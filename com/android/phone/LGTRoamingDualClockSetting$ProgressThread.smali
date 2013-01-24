.class Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;
.super Ljava/lang/Thread;
.source "LGTRoamingDualClockSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTRoamingDualClockSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressThread"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mState:I

.field final synthetic this$0:Lcom/android/phone/LGTRoamingDualClockSetting;

.field total:I


# direct methods
.method constructor <init>(Lcom/android/phone/LGTRoamingDualClockSetting;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "h"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->this$0:Lcom/android/phone/LGTRoamingDualClockSetting;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mHandler:Landroid/os/Handler;

    .line 152
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 155
    iput v4, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mState:I

    .line 156
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->total:I

    .line 157
    :goto_6
    iget v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mState:I

    if-ne v2, v4, :cond_32

    .line 159
    const-wide/16 v2, 0x64

    :try_start_c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_30

    .line 163
    :goto_f
    iget-object v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 164
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "total"

    iget v3, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->total:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 167
    iget-object v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    iget v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->total:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->total:I

    goto :goto_6

    .line 160
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :catch_30
    move-exception v2

    goto :goto_f

    .line 170
    :cond_32
    return-void
.end method

.method public setState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 173
    iput p1, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mState:I

    .line 174
    return-void
.end method
