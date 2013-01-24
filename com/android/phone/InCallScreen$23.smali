.class Lcom/android/phone/InCallScreen$23;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showEmergencyCallConfirmationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 5137
    iput-object p1, p0, Lcom/android/phone/InCallScreen$23;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5139
    iget-object v0, p0, Lcom/android/phone/InCallScreen$23;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3500(Lcom/android/phone/InCallScreen;)V

    .line 5140
    return-void
.end method
