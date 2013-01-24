.class Lcom/android/phone/InVTCallScreen$AsyncLoadCookie;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncLoadCookie"
.end annotation


# instance fields
.field public final callerInfo:Lcom/android/internal/telephony/CallerInfo;

.field public final currentState:I

.field public final imageView:Landroid/widget/ImageView;

.field public final smallImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;I)V
    .registers 5
    .parameter "imageView"
    .parameter "smallImageView"
    .parameter "callerInfo"
    .parameter "currentState"

    .prologue
    .line 16450
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16451
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 16452
    iput-object p2, p0, Lcom/android/phone/InVTCallScreen$AsyncLoadCookie;->smallImageView:Landroid/widget/ImageView;

    .line 16453
    iput-object p3, p0, Lcom/android/phone/InVTCallScreen$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 16454
    iput p4, p0, Lcom/android/phone/InVTCallScreen$AsyncLoadCookie;->currentState:I

    .line 16455
    return-void
.end method
