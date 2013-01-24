.class Lcom/android/phone/AllowDataAccess$1;
.super Ljava/lang/Object;
.source "AllowDataAccess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AllowDataAccess;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AllowDataAccess;


# direct methods
.method constructor <init>(Lcom/android/phone/AllowDataAccess;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/AllowDataAccess$1;->this$0:Lcom/android/phone/AllowDataAccess;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/AllowDataAccess$1;->this$0:Lcom/android/phone/AllowDataAccess;

    invoke-virtual {v0}, Lcom/android/phone/AllowDataAccess;->finish()V

    .line 85
    return-void
.end method
