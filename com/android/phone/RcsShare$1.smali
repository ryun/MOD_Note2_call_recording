.class final Lcom/android/phone/RcsShare$1;
.super Ljava/lang/Object;
.source "RcsShare.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RcsShare;->setupInviteCallCardButtons(Lcom/android/phone/RcsInvitation;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callStartMilis:J

.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$tel:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/phone/RcsShare$1;->val$displayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/RcsShare$1;->val$tel:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/phone/RcsShare$1;->val$callStartMilis:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RcsShare$1;->val$displayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/RcsShare$1;->val$tel:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/phone/RcsShare$1;->val$callStartMilis:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/RcsShare;->acceptInvitation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 632
    return-void
.end method
