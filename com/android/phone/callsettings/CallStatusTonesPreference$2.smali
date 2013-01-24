.class Lcom/android/phone/callsettings/CallStatusTonesPreference$2;
.super Ljava/lang/Object;
.source "CallStatusTonesPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallStatusTonesPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallStatusTonesPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallStatusTonesPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference$2;->this$0:Lcom/android/phone/callsettings/CallStatusTonesPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, value:I
    iget-object v3, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference$2;->this$0:Lcom/android/phone/callsettings/CallStatusTonesPreference;

    #getter for: Lcom/android/phone/callsettings/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z
    invoke-static {v3}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->access$000(Lcom/android/phone/callsettings/CallStatusTonesPreference;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_53

    move v0, v1

    .line 95
    :goto_e
    iget-object v3, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference$2;->this$0:Lcom/android/phone/callsettings/CallStatusTonesPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_conn_tone"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    iget-object v3, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference$2;->this$0:Lcom/android/phone/callsettings/CallStatusTonesPreference;

    #getter for: Lcom/android/phone/callsettings/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z
    invoke-static {v3}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->access$000(Lcom/android/phone/callsettings/CallStatusTonesPreference;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_55

    move v0, v1

    .line 99
    :goto_28
    iget-object v3, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference$2;->this$0:Lcom/android/phone/callsettings/CallStatusTonesPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "min_minder"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    iget-object v3, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference$2;->this$0:Lcom/android/phone/callsettings/CallStatusTonesPreference;

    #getter for: Lcom/android/phone/callsettings/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z
    invoke-static {v3}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->access$000(Lcom/android/phone/callsettings/CallStatusTonesPreference;)[Z

    move-result-object v3

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_57

    move v0, v1

    .line 103
    :goto_43
    iget-object v1, p0, Lcom/android/phone/callsettings/CallStatusTonesPreference$2;->this$0:Lcom/android/phone/callsettings/CallStatusTonesPreference;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_end_tone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    return-void

    :cond_53
    move v0, v2

    .line 94
    goto :goto_e

    :cond_55
    move v0, v2

    .line 98
    goto :goto_28

    :cond_57
    move v0, v2

    .line 102
    goto :goto_43
.end method
