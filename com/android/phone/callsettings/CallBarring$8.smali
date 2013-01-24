.class Lcom/android/phone/callsettings/CallBarring$8;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .registers 2
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$8;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 504
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$8;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #setter for: Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->access$202(Lcom/android/phone/callsettings/CallBarring;Z)Z

    .line 505
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$8;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$400(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$8;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$8;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$1200(Lcom/android/phone/callsettings/CallBarring;)Z

    move-result v2

    if-nez v2, :cond_24

    :goto_20
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 506
    return-void

    .line 505
    :cond_24
    const/4 v1, 0x0

    goto :goto_20
.end method
