.class public Lcom/android/phone/FileWriteThread;
.super Ljava/lang/Thread;
.source "FileWriteThread.java"


# static fields
.field private static sDataConnectState:I


# instance fields
.field private fosSleepCheck:Ljava/io/FileOutputStream;

.field private mCallOff:Ljava/lang/String;

.field private mCallOn:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mThreadType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/FileWriteThread;->sDataConnectState:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .parameter "threadType"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    const-string v0, "/sys/class/sec/sec_key/"

    iput-object v0, p0, Lcom/android/phone/FileWriteThread;->mFilePath:Ljava/lang/String;

    .line 56
    const-string v0, "wakeup_keys"

    iput-object v0, p0, Lcom/android/phone/FileWriteThread;->mFileName:Ljava/lang/String;

    .line 58
    const-string v0, "102,114,115,116,172"

    iput-object v0, p0, Lcom/android/phone/FileWriteThread;->mCallOn:Ljava/lang/String;

    .line 60
    const-string v0, "102,116,172"

    iput-object v0, p0, Lcom/android/phone/FileWriteThread;->mCallOff:Ljava/lang/String;

    .line 64
    const-string v0, "FileWriteThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileWriteThread : threadType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 65
    iput p1, p0, Lcom/android/phone/FileWriteThread;->mThreadType:I

    .line 66
    return-void
.end method

.method private chargingCutOff()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 150
    const-string v6, "gsm.network.type"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, netType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 154
    .local v2, fos:Ljava/io/FileOutputStream;
    if-eqz v4, :cond_69

    .line 155
    :try_start_c
    const-string v6, "GPRS:1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    const-string v6, "EDGE:2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    const-string v6, "GSM:16"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    const-string v6, "Unexpected:16"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 157
    :cond_2c
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v6, "/sys/class/power_supply/battery/talk_gsm"

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 161
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_34
    const/16 v5, 0x30

    .line 163
    .local v5, voice_state:B
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v6, v7, :cond_46

    .line 164
    const/16 v5, 0x31

    .line 166
    :cond_46
    const-string v6, "FileWriteThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : voice_call = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 167
    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 168
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catchall {:try_start_c .. :try_end_69} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_69} :catch_81

    .line 180
    .end local v5           #voice_state:B
    :cond_69
    if-eqz v2, :cond_6e

    .line 181
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_78

    .line 186
    :cond_6e
    :goto_6e
    return-void

    .line 159
    :cond_6f
    :try_start_6f
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v6, "/sys/class/power_supply/battery/talk_wcdma"

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_a8
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_81

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_34

    .line 182
    :catch_78
    move-exception v1

    .line 183
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "FileWriteThread"

    const-string v7, "2nd close fail!!!"

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_6e

    .line 170
    .end local v1           #ex:Ljava/io/IOException;
    :catch_81
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    :try_start_82
    const-string v6, "FileWriteThread"

    const-string v7, "voice_call write error, exec orig."

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_a8

    .line 173
    if-eqz v2, :cond_8f

    .line 174
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_9e

    .line 180
    :cond_8f
    :goto_8f
    if-eqz v2, :cond_6e

    .line 181
    :try_start_91
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_6e

    .line 182
    :catch_95
    move-exception v1

    .line 183
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v6, "FileWriteThread"

    const-string v7, "2nd close fail!!!"

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_6e

    .line 175
    .end local v1           #ex:Ljava/io/IOException;
    :catch_9e
    move-exception v1

    .line 176
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_9f
    const-string v6, "FileWriteThread"

    const-string v7, "1st close fail!!!"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_a7
    .catchall {:try_start_9f .. :try_end_a7} :catchall_a8

    goto :goto_8f

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_a8
    move-exception v6

    .line 180
    if-eqz v2, :cond_ae

    .line 181
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    .line 184
    :cond_ae
    :goto_ae
    throw v6

    .line 182
    :catch_af
    move-exception v1

    .line 183
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v7, "FileWriteThread"

    const-string v8, "2nd close fail!!!"

    invoke-static {v7, v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_ae
.end method

.method private closeFile()V
    .registers 3

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_9

    .line 127
    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 133
    :cond_9
    :goto_9
    return-void

    .line 129
    :catch_a
    move-exception v0

    .line 131
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9
.end method

.method private dataChargingCutOff(Z)V
    .registers 11
    .parameter "isConnected"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 189
    sget v8, Lcom/android/phone/FileWriteThread;->sDataConnectState:I

    if-ne p1, v5, :cond_22

    move v7, v5

    :goto_7
    if-ne v8, v7, :cond_24

    .line 190
    const-string v5, "FileWriteThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataChargingCutOff : skip same state - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_21
    :goto_21
    return-void

    :cond_22
    move v7, v6

    .line 189
    goto :goto_7

    .line 194
    :cond_24
    if-ne p1, v5, :cond_5c

    :goto_26
    sput v5, Lcom/android/phone/FileWriteThread;->sDataConnectState:I

    .line 196
    const/4 v3, 0x0

    .line 198
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_29
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/power_supply/battery/data_call"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_8d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_68

    .line 199
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v0, 0x30

    .line 201
    .local v0, data_state:B
    if-eqz p1, :cond_36

    .line 202
    const/16 v0, 0x31

    .line 205
    :cond_36
    :try_start_36
    const-string v5, "FileWriteThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataChargingCutOff : data_call = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 206
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 207
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catchall {:try_start_36 .. :try_end_55} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_55} :catch_a0

    .line 218
    if-eqz v4, :cond_5a

    .line 219
    :try_start_57
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5e

    :cond_5a
    move-object v3, v4

    .line 222
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_21

    .end local v0           #data_state:B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_5c
    move v5, v6

    .line 194
    goto :goto_26

    .line 220
    .restart local v0       #data_state:B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_5e
    move-exception v2

    .line 221
    .local v2, ex:Ljava/io/IOException;
    const-string v5, "FileWriteThread"

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 223
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_21

    .line 208
    .end local v0           #data_state:B
    .end local v2           #ex:Ljava/io/IOException;
    :catch_68
    move-exception v1

    .line 209
    .local v1, e:Ljava/lang/Exception;
    :goto_69
    :try_start_69
    const-string v5, "FileWriteThread"

    const-string v6, "dataChargingCutOff : data_call write error, exec orig."

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_8d

    .line 211
    if-eqz v3, :cond_75

    .line 212
    :try_start_72
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_8d
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_84

    .line 218
    :cond_75
    :goto_75
    if-eqz v3, :cond_21

    .line 219
    :try_start_77
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_21

    .line 220
    :catch_7b
    move-exception v2

    .line 221
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v5, "FileWriteThread"

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 213
    .end local v2           #ex:Ljava/io/IOException;
    :catch_84
    move-exception v2

    .line 214
    .restart local v2       #ex:Ljava/io/IOException;
    :try_start_85
    const-string v5, "FileWriteThread"

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_8d

    goto :goto_75

    .line 217
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_8d
    move-exception v5

    .line 218
    :goto_8e
    if-eqz v3, :cond_93

    .line 219
    :try_start_90
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 222
    :cond_93
    :goto_93
    throw v5

    .line 220
    :catch_94
    move-exception v2

    .line 221
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v6, "FileWriteThread"

    const-string v7, "close fail!!!"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 217
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #data_state:B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_9d
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_8e

    .line 208
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_a0
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_69
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 251
    const-string v0, "FileWriteThread"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private openFile()V
    .registers 5

    .prologue
    .line 105
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/FileWriteThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/FileWriteThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, fileSleepCheck:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    .line 109
    :try_start_20
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2b

    .line 117
    :cond_23
    :goto_23
    :try_start_23
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2a} :catch_30

    .line 122
    :goto_2a
    return-void

    .line 110
    :catch_2b
    move-exception v0

    .line 112
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 118
    .end local v0           #e:Ljava/io/IOException;
    :catch_30
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2a
.end method

.method private writeFile(Z)V
    .registers 6
    .parameter "duringCall"

    .prologue
    .line 136
    if-eqz p1, :cond_42

    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOn:Ljava/lang/String;

    .line 137
    .local v1, value:Ljava/lang/String;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFile: value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 140
    :try_start_1a
    iget-object v2, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_41

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFile: data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/android/phone/FileWriteThread;->fosSleepCheck:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_41} :catch_45

    .line 147
    :cond_41
    :goto_41
    return-void

    .line 136
    .end local v1           #value:Ljava/lang/String;
    :cond_42
    iget-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOff:Ljava/lang/String;

    goto :goto_4

    .line 144
    .restart local v1       #value:Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41
.end method


# virtual methods
.method init()V
    .registers 3

    .prologue
    .line 69
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, platform:Ljava/lang/String;
    if-eqz v0, :cond_28

    const-string v1, "exynos4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 72
    const-string v1, "/sys/class/sec/sec_key/"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mFilePath:Ljava/lang/String;

    .line 73
    const-string v1, "wakeup_keys"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mFileName:Ljava/lang/String;

    .line 75
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 76
    const-string v1, "102,114,115,116,172,107"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOn:Ljava/lang/String;

    .line 77
    const-string v1, "102,116,172,107"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOff:Ljava/lang/String;

    .line 83
    :cond_28
    :goto_28
    if-eqz v0, :cond_42

    const-string v1, "msm8960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 84
    const-string v1, "/sys/class/sec/sec_key/"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mFilePath:Ljava/lang/String;

    .line 85
    const-string v1, "wakeup_keys"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mFileName:Ljava/lang/String;

    .line 86
    const-string v1, "114,115,172"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOn:Ljava/lang/String;

    .line 87
    const-string v1, "172"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOff:Ljava/lang/String;

    .line 89
    :cond_42
    return-void

    .line 79
    :cond_43
    const-string v1, "102,114,115,116,172"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOn:Ljava/lang/String;

    .line 80
    const-string v1, "102,116,172"

    iput-object v1, p0, Lcom/android/phone/FileWriteThread;->mCallOff:Ljava/lang/String;

    goto :goto_28
.end method

.method public run()V
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lcom/android/phone/FileWriteThread;->mThreadType:I

    packed-switch v0, :pswitch_data_1c

    .line 248
    :goto_5
    return-void

    .line 229
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/phone/FileWriteThread;->init()V

    .line 230
    invoke-virtual {p0}, Lcom/android/phone/FileWriteThread;->writeSleepCheckingFile()V

    goto :goto_5

    .line 234
    :pswitch_d
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->chargingCutOff()V

    goto :goto_5

    .line 238
    :pswitch_11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/FileWriteThread;->dataChargingCutOff(Z)V

    goto :goto_5

    .line 242
    :pswitch_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/FileWriteThread;->dataChargingCutOff(Z)V

    goto :goto_5

    .line 227
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method writeSleepCheckingFile()V
    .registers 5

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, duringCall:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 94
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->openFile()V

    .line 95
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_13

    .line 96
    const/4 v0, 0x1

    .line 98
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/phone/FileWriteThread;->writeFile(Z)V

    .line 99
    invoke-direct {p0}, Lcom/android/phone/FileWriteThread;->closeFile()V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeSleepCheckingFile end : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/FileWriteThread;->log(Ljava/lang/String;)V

    .line 102
    return-void
.end method
