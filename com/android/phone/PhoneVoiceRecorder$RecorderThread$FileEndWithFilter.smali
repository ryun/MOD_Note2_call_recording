.class Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileEndWithFilter"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "fileName"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;->this$1:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p2, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;->fileName:Ljava/lang/String;

    .line 516
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 518
    if-eqz p2, :cond_9

    .line 519
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 521
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
