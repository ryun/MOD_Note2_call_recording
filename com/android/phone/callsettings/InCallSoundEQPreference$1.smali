.class Lcom/android/phone/callsettings/InCallSoundEQPreference$1;
.super Ljava/lang/Object;
.source "InCallSoundEQPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/InCallSoundEQPreference;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    .line 63
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 64
    .local v2, value:I
    packed-switch v2, :pswitch_data_a0

    .line 91
    :goto_a
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 93
    .local v1, eqListValue:I
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, eqListEntries:[Ljava/lang/String;
    if-nez v1, :cond_94

    .line 96
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    #getter for: Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v3

    const v4, 0x7f0e0383

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 101
    :goto_31
    const/4 v3, 0x1

    .end local v0           #eqListEntries:[Ljava/lang/String;
    :goto_32
    return v3

    .line 68
    .end local v1           #eqListValue:I
    :pswitch_33
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_direction"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    .line 74
    :pswitch_4b
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_diagnosis"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_7a

    .line 76
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 78
    .restart local v1       #eqListValue:I
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    #getter for: Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    const/16 v5, 0x1f7

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->showDialog(I)V

    goto :goto_32

    .line 82
    .end local v1           #eqListValue:I
    :cond_7a
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_direction"

    add-int/lit8 v6, v2, -0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_a

    .line 98
    .restart local v0       #eqListEntries:[Ljava/lang/String;
    .restart local v1       #eqListValue:I
    :cond_94
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    #getter for: Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 64
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_4b
        :pswitch_4b
    .end packed-switch
.end method
