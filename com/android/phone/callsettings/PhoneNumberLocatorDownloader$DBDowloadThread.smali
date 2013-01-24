.class Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;
.super Ljava/lang/Thread;
.source "PhoneNumberLocatorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DBDowloadThread"
.end annotation


# instance fields
.field private client:Landroid/net/http/AndroidHttpClient;

.field private isCanceledByUser:Z

.field private mBinTmpFile:Ljava/lang/String;

.field mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

.field private mVersionTmpFile:Ljava/lang/String;

.field private request:Lorg/apache/http/client/methods/HttpGet;

.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 364
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 365
    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 366
    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    return-void
.end method

.method private downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;
    .registers 49
    .parameter "tmpFile"
    .parameter "httpPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v42, v0

    if-eqz v42, :cond_a

    .line 387
    const/4 v14, 0x0

    .line 668
    :cond_9
    :goto_9
    return-object v14

    .line 389
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    const-string v43, "CDDownloadThread : run : DownloadThread Started"

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 390
    move-object/from16 v30, p2

    .line 391
    .local v30, newUrl:Ljava/lang/String;
    const/16 v29, 0x0

    .line 392
    .local v29, newUri:Ljava/lang/String;
    move-object/from16 v10, p1

    .line 393
    .local v10, currentTempFilePath:Ljava/lang/String;
    new-instance v14, Lcom/android/phone/callsettings/DownloadFileInfo;

    invoke-direct {v14}, Lcom/android/phone/callsettings/DownloadFileInfo;-><init>()V

    .line 394
    .local v14, fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    const/16 v18, 0x0

    .line 395
    .local v18, fos:Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 396
    .local v9, countRetry:Z
    const/16 v34, 0x0

    .line 397
    .local v34, redirectCount:I
    const-string v28, "bin"

    .line 398
    .local v28, mimeType:Ljava/lang/String;
    const/16 v37, 0x0

    .line 399
    .local v37, stream:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 400
    .local v4, Redirected:Z
    const/16 v17, 0x0

    .line 401
    .local v17, finalStatus:I
    const/4 v7, 0x0

    .line 402
    .local v7, bytesSoFar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    const-string v43, "before start create temp file"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    const-string v43, "after start create temp file"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 405
    const-wide/16 v15, 0x0

    .line 406
    .local v15, fileSize:J
    iput-object v10, v14, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    .line 408
    if-eqz p1, :cond_58

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 410
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "downloadFileByWebkit currentTempFilePath = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 412
    const/4 v8, 0x0

    .line 413
    .local v8, continuingDownload:Z
    const/16 v19, 0x0

    .line 414
    .local v19, headerAcceptRanges:Ljava/lang/String;
    const/16 v20, 0x0

    .line 415
    .local v20, headerContentDisposition:Ljava/lang/String;
    const/16 v21, 0x0

    .line 416
    .local v21, headerContentLength:Ljava/lang/String;
    const/16 v22, 0x0

    .line 417
    .local v22, headerContentLocation:Ljava/lang/String;
    const/16 v25, 0x0

    .line 418
    .local v25, headerTransferEncoding:Ljava/lang/String;
    const/16 v24, 0x0

    .line 419
    .local v24, headerOmaSeperateDelivery:Ljava/lang/String;
    const/16 v23, 0x0

    .line 421
    .local v23, headerETag:Ljava/lang/String;
    const v42, 0x19000

    :try_start_88
    move/from16 v0, v42

    new-array v11, v0, [B

    .line 423
    .local v11, data:[B
    move v5, v7

    .line 425
    .local v5, bytesNotified:I
    const-wide/16 v40, 0x0

    .line 427
    .local v40, timeLastNotification:J
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    const-string v43, "CDDownloadThread : use AndroidHttpClient : "

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run : Actual URL: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 433
    new-instance v42, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run :Final URL "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 437
    const/16 v27, 0x0

    .line 438
    .local v27, isProxySet:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v32

    .line 439
    .local v32, proxyHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_112
    .catchall {:try_start_88 .. :try_end_112} :catchall_37b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_112} :catch_2d3

    move-result v33

    .line 441
    .local v33, proxyPort:I
    if-eqz v32, :cond_11f

    const/16 v42, -0x1

    move/from16 v0, v42

    move/from16 v1, v33

    if-eq v0, v1, :cond_11f

    .line 442
    const/16 v27, 0x1

    .line 447
    :cond_11f
    :try_start_11f
    new-instance v26, Ljava/net/URI;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 448
    .local v26, hostUrl:Ljava/net/URI;
    new-instance v39, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->getPort()I

    move-result v43

    const-string v44, "http"

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    move/from16 v2, v43

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_13f
    .catchall {:try_start_11f .. :try_end_13f} :catchall_37b
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_13f} :catch_214

    .line 457
    .local v39, target:Lorg/apache/http/HttpHost;
    :try_start_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    .line 458
    .local v31, params:Lorg/apache/http/params/HttpParams;
    const-string v42, "http.socket.timeout"

    const/16 v43, 0x2710

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 460
    const-string v42, "http.connection.timeout"

    const/16 v43, 0x2710

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 463
    if-eqz v27, :cond_1a5

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread :Set  Proxy Host:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "  ProxyPort :"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 465
    new-instance v42, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    :try_end_1a5
    .catchall {:try_start_13f .. :try_end_1a5} :catchall_37b
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_1a5} :catch_2d3

    .line 474
    :cond_1a5
    if-eqz v27, :cond_285

    .line 475
    :try_start_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1bc
    .catchall {:try_start_1a7 .. :try_end_1bc} :catchall_37b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a7 .. :try_end_1bc} :catch_297
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1bc} :catch_33f

    move-result-object v35

    .line 490
    .local v35, response:Lorg/apache/http/HttpResponse;
    :goto_1bd
    :try_start_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    const-string v43, "http response"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v42, v0
    :try_end_1ce
    .catchall {:try_start_1bd .. :try_end_1ce} :catchall_37b
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1ce} :catch_2d3

    if-eqz v42, :cond_39b

    .line 493
    const/16 v17, 0x190

    .line 494
    const/4 v14, 0x0

    .line 651
    .end local v14           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1ec

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 653
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 656
    :cond_1ec
    if-eqz v37, :cond_9

    .line 657
    :try_start_1ee
    throw v37
    :try_end_1ef
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1ef} :catch_1f1

    goto/16 :goto_9

    .line 659
    :catch_1f1
    move-exception v13

    .line 660
    .local v13, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 450
    .end local v13           #ex:Ljava/io/IOException;
    .end local v26           #hostUrl:Ljava/net/URI;
    .end local v31           #params:Lorg/apache/http/params/HttpParams;
    .end local v35           #response:Lorg/apache/http/HttpResponse;
    .end local v39           #target:Lorg/apache/http/HttpHost;
    .restart local v14       #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    :catch_214
    move-exception v13

    .line 451
    .local v13, ex:Ljava/lang/Exception;
    :try_start_215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run : URISyntaxException  Uri :  "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    :try_end_243
    .catchall {:try_start_215 .. :try_end_243} :catchall_37b
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_243} :catch_2d3

    .line 452
    const/16 v17, 0x190

    .line 651
    .end local v13           #ex:Ljava/lang/Exception;
    :goto_245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    if-eqz v42, :cond_25e

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 653
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 656
    :cond_25e
    if-eqz v37, :cond_263

    .line 657
    :try_start_260
    invoke-virtual/range {v37 .. v37}, Ljava/io/FileOutputStream;->close()V
    :try_end_263
    .catch Ljava/io/IOException; {:try_start_260 .. :try_end_263} :catch_57a

    .line 663
    .end local v5           #bytesNotified:I
    .end local v11           #data:[B
    .end local v27           #isProxySet:Z
    .end local v32           #proxyHost:Ljava/lang/String;
    .end local v33           #proxyPort:I
    .end local v40           #timeLastNotification:J
    :cond_263
    :goto_263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    const-string v43, "CDDownloadThread : run : Exiting DownloadThread"

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 664
    int-to-long v0, v7

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    iput-wide v0, v14, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    .line 665
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    iput-wide v0, v14, Lcom/android/phone/callsettings/DownloadFileInfo;->startmarker:J

    .line 666
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    iput-wide v0, v14, Lcom/android/phone/callsettings/DownloadFileInfo;->endmarker:J

    goto/16 :goto_9

    .line 477
    .restart local v5       #bytesNotified:I
    .restart local v11       #data:[B
    .restart local v26       #hostUrl:Ljava/net/URI;
    .restart local v27       #isProxySet:Z
    .restart local v31       #params:Lorg/apache/http/params/HttpParams;
    .restart local v32       #proxyHost:Ljava/lang/String;
    .restart local v33       #proxyPort:I
    .restart local v39       #target:Lorg/apache/http/HttpHost;
    .restart local v40       #timeLastNotification:J
    :cond_285
    :try_start_285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_294
    .catchall {:try_start_285 .. :try_end_294} :catchall_37b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_285 .. :try_end_294} :catch_297
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_294} :catch_33f

    move-result-object v35

    .restart local v35       #response:Lorg/apache/http/HttpResponse;
    goto/16 :goto_1bd

    .line 479
    .end local v35           #response:Lorg/apache/http/HttpResponse;
    :catch_297
    move-exception v13

    .line 480
    .local v13, ex:Ljava/lang/IllegalArgumentException;
    :try_start_298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run : Illegal Arg exception trying to execute request for "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 481
    const/16 v17, 0x190

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2d1
    .catchall {:try_start_298 .. :try_end_2d1} :catchall_37b
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_2d1} :catch_2d3

    goto/16 :goto_245

    .line 648
    .end local v5           #bytesNotified:I
    .end local v11           #data:[B
    .end local v13           #ex:Ljava/lang/IllegalArgumentException;
    .end local v26           #hostUrl:Ljava/net/URI;
    .end local v27           #isProxySet:Z
    .end local v31           #params:Lorg/apache/http/params/HttpParams;
    .end local v32           #proxyHost:Ljava/lang/String;
    .end local v33           #proxyPort:I
    .end local v39           #target:Lorg/apache/http/HttpHost;
    .end local v40           #timeLastNotification:J
    :catch_2d3
    move-exception v13

    .line 649
    .local v13, ex:Ljava/lang/Exception;
    :goto_2d4
    :try_start_2d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run : Exception for "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    :try_end_2fc
    .catchall {:try_start_2d4 .. :try_end_2fc} :catchall_37b

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    if-eqz v42, :cond_315

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 653
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 656
    :cond_315
    if-eqz v37, :cond_263

    .line 657
    :try_start_317
    invoke-virtual/range {v37 .. v37}, Ljava/io/FileOutputStream;->close()V
    :try_end_31a
    .catch Ljava/io/IOException; {:try_start_317 .. :try_end_31a} :catch_31c

    goto/16 :goto_263

    .line 659
    :catch_31c
    move-exception v13

    .line 660
    .local v13, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_263

    .line 484
    .end local v13           #ex:Ljava/io/IOException;
    .restart local v5       #bytesNotified:I
    .restart local v11       #data:[B
    .restart local v26       #hostUrl:Ljava/net/URI;
    .restart local v27       #isProxySet:Z
    .restart local v31       #params:Lorg/apache/http/params/HttpParams;
    .restart local v32       #proxyHost:Ljava/lang/String;
    .restart local v33       #proxyPort:I
    .restart local v39       #target:Lorg/apache/http/HttpHost;
    .restart local v40       #timeLastNotification:J
    :catch_33f
    move-exception v13

    .line 485
    .local v13, ex:Ljava/lang/Exception;
    :try_start_340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run : IOException trying to execute request for "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 486
    const/16 v17, 0x190

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_379
    .catchall {:try_start_340 .. :try_end_379} :catchall_37b
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_379} :catch_2d3

    goto/16 :goto_245

    .line 651
    .end local v5           #bytesNotified:I
    .end local v11           #data:[B
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v26           #hostUrl:Ljava/net/URI;
    .end local v27           #isProxySet:Z
    .end local v31           #params:Lorg/apache/http/params/HttpParams;
    .end local v32           #proxyHost:Ljava/lang/String;
    .end local v33           #proxyPort:I
    .end local v39           #target:Lorg/apache/http/HttpHost;
    .end local v40           #timeLastNotification:J
    :catchall_37b
    move-exception v42

    :goto_37c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    if-eqz v43, :cond_395

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 653
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 656
    :cond_395
    if-eqz v37, :cond_39a

    .line 657
    :try_start_397
    invoke-virtual/range {v37 .. v37}, Ljava/io/FileOutputStream;->close()V
    :try_end_39a
    .catch Ljava/io/IOException; {:try_start_397 .. :try_end_39a} :catch_59d

    .line 661
    :cond_39a
    :goto_39a
    throw v42

    .line 500
    .restart local v5       #bytesNotified:I
    .restart local v11       #data:[B
    .restart local v26       #hostUrl:Ljava/net/URI;
    .restart local v27       #isProxySet:Z
    .restart local v31       #params:Lorg/apache/http/params/HttpParams;
    .restart local v32       #proxyHost:Ljava/lang/String;
    .restart local v33       #proxyPort:I
    .restart local v35       #response:Lorg/apache/http/HttpResponse;
    .restart local v39       #target:Lorg/apache/http/HttpHost;
    .restart local v40       #timeLastNotification:J
    :cond_39b
    :try_start_39b
    invoke-interface/range {v35 .. v35}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v36

    .line 504
    .local v36, statusCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run : received response for "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_3c3
    .catchall {:try_start_39b .. :try_end_3c3} :catchall_37b
    .catch Ljava/lang/Exception; {:try_start_39b .. :try_end_3c3} :catch_2d3

    .line 579
    :try_start_3c3
    invoke-interface/range {v35 .. v35}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_3ca
    .catchall {:try_start_3c3 .. :try_end_3ca} :catchall_37b
    .catch Ljava/io/IOException; {:try_start_3c3 .. :try_end_3ca} :catch_472
    .catch Ljava/lang/Exception; {:try_start_3c3 .. :try_end_3ca} :catch_2d3

    move-result-object v12

    .line 585
    .local v12, entityStream:Ljava/io/InputStream;
    :try_start_3cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    const-string v43, "get content"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_3d6
    .catchall {:try_start_3cb .. :try_end_3d6} :catchall_37b
    .catch Ljava/lang/Exception; {:try_start_3cb .. :try_end_3d6} :catch_2d3

    .line 589
    const/4 v6, 0x0

    .local v6, bytesRead:I
    move-object/from16 v38, v37

    .line 591
    .end local v37           #stream:Ljava/io/FileOutputStream;
    .local v38, stream:Ljava/io/FileOutputStream;
    :goto_3d9
    :try_start_3d9
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$400()Z

    move-result v42

    if-nez v42, :cond_3e7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v42, v0

    if-eqz v42, :cond_480

    .line 592
    :cond_3e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_407

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v43, v0

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 595
    :cond_407
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_426

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v43, v0

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 598
    :cond_426
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;
    :try_end_42e
    .catchall {:try_start_3d9 .. :try_end_42e} :catchall_5c0
    .catch Ljava/lang/Exception; {:try_start_3d9 .. :try_end_42e} :catch_4b5

    .line 599
    const/4 v14, 0x0

    .line 651
    .end local v14           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    if-eqz v42, :cond_448

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 653
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 656
    :cond_448
    if-eqz v38, :cond_9

    .line 657
    :try_start_44a
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_44d
    .catch Ljava/io/IOException; {:try_start_44a .. :try_end_44d} :catch_44f

    goto/16 :goto_9

    .line 659
    :catch_44f
    move-exception v13

    .line 660
    .local v13, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 580
    .end local v6           #bytesRead:I
    .end local v12           #entityStream:Ljava/io/InputStream;
    .end local v13           #ex:Ljava/io/IOException;
    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v14       #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .restart local v37       #stream:Ljava/io/FileOutputStream;
    :catch_472
    move-exception v13

    .line 581
    .restart local v13       #ex:Ljava/io/IOException;
    const/16 v17, 0x1ef

    .line 582
    :try_start_475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_47e
    .catchall {:try_start_475 .. :try_end_47e} :catchall_37b
    .catch Ljava/lang/Exception; {:try_start_475 .. :try_end_47e} :catch_2d3

    goto/16 :goto_245

    .line 602
    .end local v13           #ex:Ljava/io/IOException;
    .end local v37           #stream:Ljava/io/FileOutputStream;
    .restart local v6       #bytesRead:I
    .restart local v12       #entityStream:Ljava/io/InputStream;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    :cond_480
    :try_start_480
    invoke-virtual {v12, v11}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    const-string v43, "CDDownloadThread : run : Data processing"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_48f
    .catchall {:try_start_480 .. :try_end_48f} :catchall_5c0
    .catch Ljava/io/IOException; {:try_start_480 .. :try_end_48f} :catch_4a8
    .catch Ljava/lang/Exception; {:try_start_480 .. :try_end_48f} :catch_4b5

    .line 609
    const/16 v42, -0x1

    move/from16 v0, v42

    if-ne v6, v0, :cond_4ba

    .line 610
    const/16 v17, 0x1ef

    .line 645
    :goto_497
    :try_start_497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    const-string v43, "CDDownloadThread : run : CD_STATUS_DOWNLOAD_COMPLETED"

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    move-object/from16 v37, v38

    .line 646
    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v37       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_245

    .line 604
    .end local v37           #stream:Ljava/io/FileOutputStream;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    :catch_4a8
    move-exception v13

    .line 605
    .restart local v13       #ex:Ljava/io/IOException;
    const/16 v17, 0x1ef

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_497

    .line 648
    .end local v13           #ex:Ljava/io/IOException;
    :catch_4b5
    move-exception v13

    move-object/from16 v37, v38

    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v37       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_2d4

    .line 618
    .end local v37           #stream:Ljava/io/FileOutputStream;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    :cond_4ba
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$400()Z

    move-result v42

    if-nez v42, :cond_4c8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v42, v0

    if-eqz v42, :cond_553

    .line 619
    :cond_4c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_4e8

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v43, v0

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 622
    :cond_4e8
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v42, v0

    if-eqz v42, :cond_507

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v43, v0

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v42 .. v43}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 625
    :cond_507
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;
    :try_end_50f
    .catchall {:try_start_497 .. :try_end_50f} :catchall_5c0
    .catch Ljava/lang/Exception; {:try_start_497 .. :try_end_50f} :catch_4b5

    .line 626
    const/4 v14, 0x0

    .line 651
    .end local v14           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    if-eqz v42, :cond_529

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 653
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    .line 656
    :cond_529
    if-eqz v38, :cond_9

    .line 657
    :try_start_52b
    invoke-virtual/range {v38 .. v38}, Ljava/io/FileOutputStream;->close()V
    :try_end_52e
    .catch Ljava/io/IOException; {:try_start_52b .. :try_end_52e} :catch_530

    goto/16 :goto_9

    .line 659
    :catch_530
    move-exception v13

    .line 660
    .restart local v13       #ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 629
    .end local v13           #ex:Ljava/io/IOException;
    .restart local v14       #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    :cond_553
    if-nez v38, :cond_5c7

    .line 630
    :try_start_555
    new-instance v37, Ljava/io/FileOutputStream;

    iget-object v0, v14, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_566
    .catchall {:try_start_555 .. :try_end_566} :catchall_5c0
    .catch Ljava/lang/Exception; {:try_start_555 .. :try_end_566} :catch_574

    .line 633
    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v37       #stream:Ljava/io/FileOutputStream;
    :goto_566
    const/16 v42, 0x0

    :try_start_568
    move-object/from16 v0, v37

    move/from16 v1, v42

    invoke-virtual {v0, v11, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_56f
    .catchall {:try_start_568 .. :try_end_56f} :catchall_37b
    .catch Ljava/lang/Exception; {:try_start_568 .. :try_end_56f} :catch_5c5

    .line 640
    :goto_56f
    add-int/2addr v7, v6

    move-object/from16 v38, v37

    .end local v37           #stream:Ljava/io/FileOutputStream;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_3d9

    .line 635
    :catch_574
    move-exception v13

    move-object/from16 v37, v38

    .line 636
    .end local v38           #stream:Ljava/io/FileOutputStream;
    .local v13, ex:Ljava/lang/Exception;
    .restart local v37       #stream:Ljava/io/FileOutputStream;
    :goto_577
    const/16 v17, 0x1ec

    .line 637
    goto :goto_56f

    .line 659
    .end local v6           #bytesRead:I
    .end local v12           #entityStream:Ljava/io/InputStream;
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v26           #hostUrl:Ljava/net/URI;
    .end local v31           #params:Lorg/apache/http/params/HttpParams;
    .end local v35           #response:Lorg/apache/http/HttpResponse;
    .end local v36           #statusCode:I
    .end local v39           #target:Lorg/apache/http/HttpHost;
    :catch_57a
    move-exception v13

    .line 660
    .local v13, ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v42 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_263

    .line 659
    .end local v5           #bytesNotified:I
    .end local v11           #data:[B
    .end local v13           #ex:Ljava/io/IOException;
    .end local v27           #isProxySet:Z
    .end local v32           #proxyHost:Ljava/lang/String;
    .end local v33           #proxyPort:I
    .end local v40           #timeLastNotification:J
    :catch_59d
    move-exception v13

    .line 660
    .restart local v13       #ex:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v43, v0

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v43 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_39a

    .line 651
    .end local v13           #ex:Ljava/io/IOException;
    .end local v37           #stream:Ljava/io/FileOutputStream;
    .restart local v5       #bytesNotified:I
    .restart local v6       #bytesRead:I
    .restart local v11       #data:[B
    .restart local v12       #entityStream:Ljava/io/InputStream;
    .restart local v26       #hostUrl:Ljava/net/URI;
    .restart local v27       #isProxySet:Z
    .restart local v31       #params:Lorg/apache/http/params/HttpParams;
    .restart local v32       #proxyHost:Ljava/lang/String;
    .restart local v33       #proxyPort:I
    .restart local v35       #response:Lorg/apache/http/HttpResponse;
    .restart local v36       #statusCode:I
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    .restart local v39       #target:Lorg/apache/http/HttpHost;
    .restart local v40       #timeLastNotification:J
    :catchall_5c0
    move-exception v42

    move-object/from16 v37, v38

    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v37       #stream:Ljava/io/FileOutputStream;
    goto/16 :goto_37c

    .line 635
    :catch_5c5
    move-exception v13

    goto :goto_577

    .end local v37           #stream:Ljava/io/FileOutputStream;
    .restart local v38       #stream:Ljava/io/FileOutputStream;
    :cond_5c7
    move-object/from16 v37, v38

    .end local v38           #stream:Ljava/io/FileOutputStream;
    .restart local v37       #stream:Ljava/io/FileOutputStream;
    goto :goto_566
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 672
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 674
    :try_start_3
    new-instance v6, Ljava/io/File;

    const-string v11, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 675
    .local v6, myFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_55

    .line 676
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_60

    .line 684
    .end local v6           #myFile:Ljava/io/File;
    :goto_1a
    :try_start_1a
    const-string v8, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionVersion_CEK.bin"

    .line 685
    .local v8, numberRegionVersionUrl:Ljava/lang/String;
    const/4 v3, 0x0

    .line 686
    .local v3, fileName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 687
    .local v10, versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_29

    .line 688
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 689
    :cond_29
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_34

    .line 690
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 692
    :cond_34
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_41

    .line 693
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesBeforeUpdate()V
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$600(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    .line 695
    :cond_41
    const-string v11, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v11, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    .line 697
    .local v2, fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    if-nez v2, :cond_65

    .line 698
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 699
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_54} :catch_8d

    .line 869
    .end local v2           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v8           #numberRegionVersionUrl:Ljava/lang/String;
    .end local v10           #versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :cond_54
    :goto_54
    return-void

    .line 678
    .restart local v6       #myFile:Ljava/io/File;
    :cond_55
    :try_start_55
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "/system/etc/HomeLocationVersion.bin"

    invoke-virtual {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5f} :catch_60

    goto :goto_1a

    .line 680
    .end local v6           #myFile:Ljava/io/File;
    :catch_60
    move-exception v1

    .line 681
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    .line 703
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v8       #numberRegionVersionUrl:Ljava/lang/String;
    .restart local v10       #versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :cond_65
    const/4 v0, 0x1

    .line 704
    .local v0, downloadCount:I
    :try_start_66
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_d5

    const/4 v5, 0x2

    .line 705
    .local v5, max:I
    :goto_6f
    iget-wide v11, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_142

    if-ge v0, v5, :cond_142

    .line 706
    const-string v11, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v11, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    .line 708
    if-nez v2, :cond_d7

    .line 709
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 710
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_8c} :catch_8d

    goto :goto_54

    .line 846
    .end local v0           #downloadCount:I
    .end local v2           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #max:I
    .end local v8           #numberRegionVersionUrl:Ljava/lang/String;
    .end local v10           #versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :catch_8d
    move-exception v1

    .line 847
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 848
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "EVENT_HTTP_EXCEPTION1 = 2"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 849
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_a3

    .line 850
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 851
    :cond_a3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 852
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_b1

    .line 853
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 854
    :cond_b1
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    .line 855
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download failed"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 856
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_365

    .line 857
    sget v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    .line 866
    .end local v1           #e:Ljava/lang/Exception;
    :cond_c9
    :goto_c9
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 867
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto :goto_54

    .line 704
    .restart local v0       #downloadCount:I
    .restart local v2       #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v8       #numberRegionVersionUrl:Ljava/lang/String;
    .restart local v10       #versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :cond_d5
    const/4 v5, 0x4

    goto :goto_6f

    .line 714
    .restart local v5       #max:I
    :cond_d7
    :try_start_d7
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo.fileSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 715
    iget-wide v11, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_128

    .line 716
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to download, fileInfo.fileSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 717
    const-string v11, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v11, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    .line 719
    if-nez v2, :cond_20f

    .line 720
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 721
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto/16 :goto_54

    .line 726
    :cond_128
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ready download, fileInfo.fileSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 731
    :cond_142
    const/4 v4, 0x1

    .line 732
    .local v4, isCorrectFile:Z
    iget-wide v11, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_14c

    .line 733
    const/4 v4, 0x0

    .line 735
    :cond_14c
    if-eqz v4, :cond_25b

    .line 736
    iget-object v3, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 737
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo1 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_16a} :catch_8d

    .line 738
    if-eqz v3, :cond_233

    .line 740
    :try_start_16c
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v11, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_171} :catch_213

    move-result-object v10

    .line 745
    :goto_172
    :try_start_172
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "versionInfo1 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 746
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mVersionInfo = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 747
    if-eqz v10, :cond_233

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    if-eqz v11, :cond_233

    iget-object v11, v10, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v12, v12, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_233

    iget-object v11, v10, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v12, v12, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_233

    .line 753
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "EVENT_VERSION_SAME = 4"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 755
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download repeate"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 756
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_219

    .line 757
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesForSuccess()V
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    .line 765
    :goto_1dd
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_202

    .line 766
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Delete mVersionTmpFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 767
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 769
    :cond_202
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 770
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto/16 :goto_54

    .line 729
    .end local v4           #isCorrectFile:Z
    :cond_20f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6f

    .line 741
    .restart local v4       #isCorrectFile:Z
    :catch_213
    move-exception v1

    .line 742
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_172

    .line 759
    .end local v1           #e:Ljava/lang/Exception;
    :cond_219
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_22b

    .line 760
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 762
    :cond_22b
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "mHandler.sendEmptyMessage(EVENT_VERSION_SAME)"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    goto :goto_1dd

    .line 775
    :cond_233
    const-string v7, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionDB_CEK.bin"

    .line 776
    .local v7, numberRegionUrl:Ljava/lang/String;
    if-eqz v7, :cond_23d

    .line 777
    const-string v11, "/data/data/com.android.phone/HomeLocationDB_tmp.bin"

    invoke-direct {p0, v11, v7}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    .line 780
    :cond_23d
    if-eqz v2, :cond_243

    .line 781
    iget-object v3, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    .line 783
    :cond_243
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo2 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 788
    .end local v7           #numberRegionUrl:Ljava/lang/String;
    :cond_25b
    if-eqz v10, :cond_270

    if-eqz v2, :cond_270

    iget-wide v11, v10, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_26f

    iget-wide v11, v10, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_270

    .line 791
    :cond_26f
    const/4 v4, 0x0

    .line 792
    :cond_270
    if-eqz v2, :cond_27b

    iget-wide v11, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->startmarker:J

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->endmarker:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_27b

    .line 794
    const/4 v4, 0x0

    .line 798
    :cond_27b
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isCorrectFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static {v11, v12, v13}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 799
    if-eqz v4, :cond_313

    .line 800
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    const-string v12, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 801
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    const-string v12, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 803
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_2af

    .line 804
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 805
    :cond_2af
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 806
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_2bd

    .line 807
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 808
    :cond_2bd
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    .line 809
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo2 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 810
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_2ff

    .line 812
    new-instance v9, Landroid/content/Intent;

    const-string v11, "com.sec.action.UPDATE_VERSION"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .local v9, refreshIntent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 816
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download success"

    const/4 v13, 0x1

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static {v11, v12, v13}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    .line 817
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesForSuccess()V
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    goto/16 :goto_c9

    .line 819
    .end local v9           #refreshIntent:Landroid/content/Intent;
    :cond_2ff
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_c9

    .line 820
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_c9

    .line 823
    :cond_313
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "EVENT_HTTP_EXCEPTION = 2"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 824
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_325

    .line 825
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 826
    :cond_325
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    .line 827
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_333

    .line 828
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 829
    :cond_333
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    .line 830
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download failed"

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    .line 831
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_34d

    .line 832
    sget v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    goto/16 :goto_c9

    .line 834
    :cond_34d
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_c9

    .line 835
    iget-boolean v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    if-nez v11, :cond_c9

    .line 839
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_363
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_363} :catch_8d

    goto/16 :goto_c9

    .line 859
    .end local v0           #downloadCount:I
    .end local v2           #fileInfo:Lcom/android/phone/callsettings/DownloadFileInfo;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #isCorrectFile:Z
    .end local v5           #max:I
    .end local v8           #numberRegionVersionUrl:Ljava/lang/String;
    .end local v10           #versionInfo:Lcom/android/phone/callsettings/VersionInfo;
    .restart local v1       #e:Ljava/lang/Exception;
    :cond_365
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_c9

    .line 860
    iget-boolean v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    if-nez v11, :cond_c9

    .line 861
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    #getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_c9
.end method

.method public startThread()V
    .registers 2

    .prologue
    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    .line 374
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->start()V

    .line 375
    return-void
.end method

.method public stopThread()V
    .registers 2

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    .line 379
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_c

    .line 380
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 382
    :cond_c
    return-void
.end method
