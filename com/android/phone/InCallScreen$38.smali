.class Lcom/android/phone/InCallScreen$38;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
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
    .line 5808
    iput-object p1, p0, Lcom/android/phone/InCallScreen$38;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 5810
    iget-object v0, p0, Lcom/android/phone/InCallScreen$38;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$3802(Lcom/android/phone/InCallScreen;I)I

    .line 5811
    return-void
.end method
