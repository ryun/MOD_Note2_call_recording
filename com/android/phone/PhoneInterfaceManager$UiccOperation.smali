.class Lcom/android/phone/PhoneInterfaceManager$UiccOperation;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiccOperation"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .registers 3
    .parameter

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z

    .line 2019
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2016
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2016
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z

    return p1
.end method

.method private waitHandler()V
    .registers 3

    .prologue
    .line 2064
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_11

    .line 2066
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_0

    .line 2067
    :catch_8
    move-exception v0

    .line 2068
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2070
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_11
    return-void
.end method

.method private waitResult()V
    .registers 4

    .prologue
    .line 2076
    :goto_0
    iget-boolean v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z

    if-nez v1, :cond_18

    .line 2078
    :try_start_4
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "wait for done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_0

    .line 2080
    :catch_f
    move-exception v0

    .line 2082
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 2085
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_18
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    return-void
.end method


# virtual methods
.method declared-synchronized calculateAka([B[B)Ljava/lang/String;
    .registers 6
    .parameter "rand"
    .parameter "autn"

    .prologue
    .line 2089
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitHandler()V

    .line 2090
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2091
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->akaAuthenticate([B[BLandroid/os/Message;)V

    .line 2092
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitResult()V

    .line 2093
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v1

    .line 2089
    .end local v0           #callback:Landroid/os/Message;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized calculateGba([B[B)Landroid/os/Bundle;
    .registers 6
    .parameter "rand"
    .parameter "autn"

    .prologue
    .line 2097
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitHandler()V

    .line 2098
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2099
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V

    .line 2100
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitResult()V

    .line 2101
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v1

    .line 2097
    .end local v0           #callback:Landroid/os/Message;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized calculateNaf([B)[B
    .registers 5
    .parameter "nafId"

    .prologue
    .line 2105
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitHandler()V

    .line 2106
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2107
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/Phone;->gbaAuthenticateNaf([BLandroid/os/Message;)V

    .line 2108
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitResult()V

    .line 2109
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v1

    .line 2105
    .end local v0           #callback:Landroid/os/Message;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .registers 2

    .prologue
    .line 2032
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2033
    monitor-enter p0

    .line 2034
    :try_start_4
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    .line 2056
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2057
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 2058
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2059
    return-void

    .line 2057
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method declared-synchronized setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    .line 2113
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitHandler()V

    .line 2114
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2115
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/internal/telephony/Phone;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2117
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitResult()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 2118
    monitor-exit p0

    return-void

    .line 2113
    .end local v0           #callback:Landroid/os/Message;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method
