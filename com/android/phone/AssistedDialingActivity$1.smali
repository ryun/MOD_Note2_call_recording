.class Lcom/android/phone/AssistedDialingActivity$1;
.super Ljava/lang/Object;
.source "AssistedDialingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AssistedDialingActivity;->displayHelp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AssistedDialingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/AssistedDialingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/phone/AssistedDialingActivity$1;->this$0:Lcom/android/phone/AssistedDialingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 295
    return-void
.end method
