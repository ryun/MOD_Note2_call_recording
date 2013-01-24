.class public Lcom/android/phone/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 185
    :cond_10
    :goto_10
    return v3

    .line 170
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 171
    .local v2, len:I
    if-le v2, v4, :cond_10

    const/4 v5, 0x5

    if-ge v2, v5, :cond_10

    const-string v5, "#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 173
    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    :try_start_25
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, index:I
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.SimContacts"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    const-string v5, "index"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_4c} :catch_4e

    move v3, v4

    .line 182
    goto :goto_10

    .line 183
    .end local v0           #index:I
    .end local v1           #intent:Landroid/content/Intent;
    :catch_4e
    move-exception v4

    goto :goto_10
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .parameter "context"
    .parameter "input"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 5
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 98
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0, v0, p2}, Lcom/android/phone/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 104
    :cond_1c
    const/4 v1, 0x1

    .line 107
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method static handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 5
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 122
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/phone/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 131
    const/4 v1, 0x1

    .line 134
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .parameter "context"
    .parameter "input"

    .prologue
    .line 213
    const-string v0, "*#06#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 214
    invoke-static {p0}, Lcom/android/phone/SpecialCharSequenceMgr;->showDeviceIdPanel(Landroid/content/Context;)V

    .line 215
    const/4 v0, 0x1

    .line 218
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 6
    .parameter "context"
    .parameter "input"
    .parameter "pukInputActivity"

    .prologue
    .line 193
    const-string v2, "**04"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "**05"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_10
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 195
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 196
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1

    .line 203
    .local v1, isMMIHandled:Z
    if-eqz v1, :cond_2f

    const-string v2, "**05"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 204
    invoke-virtual {v0, p2}, Lcom/android/phone/PhoneApp;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 208
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #isMMIHandled:Z
    :cond_2f
    :goto_2f
    return v1

    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method private static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .parameter "context"
    .parameter "input"

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 149
    .local v1, len:I
    const/16 v2, 0x8

    if-le v1, v2, :cond_42

    const-string v2, "*#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, "#*#*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    const/4 v2, 0x1

    .line 156
    .end local v0           #intent:Landroid/content/Intent;
    :goto_41
    return v2

    :cond_42
    const/4 v2, 0x0

    goto :goto_41
.end method

.method private static showDeviceIdPanel(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 224
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 225
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->getDeviceIdLabel(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 226
    .local v2, labelId:I
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, deviceId:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e002a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 234
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d7

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 236
    return-void
.end method
