.class Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$3;
.super Ljava/lang/Object;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$3;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$3;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$000(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_10

    .line 325
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$3;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$002(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)I

    .line 327
    :cond_10
    return-void
.end method
