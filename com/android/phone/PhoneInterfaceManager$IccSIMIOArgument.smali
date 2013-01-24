.class final Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccSIMIOArgument"
.end annotation


# instance fields
.field public command:I

.field public fileID:I

.field public filepath:Ljava/lang/String;

.field public p1:I

.field public p2:I

.field public p3:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;)V
    .registers 7
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filepath"

    .prologue
    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->fileID:I

    .line 171
    iput p2, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->command:I

    .line 172
    iput p3, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p1:I

    .line 173
    iput p4, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p2:I

    .line 174
    iput p5, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->p3:I

    .line 175
    iput-object p6, p0, Lcom/android/phone/PhoneInterfaceManager$IccSIMIOArgument;->filepath:Ljava/lang/String;

    .line 176
    return-void
.end method
