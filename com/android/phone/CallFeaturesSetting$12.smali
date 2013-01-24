.class Lcom/android/phone/CallFeaturesSetting$12;
.super Landroid/content/BroadcastReceiver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 2748
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 2751
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2752
    .local v0, action:Ljava/lang/String;
    const-string v8, "CallFeaturesSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 2754
    const-string v8, "state"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 2755
    .local v7, state:Ljava/lang/Boolean;
    const-string v8, "CallFeaturesSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_78

    .line 2757
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const-string v9, "sip_settings_category_key"

    invoke-virtual {v8, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 2758
    .local v6, sipSettings:Landroid/preference/Preference;
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v8}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 2759
    .local v4, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 2760
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6a
    if-ge v2, v1, :cond_82

    .line 2761
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 2762
    .local v3, pref:Landroid/preference/Preference;
    if-eq v3, v6, :cond_75

    .line 2763
    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2760
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 2766
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v4           #screen:Landroid/preference/PreferenceScreen;
    .end local v6           #sipSettings:Landroid/preference/Preference;
    :cond_78
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v8}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2778
    .end local v7           #state:Ljava/lang/Boolean;
    :cond_82
    :goto_82
    return-void

    .line 2768
    :cond_83
    const-string v8, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 2769
    const-string v8, "feature_att"

    invoke-static {v8}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 2770
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$2800(Lcom/android/phone/CallFeaturesSetting;)Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "preferred_tty_mode"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2772
    .local v5, settingsTtyMode:I
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForeground:Z
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$2900(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 2773
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$3000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2774
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$12;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V
    invoke-static {v8, v5}, Lcom/android/phone/CallFeaturesSetting;->access$3100(Lcom/android/phone/CallFeaturesSetting;I)V

    goto :goto_82
.end method
