.class public Lcom/mtelo/amf/AmfCodec;
.super Ljava/lang/Object;
.source "AmfCodec.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-string v0, "amf-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AMFDecodeContent([B)I
.end method

.method public static native AMFDestroyContent(I)I
.end method

.method public static native AMFGetClipHandle(II)I
.end method

.method public static native AMFGetClipMedia(II[B)I
.end method

.method public static native AMFGetClipMimeType(II)I
.end method

.method public static native AMFGetFrame(III[B)I
.end method

.method public static native AMFGetHeight(I)I
.end method

.method public static native AMFGetRuntime(I)I
.end method

.method public static native AMFGetWidth(I)I
.end method

.method public static native AMFInitPlayer(IIII)I
.end method
