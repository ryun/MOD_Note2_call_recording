.class public final Lcom/android/phone/RcsTransferConstants$Cs;
.super Ljava/lang/Object;
.source "RcsTransferConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RcsTransferConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cs"
.end annotation


# static fields
.field public static final ACTIVE_SESSIONS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 166
    const-string v0, "content://com.samsung.rcs.cs/active_sessions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RcsTransferConstants$Cs;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
