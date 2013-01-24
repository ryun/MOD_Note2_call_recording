.class Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommToRILThread"
.end annotation


# instance fields
.field private fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field mLoop:Landroid/os/Looper;

.field private mResult:Ljava/lang/String;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 1084
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1071
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1072
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->phone:Lcom/android/internal/telephony/Phone;

    .line 1074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z

    .line 1075
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;

    .line 1085
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "CommToRILThread(Phone) .. created !"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->phone:Lcom/android/internal/telephony/Phone;

    .line 1087
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1088
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V
    .registers 5
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 1090
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1071
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1072
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->phone:Lcom/android/internal/telephony/Phone;

    .line 1074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z

    .line 1075
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;

    .line 1091
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "CommToRILThread(FactoryPhone) .. created !"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1093
    iput-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->phone:Lcom/android/internal/telephony/Phone;

    .line 1094
    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;)Lcom/samsung/android/sec_platform_library/FactoryPhone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1069
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized getInfo(II)Ljava/lang/String;
    .registers 10
    .parameter "main"
    .parameter "sub"

    .prologue
    .line 1142
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mHandler:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v5, :cond_15

    .line 1144
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 1145
    :catch_9
    move-exception v2

    .line 1146
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_1

    .line 1142
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1150
    :cond_15
    const/4 v5, 0x0

    :try_start_16
    iput-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z

    .line 1152
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1153
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_12

    .line 1156
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 1157
    .local v3, fileSize:I
    :try_start_23
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1158
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1159
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_65

    .line 1167
    if-eqz v0, :cond_32

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1168
    :cond_32
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_12
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_9e

    .line 1173
    :cond_37
    :goto_37
    :try_start_37
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1174
    .local v4, response:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v5, :cond_86

    .line 1175
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1179
    :goto_4b
    iget-boolean v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mDone:Z
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_12

    if-nez v5, :cond_90

    .line 1181
    :try_start_4f
    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "CommToRILThread ..wait for done"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const-wide/16 v5, 0x1388

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_5b} :catch_5c

    goto :goto_4b

    .line 1183
    :catch_5c
    move-exception v2

    .line 1185
    .restart local v2       #e:Ljava/lang/InterruptedException;
    :try_start_5d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_12

    goto :goto_4b

    .line 1161
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v4           #response:Landroid/os/Message;
    :catch_65
    move-exception v2

    .line 1163
    .local v2, e:Ljava/io/IOException;
    :try_start_66
    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "IOException in CommToRILThread"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_7a

    .line 1164
    const/4 v5, 0x0

    .line 1167
    if-eqz v0, :cond_73

    :try_start_70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1168
    :cond_73
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_12
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_78} :catch_9c

    .line 1189
    .end local v2           #e:Ljava/io/IOException;
    :cond_78
    :goto_78
    monitor-exit p0

    return-object v5

    .line 1166
    :catchall_7a
    move-exception v5

    .line 1167
    if-eqz v0, :cond_80

    :try_start_7d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1168
    :cond_80
    if-eqz v1, :cond_85

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_12
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_85} :catch_9a

    .line 1170
    :cond_85
    :goto_85
    :try_start_85
    throw v5

    .line 1177
    .restart local v4       #response:Landroid/os/Message;
    :cond_86
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->fphone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_4b

    .line 1188
    :cond_90
    const-string v5, "PhoneInterfaceManagerExt"

    const-string v6, "CommToRILThread .. done"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mResult:Ljava/lang/String;
    :try_end_99
    .catchall {:try_start_85 .. :try_end_99} :catchall_12

    goto :goto_78

    .line 1169
    .end local v4           #response:Landroid/os/Message;
    :catch_9a
    move-exception v6

    goto :goto_85

    .restart local v2       #e:Ljava/io/IOException;
    :catch_9c
    move-exception v6

    goto :goto_78

    .end local v2           #e:Ljava/io/IOException;
    :catch_9e
    move-exception v5

    goto :goto_37
.end method

.method public run()V
    .registers 2

    .prologue
    .line 1098
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1099
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mLoop:Landroid/os/Looper;

    .line 1100
    monitor-enter p0

    .line 1101
    :try_start_a
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->mHandler:Landroid/os/Handler;

    .line 1136
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1137
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    .line 1138
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1139
    return-void

    .line 1137
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method
