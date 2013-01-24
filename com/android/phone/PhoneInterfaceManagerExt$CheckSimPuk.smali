.class Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .registers 3
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 607
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 598
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mDone:Z

    .line 599
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mResult:Z

    .line 608
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 609
    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mResult:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "pin"
    .parameter "newPin"

    .prologue
    .line 640
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v2, :cond_15

    .line 642
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 643
    :catch_9
    move-exception v1

    .line 644
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_1

    .line 640
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v2

    monitor-exit p0

    throw v2

    .line 647
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 649
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 651
    :goto_22
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mDone:Z
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_12

    if-nez v2, :cond_3a

    .line 653
    :try_start_26
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_22

    .line 655
    :catch_31
    move-exception v1

    .line 657
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_22

    .line 660
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_3a
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "done"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mResult:Z
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_12

    monitor-exit p0

    return v2
.end method

.method public run()V
    .registers 2

    .prologue
    .line 613
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 614
    monitor-enter p0

    .line 615
    :try_start_4
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->mHandler:Landroid/os/Handler;

    .line 633
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 634
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 635
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 636
    return-void

    .line 634
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
