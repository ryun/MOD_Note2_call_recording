.class public Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
.super Ljava/lang/Exception;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceMailNumberMissingException"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2012
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2013
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 2016
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2017
    return-void
.end method
