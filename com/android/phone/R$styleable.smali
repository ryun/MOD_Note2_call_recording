.class public final Lcom/android/phone/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CallForwardEditPreference:[I

.field public static final EditPhoneNumberPreference:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/phone/R$styleable;->EditPhoneNumberPreference:[I

    return-void

    nop

    :array_12
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data

    :array_1a
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
