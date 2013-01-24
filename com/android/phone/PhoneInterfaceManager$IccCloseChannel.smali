.class final Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccCloseChannel"
.end annotation


# instance fields
.field public sessionID:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "sessionID"

    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    .line 194
    return-void
.end method
