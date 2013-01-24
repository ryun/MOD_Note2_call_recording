.class Lcom/android/phone/callsettings/IntCallServicePreference$5;
.super Ljava/lang/Object;
.source "IntCallServicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IntCallServicePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IntCallServicePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference$5;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x0

    .line 183
    iget-object v7, p0, Lcom/android/phone/callsettings/IntCallServicePreference$5;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v7, v7, Lcom/android/phone/callsettings/IntCallServicePreference;->mAutoRadio:Landroid/widget/CheckedTextView;

    invoke-virtual {v7}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_42

    const/4 v1, 0x1

    .line 186
    .local v1, mode:I
    :goto_c
    iget-object v7, p0, Lcom/android/phone/callsettings/IntCallServicePreference$5;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v7, v7, Lcom/android/phone/callsettings/IntCallServicePreference;->mManualSvcNumber:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, data:Ljava/lang/String;
    move-object v4, v0

    .line 188
    .local v4, tempareaCode:Ljava/lang/String;
    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_44

    .line 191
    const-string v0, ""

    .line 193
    if-nez v1, :cond_44

    .line 194
    iget-object v7, p0, Lcom/android/phone/callsettings/IntCallServicePreference$5;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v7, v7, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/phone/callsettings/IntCallServicePreference$5;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v8, v8, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v9, 0x7f0e06eb

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 195
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 213
    .end local v5           #toast:Landroid/widget/Toast;
    :goto_41
    return-void

    .end local v0           #data:Ljava/lang/String;
    .end local v1           #mode:I
    .end local v4           #tempareaCode:Ljava/lang/String;
    :cond_42
    move v1, v6

    .line 183
    goto :goto_c

    .line 200
    .restart local v0       #data:Ljava/lang/String;
    .restart local v1       #mode:I
    .restart local v4       #tempareaCode:Ljava/lang/String;
    :cond_44
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference$5;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v6, v6, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "int_call_svc_enabled"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference$5;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v6, v6, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "int_call_svc_value"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference$5;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v6, v6, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0771

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, tempSummary:Ljava/lang/String;
    if-lez v1, :cond_97

    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference$5;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v6, v6, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0e076f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, temp:Ljava/lang/String;
    :goto_76
    const-string v6, "%d"

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    if-lez v1, :cond_91

    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 209
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference$5;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    iget-object v6, v6, Lcom/android/phone/callsettings/IntCallServicePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0772

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 212
    :cond_91
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallServicePreference$5;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-virtual {v6, v3}, Lcom/android/phone/callsettings/IntCallServicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_41

    .end local v2           #temp:Ljava/lang/String;
    :cond_97
    move-object v2, v0

    .line 204
    goto :goto_76
.end method
