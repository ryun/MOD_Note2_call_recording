.class Lcom/android/phone/RcsShare$SessionState;
.super Ljava/lang/Object;
.source "RcsShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RcsShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionState"
.end annotation


# instance fields
.field public mDirection:I

.field public mId:J

.field public mIsActive:Z

.field public mSize:J

.field public mState:I

.field public mType:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
