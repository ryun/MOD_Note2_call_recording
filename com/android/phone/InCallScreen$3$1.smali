.class Lcom/android/phone/InCallScreen$3$1;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/InCallScreen$3;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen$3;)V
    .registers 2
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/phone/InCallScreen$3$1;->this$1:Lcom/android/phone/InCallScreen$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 731
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 732
    return-void
.end method
