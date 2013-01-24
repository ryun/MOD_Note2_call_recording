.class Lcom/android/phone/callsettings/CallBarring$1;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreate(Landroid/os/Bundle;)V
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
    .line 289
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$000(Lcom/android/phone/callsettings/CallBarring;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_38

    .line 293
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const v2, 0x7f0e0350

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->access$100(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->access$202(Lcom/android/phone/callsettings/CallBarring;Z)Z

    .line 296
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->access$400(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 303
    :goto_37
    return-void

    .line 301
    :cond_38
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$1;->this$0:Lcom/android/phone/callsettings/CallBarring;

    #calls: Lcom/android/phone/callsettings/CallBarring;->setCallBarring(I)V
    invoke-static {v0, v3}, Lcom/android/phone/callsettings/CallBarring;->access$500(Lcom/android/phone/callsettings/CallBarring;I)V

    goto :goto_37
.end method
