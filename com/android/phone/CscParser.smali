.class public Lcom/android/phone/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# static fields
.field private static Media_Type:I

.field private static mChameleonFileName:Ljava/lang/String;

.field private static mFileName:Ljava/lang/String;

.field private static mOthersFileName:Ljava/lang/String;

.field private static sChameleonInstance:Lcom/android/phone/CscParser;

.field private static sInstance:Lcom/android/phone/CscParser;

.field private static sOthersInstance:Lcom/android/phone/CscParser;

.field private static value_uri:Landroid/net/Uri;


# instance fields
.field private mDoc:Lorg/w3c/dom/Document;

.field private mHandler:Landroid/os/Handler;

.field private mRoot:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    new-instance v0, Lcom/android/phone/CscParser;

    invoke-static {}, Lcom/android/phone/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/CscParser;->sInstance:Lcom/android/phone/CscParser;

    .line 63
    new-instance v0, Lcom/android/phone/CscParser;

    invoke-static {}, Lcom/android/phone/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/CscParser;->sOthersInstance:Lcom/android/phone/CscParser;

    .line 65
    new-instance v0, Lcom/android/phone/CscParser;

    invoke-static {}, Lcom/android/phone/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/CscParser;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/CscParser;->sChameleonInstance:Lcom/android/phone/CscParser;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CscParser;->value_uri:Landroid/net/Uri;

    .line 73
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/CscParser;->Media_Type:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "fileName"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/phone/CscParser;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-static {}, Lcom/android/phone/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 90
    sput-object p1, Lcom/android/phone/CscParser;->mFileName:Ljava/lang/String;

    .line 92
    :try_start_16
    sget-object v1, Lcom/android/phone/CscParser;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/CscParser;->update(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 118
    :cond_1b
    :goto_1b
    return-void

    .line 94
    :catch_1c
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 98
    .end local v0           #e:Ljava/lang/Exception;
    :cond_21
    invoke-static {}, Lcom/android/phone/CscParser;->getOthersPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 100
    sput-object p1, Lcom/android/phone/CscParser;->mOthersFileName:Ljava/lang/String;

    .line 102
    :try_start_2d
    sget-object v1, Lcom/android/phone/CscParser;->mOthersFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/CscParser;->update(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_1b

    .line 104
    :catch_33
    move-exception v0

    .line 105
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 108
    .end local v0           #e:Ljava/lang/Exception;
    :cond_38
    invoke-static {}, Lcom/android/phone/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 110
    sput-object p1, Lcom/android/phone/CscParser;->mChameleonFileName:Ljava/lang/String;

    .line 112
    :try_start_44
    sget-object v1, Lcom/android/phone/CscParser;->mChameleonFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/CscParser;->update(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_4a

    goto :goto_1b

    .line 114
    :catch_4a
    move-exception v0

    .line 115
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method public static getChameleonInstance(Ljava/lang/String;)Lcom/android/phone/CscParser;
    .registers 4
    .parameter "fileName"

    .prologue
    .line 171
    :try_start_0
    sget-object v1, Lcom/android/phone/CscParser;->sChameleonInstance:Lcom/android/phone/CscParser;

    invoke-static {}, Lcom/android/phone/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/CscParser;->update(Ljava/lang/String;)V

    .line 172
    sget-object v1, Lcom/android/phone/CscParser;->sChameleonInstance:Lcom/android/phone/CscParser;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 177
    :goto_b
    return-object v1

    .line 173
    :catch_c
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static getChameleonPath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 555
    const-string v0, "/carrier/chameleon.xml"

    .line 556
    .local v0, chameleon_path:Ljava/lang/String;
    return-object v0
.end method

.method public static getCustomerPath()Ljava/lang/String;
    .registers 13

    .prologue
    .line 372
    const-string v3, "/system/csc/customer.xml"

    .line 374
    .local v3, customer_path:Ljava/lang/String;
    const/4 v7, 0x0

    .line 375
    .local v7, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 381
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_4
    new-instance v6, Ljava/io/File;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v6, fe:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 387
    new-instance v8, Ljava/io/FileReader;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_18} :catch_8f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_b9

    .line 389
    .end local v7           #fr:Ljava/io/FileReader;
    .local v8, fr:Ljava/io/FileReader;
    :try_start_18
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_df
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_ed
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_e6

    .line 391
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, sales_code:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/csc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v4, de:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v10, "/system/csc/customer.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v2, ce:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_48

    .line 401
    const-string v3, "/system/csc/customer.xml"

    .line 411
    :cond_48
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "customer_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_1d .. :try_end_60} :catchall_e2
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_60} :catch_f0
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_60} :catch_e9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 439
    .end local v2           #ce:Ljava/io/File;
    .end local v4           #de:Ljava/io/File;
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v9           #sales_code:Ljava/lang/String;
    .restart local v7       #fr:Ljava/io/FileReader;
    :goto_62
    if-eqz v0, :cond_67

    .line 441
    :try_start_64
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_d3

    .line 447
    :cond_67
    :goto_67
    if-eqz v7, :cond_6c

    .line 449
    :try_start_69
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_d5

    .line 459
    .end local v6           #fe:Ljava/io/File;
    :cond_6c
    :goto_6c
    return-object v3

    .line 419
    .restart local v6       #fe:Ljava/io/File;
    :cond_6d
    :try_start_6d
    const-string v10, "CscParser"

    const-string v11, "mps_code.dat does not exist"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v3, "/system/csc/customer.xml"

    .line 423
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "customer_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_6d .. :try_end_8e} :catchall_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_8e} :catch_8f
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_8e} :catch_b9

    goto :goto_62

    .line 429
    .end local v6           #fe:Ljava/io/File;
    :catch_8f
    move-exception v5

    .line 430
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_90
    :try_start_90
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File not Found exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_90 .. :try_end_ac} :catchall_c7

    .line 439
    if-eqz v0, :cond_b1

    .line 441
    :try_start_ae
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_d7

    .line 447
    :cond_b1
    :goto_b1
    if-eqz v7, :cond_6c

    .line 449
    :try_start_b3
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_6c

    .line 453
    :catch_b7
    move-exception v10

    goto :goto_6c

    .line 431
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_b9
    move-exception v10

    .line 439
    :goto_ba
    if-eqz v0, :cond_bf

    .line 441
    :try_start_bc
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_d9

    .line 447
    :cond_bf
    :goto_bf
    if-eqz v7, :cond_6c

    .line 449
    :try_start_c1
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_6c

    .line 453
    :catch_c5
    move-exception v10

    goto :goto_6c

    .line 438
    :catchall_c7
    move-exception v10

    .line 439
    :goto_c8
    if-eqz v0, :cond_cd

    .line 441
    :try_start_ca
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_db

    .line 447
    :cond_cd
    :goto_cd
    if-eqz v7, :cond_d2

    .line 449
    :try_start_cf
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_dd

    .line 455
    :cond_d2
    :goto_d2
    throw v10

    .line 442
    .restart local v6       #fe:Ljava/io/File;
    :catch_d3
    move-exception v10

    goto :goto_67

    .line 453
    :catch_d5
    move-exception v10

    goto :goto_6c

    .line 442
    .end local v6           #fe:Ljava/io/File;
    .restart local v5       #e:Ljava/io/FileNotFoundException;
    :catch_d7
    move-exception v10

    goto :goto_b1

    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_d9
    move-exception v10

    goto :goto_bf

    :catch_db
    move-exception v11

    goto :goto_cd

    .line 453
    :catch_dd
    move-exception v11

    goto :goto_d2

    .line 438
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fe:Ljava/io/File;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catchall_df
    move-exception v10

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_c8

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catchall_e2
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_c8

    .line 431
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_e6
    move-exception v10

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_ba

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_e9
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_ba

    .line 429
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_ed
    move-exception v5

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_90

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_f0
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_90
.end method

.method public static getOthersPath()Ljava/lang/String;
    .registers 13

    .prologue
    .line 465
    const-string v8, "/system/csc/others.xml"

    .line 467
    .local v8, others_path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 468
    .local v6, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 474
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_4
    new-instance v5, Ljava/io/File;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .local v5, fe:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 480
    new-instance v7, Ljava/io/FileReader;

    const-string v10, "/efs/imei/mps_code.dat"

    invoke-direct {v7, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_18} :catch_8f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_b9

    .line 482
    .end local v6           #fr:Ljava/io/FileReader;
    .local v7, fr:Ljava/io/FileReader;
    :try_start_18
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_df
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_ed
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_e6

    .line 484
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 486
    .local v9, sales_code:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/csc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .local v3, de:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v10, "/system/csc/others.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 490
    .local v2, ce:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_48

    .line 494
    const-string v8, "/system/csc/others.xml"

    .line 502
    :cond_48
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "others_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_1d .. :try_end_60} :catchall_e2
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_60} :catch_f0
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_60} :catch_e9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .line 530
    .end local v2           #ce:Ljava/io/File;
    .end local v3           #de:Ljava/io/File;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v9           #sales_code:Ljava/lang/String;
    .restart local v6       #fr:Ljava/io/FileReader;
    :goto_62
    if-eqz v0, :cond_67

    .line 532
    :try_start_64
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_d3

    .line 538
    :cond_67
    :goto_67
    if-eqz v6, :cond_6c

    .line 540
    :try_start_69
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_d5

    .line 550
    .end local v5           #fe:Ljava/io/File;
    :cond_6c
    :goto_6c
    return-object v8

    .line 510
    .restart local v5       #fe:Ljava/io/File;
    :cond_6d
    :try_start_6d
    const-string v10, "CscParser"

    const-string v11, "mps_code.dat does not exist"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v8, "/system/csc/others.xml"

    .line 514
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "others_path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_6d .. :try_end_8e} :catchall_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_8e} :catch_8f
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_8e} :catch_b9

    goto :goto_62

    .line 520
    .end local v5           #fe:Ljava/io/File;
    :catch_8f
    move-exception v4

    .line 521
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_90
    :try_start_90
    const-string v10, "CscParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File not Found exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_90 .. :try_end_ac} :catchall_c7

    .line 530
    if-eqz v0, :cond_b1

    .line 532
    :try_start_ae
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_d7

    .line 538
    :cond_b1
    :goto_b1
    if-eqz v6, :cond_6c

    .line 540
    :try_start_b3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_6c

    .line 544
    :catch_b7
    move-exception v10

    goto :goto_6c

    .line 522
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_b9
    move-exception v10

    .line 530
    :goto_ba
    if-eqz v0, :cond_bf

    .line 532
    :try_start_bc
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_d9

    .line 538
    :cond_bf
    :goto_bf
    if-eqz v6, :cond_6c

    .line 540
    :try_start_c1
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_6c

    .line 544
    :catch_c5
    move-exception v10

    goto :goto_6c

    .line 529
    :catchall_c7
    move-exception v10

    .line 530
    :goto_c8
    if-eqz v0, :cond_cd

    .line 532
    :try_start_ca
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_db

    .line 538
    :cond_cd
    :goto_cd
    if-eqz v6, :cond_d2

    .line 540
    :try_start_cf
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_dd

    .line 546
    :cond_d2
    :goto_d2
    throw v10

    .line 533
    .restart local v5       #fe:Ljava/io/File;
    :catch_d3
    move-exception v10

    goto :goto_67

    .line 544
    :catch_d5
    move-exception v10

    goto :goto_6c

    .line 533
    .end local v5           #fe:Ljava/io/File;
    .restart local v4       #e:Ljava/io/FileNotFoundException;
    :catch_d7
    move-exception v10

    goto :goto_b1

    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_d9
    move-exception v10

    goto :goto_bf

    :catch_db
    move-exception v11

    goto :goto_cd

    .line 544
    :catch_dd
    move-exception v11

    goto :goto_d2

    .line 529
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fe:Ljava/io/File;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_df
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_c8

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_e2
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_c8

    .line 522
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_e6
    move-exception v10

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_ba

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_e9
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_ba

    .line 520
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_ed
    move-exception v4

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_90

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_f0
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_90
.end method

.method private update(Ljava/lang/String;)V
    .registers 8
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 184
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 186
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v2, fe:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 191
    const-string v3, "CscParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileName + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CscParser;->mDoc:Lorg/w3c/dom/Document;

    .line 193
    iget-object v3, p0, Lcom/android/phone/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 198
    :goto_3e
    return-void

    .line 196
    :cond_3f
    const-string v3, "CscParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): file not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "path"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/phone/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 204
    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_f

    .line 206
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 210
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 215
    if-nez p1, :cond_5

    move-object v0, v3

    .line 236
    :cond_4
    :goto_4
    return-object v0

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 220
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_e
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 224
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, token:Ljava/lang/String;
    if-nez v0, :cond_1c

    move-object v0, v3

    .line 228
    goto :goto_4

    .line 232
    :cond_1c
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 234
    goto :goto_e
.end method

.method public search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 9
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 242
    if-nez p1, :cond_5

    move-object v0, v4

    .line 265
    :cond_4
    :goto_4
    return-object v0

    .line 245
    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 247
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_23

    .line 249
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 251
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    if-ge v2, v3, :cond_23

    .line 253
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 255
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_23
    move-object v0, v4

    .line 265
    goto :goto_4
.end method
