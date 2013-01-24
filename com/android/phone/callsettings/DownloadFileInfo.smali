.class Lcom/android/phone/callsettings/DownloadFileInfo;
.super Ljava/lang/Object;
.source "PhoneNumberLocatorDownloader.java"


# instance fields
.field public endmarker:J

.field public fileName:Ljava/lang/String;

.field public fileSize:J

.field public startmarker:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide v0, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    .line 64
    iput-wide v0, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->startmarker:J

    .line 65
    iput-wide v0, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->endmarker:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x180

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
