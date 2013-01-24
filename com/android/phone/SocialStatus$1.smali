.class Lcom/android/phone/SocialStatus$1;
.super Ljava/lang/Object;
.source "SocialStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SocialStatus;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SocialStatus;


# direct methods
.method constructor <init>(Lcom/android/phone/SocialStatus;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/phone/SocialStatus$1;->this$0:Lcom/android/phone/SocialStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/phone/SocialStatus$1;->this$0:Lcom/android/phone/SocialStatus;

    invoke-virtual {v0}, Lcom/android/phone/SocialStatus;->closeSocialStatus()V

    .line 147
    return-void
.end method
