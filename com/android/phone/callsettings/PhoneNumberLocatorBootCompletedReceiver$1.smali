.class Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver$1;
.super Ljava/lang/Object;
.source "PhoneNumberLocatorBootCompletedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->startCopyThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 510
    :try_start_0
    const-string v1, "/system/etc/HomeLocationVersion.bin"

    const-string v2, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 511
    const-string v1, "/system/etc/HomeLocationDB.bin"

    const-string v2, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 515
    :goto_e
    return-void

    .line 512
    :catch_f
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method
