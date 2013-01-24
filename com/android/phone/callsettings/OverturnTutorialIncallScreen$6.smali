.class Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$6;
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
    .line 353
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 355
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "OK button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$002(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)I

    .line 358
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$6;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #calls: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->startIncomingSound()V
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$1100(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    .line 359
    return-void
.end method
