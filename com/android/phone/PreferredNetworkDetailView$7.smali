.class Lcom/android/phone/PreferredNetworkDetailView$7;
.super Ljava/lang/Object;
.source "PreferredNetworkDetailView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PreferredNetworkDetailView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredNetworkDetailView;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworkDetailView;)V
    .registers 2
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preference"

    .prologue
    const v5, 0x7f0e06b2

    const v4, 0x7f0e06af

    const/4 v3, 0x0

    .line 274
    const-string v0, "PreferredNetworksDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UTRAN ACT Checked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v2, v2, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 276
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0e06b6

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 277
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 278
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 279
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 283
    :goto_57
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 284
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 285
    const/4 v0, 0x1

    return v0

    .line 282
    :cond_67
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$7;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    iget-object v0, v0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0e06b5

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_57
.end method
