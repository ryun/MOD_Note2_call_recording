.class public Lcom/android/phone/EmergencyDialer;
.super Landroid/app/Activity;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static isKeyPressed:Z

.field private static sTypeface:Landroid/graphics/Typeface;


# instance fields
.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field private mAdditionalButtons:Landroid/view/View;

.field private mApp:Lcom/android/phone/PhoneApp;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDialButtonSim1:Landroid/view/View;

.field private mDialButtonSim2:Landroid/view/View;

.field mDigits:Landroid/widget/EditText;

.field private mDomesticOtaStart:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mLastNumber:Ljava/lang/String;

.field private mLeftArrow:Landroid/view/View;

.field private mLocked:Z

.field private mMissingPhoneLock:Z

.field private mRightArrow:Landroid/view/View;

.field private mSimNum:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/EmergencyDialer;->isKeyPressed:Z

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    .line 151
    const-string v0, "onehand_dialer_enabled"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_ENABLED:Ljava/lang/String;

    .line 152
    const-string v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    .line 169
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 172
    new-instance v0, Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$1;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/android/phone/EmergencyDialer$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$2;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyDialer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/PhoneApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/EmergencyDialer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/EmergencyDialer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    return-void
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6
    .parameter

    .prologue
    .line 1039
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1040
    const v0, 0x7f0e01bf

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    :goto_15
    return-object v0

    :cond_16
    const v0, 0x7f0e01c0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private disableHovering()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 504
    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 505
    const v0, 0x7f09009f

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 506
    const v0, 0x7f0900a0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 507
    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 508
    const v0, 0x7f0900a2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 509
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 510
    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 511
    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 512
    const v0, 0x7f0900a6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 513
    const v0, 0x7f0900a7

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 514
    const v0, 0x7f0900a8

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 515
    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 516
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_13

    .line 1146
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    .line 1149
    :goto_d
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1150
    return-void

    .line 1148
    :cond_13
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method private isSystemKeyEventRequested(I)Z
    .registers 6
    .parameter

    .prologue
    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 1196
    :goto_a
    return v0

    .line 1193
    :catch_b
    move-exception v0

    .line 1194
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSystemKeyEventRequested - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private keyPressed(I)V
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 611
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 612
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 613
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 614
    return-void
.end method

.method private launchEmergencyCallList()V
    .registers 6

    .prologue
    .line 752
    const-string v0, "com.android.phone.EmergencyDialer.LIST"

    .line 753
    .local v0, ACTION_EMERGENCY_LIST:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 755
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 756
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 757
    return-void
.end method

.method private launchEmergencyContactList()V
    .registers 14

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 766
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 767
    .local v11, radioState:I
    if-nez v11, :cond_65

    move v8, v3

    .line 769
    .local v8, isNoService:Z
    :goto_12
    const/4 v1, 0x0

    .line 770
    .local v1, iceCountUri:Landroid/net/Uri;
    const-string v0, "dcm_jcontacts_package_name"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 771
    const-string v0, "content://com.android.jcontacts/groups/title/ICE/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 775
    :goto_21
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "emergency"

    const-string v12, "true"

    invoke-virtual {v0, v2, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 779
    if-eqz v8, :cond_6e

    .line 782
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v12, "_id"

    aput-object v12, v2, v3

    const-string v3, "default_emergency"

    aput-object v3, v2, v5

    const-string v3, "default_emergency = 1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 787
    .local v6, cursor:Landroid/database/Cursor;
    :goto_49
    const/4 v10, 0x0

    .line 788
    .local v10, noEmergencyContacts:Z
    if-eqz v6, :cond_7f

    .line 789
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_53

    .line 790
    const/4 v10, 0x1

    .line 792
    :cond_53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 797
    :goto_56
    if-eqz v10, :cond_81

    if-eqz v8, :cond_81

    .line 798
    const v0, 0x7f0e06f4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->displayToast(Ljava/lang/String;)V

    .line 816
    :goto_64
    return-void

    .end local v1           #iceCountUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #isNoService:Z
    .end local v10           #noEmergencyContacts:Z
    :cond_65
    move v8, v5

    .line 767
    goto :goto_12

    .line 773
    .restart local v1       #iceCountUri:Landroid/net/Uri;
    .restart local v8       #isNoService:Z
    :cond_67
    const-string v0, "content://com.android.contacts/groups/title/ICE/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_21

    .line 784
    :cond_6e
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v3

    move-object v3, v4

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_49

    .line 794
    .restart local v10       #noEmergencyContacts:Z
    :cond_7f
    const/4 v10, 0x1

    goto :goto_56

    .line 802
    :cond_81
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 803
    .local v9, lp:Landroid/view/WindowManager$LayoutParams;
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100

    or-int/2addr v0, v2

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 804
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 806
    const/4 v7, 0x0

    .line 807
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "dcm_jcontacts_package_name"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 808
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-string v0, "com.android.jcontacts.action.SHOW_EMERGENCY_CONTACTS"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    .restart local v7       #intent:Landroid/content/Intent;
    :goto_a7
    const-string v0, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchEmergencyContactList: default only : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v0, "default_only"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 815
    invoke-virtual {p0, v7}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_64

    .line 810
    :cond_c8
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-string v0, "com.android.contacts.action.SHOW_EMERGENCY_CONTACTS"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v7       #intent:Landroid/content/Intent;
    goto :goto_a7
.end method

.method private onCreateSimSelectDialog()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1064
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "SIM1_TYPE_SELECT"

    aput-object v1, v4, v0

    const-string v0, "SIM2_TYPE_SELECT"

    aput-object v0, v4, v6

    .line 1069
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1071
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 1074
    new-instance v0, Lcom/android/phone/EmergencyDialer$3;

    const v3, 0x10900cb

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/EmergencyDialer$3;-><init>(Lcom/android/phone/EmergencyDialer;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V

    .line 1102
    new-instance v1, Lcom/android/phone/EmergencyDialer$4;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$4;-><init>(Lcom/android/phone/EmergencyDialer;)V

    .line 1116
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1117
    const v3, 0x7f0e01bc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1118
    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1119
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1120
    const v0, 0x7f0e002e

    new-instance v1, Lcom/android/phone/EmergencyDialer$5;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$5;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1125
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1126
    new-instance v1, Lcom/android/phone/EmergencyDialer$6;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$6;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1132
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1133
    return-void
.end method

.method private placeCall()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 934
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 935
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 936
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 938
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 940
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 941
    iget v0, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    if-ne v0, v5, :cond_63

    .line 942
    const-string v0, "gsm.current.simnum"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "emergency_for_cyber_terror"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_110

    const-string v0, "118"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 953
    :cond_51
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 955
    :cond_5d
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 998
    :goto_62
    return-void

    .line 944
    :cond_63
    const-string v0, "gsm.current.simnum"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 962
    :cond_6b
    const-string v0, "emergency_for_cyber_terror"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string v0, "118"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 963
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 968
    :goto_84
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 969
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 971
    const-string v1, "SKTRADDialOption"

    const-string v2, "abroad"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const-string v1, "feature_chn_duos_cdma_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 974
    const-string v1, "simnum"

    iget v2, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 975
    iput v4, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    .line 984
    :cond_ad
    :goto_ad
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 986
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v0, :cond_10b

    .line 987
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_62

    .line 965
    :cond_d0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_84

    .line 976
    :cond_d8
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 978
    const-string v1, "ril.ICC2_TYPE"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_fd

    const-string v1, "ril.ICC2_TYPE"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_ad

    .line 980
    :cond_fd
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone2:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->setCurrentPhone(Lcom/android/internal/telephony/Phone;)V

    goto :goto_ad

    .line 989
    :cond_10b
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto/16 :goto_62

    .line 995
    :cond_110
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 996
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->showDialog(I)V

    goto/16 :goto_62
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1184
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 1188
    :goto_a
    return v0

    .line 1185
    :catch_b
    move-exception v0

    .line 1186
    const-string v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private setupKeypad()V
    .registers 3

    .prologue
    .line 482
    const v1, 0x7f09009e

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    const v1, 0x7f09009f

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    const v1, 0x7f0900a0

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    const v1, 0x7f0900a1

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    const v1, 0x7f0900a2

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    const v1, 0x7f0900a3

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    const v1, 0x7f0900a4

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    const v1, 0x7f0900a5

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    const v1, 0x7f0900a6

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    const v1, 0x7f0900a7

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    const v1, 0x7f0900a8

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 494
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 497
    const v1, 0x7f0900a9

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->disableHovering()V

    .line 500
    return-void
.end method

.method private updateDialAndDeleteButtonStateEnabledAttr()V
    .registers 3

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    if-eqz v1, :cond_29

    .line 1157
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    .line 1159
    .local v0, notEmpty:Z
    :goto_d
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1160
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1161
    :cond_1b
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1162
    :cond_24
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1164
    .end local v0           #notEmpty:Z
    :cond_29
    return-void

    .line 1157
    :cond_2a
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "input"

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/SpecialCharSequenceMgr;->handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 231
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 234
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 235
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 210
    return-void
.end method

.method protected maybeAddNumberFormatting()V
    .registers 1

    .prologue
    .line 467
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x2

    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 635
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_f8

    .line 745
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 637
    :pswitch_e
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 638
    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 642
    :pswitch_15
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 643
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 647
    :pswitch_1e
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 648
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 652
    :pswitch_28
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 653
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 657
    :pswitch_32
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 658
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 662
    :pswitch_3c
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 663
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 667
    :pswitch_46
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 668
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 672
    :pswitch_4f
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 673
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 677
    :pswitch_58
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 678
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 682
    :pswitch_63
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 683
    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 687
    :pswitch_6a
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 688
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 692
    :pswitch_75
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 693
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 697
    :pswitch_80
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_d

    .line 701
    :pswitch_86
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 702
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto/16 :goto_d

    .line 706
    :pswitch_90
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 707
    iput v3, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    .line 708
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto/16 :goto_d

    .line 712
    :pswitch_9c
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 713
    iput v4, p0, Lcom/android/phone/EmergencyDialer;->mSimNum:I

    .line 714
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto/16 :goto_d

    .line 718
    :pswitch_a8
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_d

    .line 719
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_d

    .line 725
    :pswitch_b7
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v0, :cond_c8

    .line 726
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->launchEmergencyCallList()V

    goto/16 :goto_d

    .line 728
    :cond_c8
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->launchEmergencyContactList()V

    goto/16 :goto_d

    .line 732
    :pswitch_cd
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 734
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_d

    .line 737
    :pswitch_e2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 739
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_d

    .line 635
    nop

    :pswitch_data_f8
    .packed-switch 0x7f09009e
        :pswitch_e
        :pswitch_15
        :pswitch_1e
        :pswitch_28
        :pswitch_32
        :pswitch_3c
        :pswitch_46
        :pswitch_4f
        :pswitch_58
        :pswitch_75
        :pswitch_63
        :pswitch_6a
        :pswitch_d
        :pswitch_b7
        :pswitch_86
        :pswitch_80
        :pswitch_90
        :pswitch_9c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_a8
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e2
        :pswitch_cd
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter "icicle"

    .prologue
    .line 239
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 241
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    .line 242
    const-string v11, "statusbar"

    invoke-virtual {p0, v11}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/StatusBarManager;

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 245
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/high16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 247
    const-string v11, "tablet_device"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_31

    .line 249
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/android/phone/EmergencyDialer;->setRequestedOrientation(I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/high16 v12, 0x10

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 253
    :cond_31
    const-string v11, "lock"

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "missing_phone_lock"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    .line 255
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 257
    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_71

    iget-boolean v11, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v11, :cond_71

    .line 258
    const-string v11, "power"

    invoke-virtual {p0, v11}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 259
    .local v8, pm:Landroid/os/PowerManager;
    const/16 v11, 0xa

    const-string v12, "EmergencyDialer"

    invoke-virtual {v8, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 260
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_71

    .line 261
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 266
    .end local v8           #pm:Landroid/os/PowerManager;
    :cond_71
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_ENABLED:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_29a

    const/4 v4, 0x1

    .line 267
    .local v4, mIsOnehandOn:Z
    :goto_80
    const-string v11, "feature_chn_duos_cdma_gsm"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_29d

    .line 268
    const v11, 0x7f04002c

    invoke-virtual {p0, v11}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    .line 287
    :goto_8e
    const v11, 0x7f0900c2

    invoke-virtual {p0, v11}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    .line 288
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 289
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 291
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 293
    const-string v11, "support_onehand_operation"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_100

    if-eqz v4, :cond_100

    .line 294
    const v11, 0x7f0900c7

    invoke-virtual {p0, v11}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    .line 295
    const v11, 0x7f0900c6

    invoke-virtual {p0, v11}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    .line 297
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2b7

    const/4 v5, 0x1

    .line 301
    .local v5, mIsOnehandOptionRight:Z
    :goto_e7
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v11, :cond_f3

    iget-object v12, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v5, :cond_2ba

    const/4 v11, 0x0

    :goto_f0
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :cond_f3
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v11, :cond_100

    iget-object v12, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v5, :cond_2be

    const/16 v11, 0x8

    :goto_fd
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .end local v5           #mIsOnehandOptionRight:Z
    :cond_100
    sget-object v11, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    if-nez v11, :cond_110

    .line 306
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v12, "fonts/Num47_TW.ttf"

    invoke-static {v11, v12}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    sput-object v11, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    .line 309
    :cond_110
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    sget-object v12, Lcom/android/phone/EmergencyDialer;->sTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    .line 314
    const v11, 0x7f09009e

    invoke-virtual {p0, v11}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 315
    .local v10, view:Landroid/view/View;
    if-eqz v10, :cond_126

    .line 316
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    .line 319
    :cond_126
    const v11, 0x7f0900aa

    invoke-virtual {p0, v11}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    .line 322
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 323
    .local v9, res:Landroid/content/res/Resources;
    const v11, 0x7f0b0009

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_310

    .line 325
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v12, 0x7f0900ab

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 326
    .local v2, emergenyContactsButton:Landroid/view/View;
    const-string v11, "emergency_contacts"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2c1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v11

    if-nez v11, :cond_2c1

    .line 328
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 329
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    :cond_15a
    :goto_15a
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v12, 0x7f0900ac

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    .line 348
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v12, 0x7f0900ae

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    .line 351
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v12, 0x7f0900af

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    .line 354
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const-string v11, "feature_chn_duos_cdma_gsm"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2fa

    .line 357
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2e8

    .line 358
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0201d5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    :goto_1af
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 364
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/high16 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 373
    :goto_1cb
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v12, 0x7f0900ad

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    .line 374
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 381
    .end local v2           #emergenyContactsButton:Landroid/view/View;
    :goto_1e0
    if-eqz p1, :cond_1e5

    .line 382
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 386
    :cond_1e5
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 387
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_20a

    const-string v11, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20a

    .line 388
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-static {v11, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, number:Ljava/lang/String;
    if-eqz v7, :cond_20a

    .line 390
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 396
    .end local v7           #number:Ljava/lang/String;
    :cond_20a
    iget-object v12, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v12

    .line 397
    :try_start_20d
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_20f
    .catchall {:try_start_20d .. :try_end_20f} :catchall_33a

    if-nez v11, :cond_21c

    .line 399
    :try_start_211
    new-instance v11, Landroid/media/ToneGenerator;

    const/16 v13, 0x8

    const/16 v14, 0x50

    invoke-direct {v11, v13, v14}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_21c
    .catchall {:try_start_211 .. :try_end_21c} :catchall_33a
    .catch Ljava/lang/RuntimeException; {:try_start_211 .. :try_end_21c} :catch_31c

    .line 405
    :cond_21c
    :goto_21c
    :try_start_21c
    monitor-exit v12
    :try_end_21d
    .catchall {:try_start_21c .. :try_end_21d} :catchall_33a

    .line 407
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 408
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v3}, Lcom/android/phone/EmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    :try_start_22c
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    const v12, 0x7f0b0003

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    invoke-virtual {v11, p0, v12}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_238
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22c .. :try_end_238} :catch_33d

    .line 417
    :goto_238
    const-string v11, "window"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    .line 418
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/phone/EmergencyDialer;->mLocked:Z

    .line 419
    const-string v11, "feature_ktt"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25d

    const-string v11, "20"

    const-string v12, "ril.simtype"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_273

    :cond_25d
    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_285

    const-string v11, "18"

    const-string v12, "ril.simtype"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_285

    .line 422
    :cond_273
    const/16 v11, 0x1a

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 423
    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 426
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Lcom/android/phone/EmergencyDialer;->isSystemKeyEventRequested(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/phone/EmergencyDialer;->mLocked:Z

    .line 428
    :cond_285
    const-string v11, "ril.domesticOtaStart"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    .line 430
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v12, p0, Lcom/android/phone/EmergencyDialer;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x64

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 431
    return-void

    .line 266
    .end local v0           #data:Landroid/net/Uri;
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    .end local v4           #mIsOnehandOn:Z
    .end local v9           #res:Landroid/content/res/Resources;
    .end local v10           #view:Landroid/view/View;
    :cond_29a
    const/4 v4, 0x0

    goto/16 :goto_80

    .line 269
    .restart local v4       #mIsOnehandOn:Z
    :cond_29d
    const-string v11, "support_onehand_operation"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2af

    if-eqz v4, :cond_2af

    .line 270
    const v11, 0x7f04002d

    invoke-virtual {p0, v11}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_8e

    .line 272
    :cond_2af
    const v11, 0x7f04002b

    invoke-virtual {p0, v11}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_8e

    .line 299
    :cond_2b7
    const/4 v5, 0x0

    goto/16 :goto_e7

    .line 301
    .restart local v5       #mIsOnehandOptionRight:Z
    :cond_2ba
    const/16 v11, 0x8

    goto/16 :goto_f0

    .line 302
    :cond_2be
    const/4 v11, 0x0

    goto/16 :goto_fd

    .line 334
    .end local v5           #mIsOnehandOptionRight:Z
    .restart local v2       #emergenyContactsButton:Landroid/view/View;
    .restart local v9       #res:Landroid/content/res/Resources;
    .restart local v10       #view:Landroid/view/View;
    :cond_2c1
    const-string v11, "tablet_device"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2e3

    .line 335
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :goto_2ce
    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15a

    iget-boolean v11, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v11, :cond_15a

    .line 341
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 342
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_15a

    .line 337
    :cond_2e3
    const/4 v11, 0x4

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2ce

    .line 360
    :cond_2e8
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0201a3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1af

    .line 367
    :cond_2fa
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 368
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    .line 369
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 370
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    goto/16 :goto_1cb

    .line 377
    .end local v2           #emergenyContactsButton:Landroid/view/View;
    :cond_310
    iget-object v11, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 378
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    goto/16 :goto_1e0

    .line 400
    .restart local v0       #data:Landroid/net/Uri;
    :catch_31c
    move-exception v1

    .line 401
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_31d
    const-string v11, "EmergencyDialer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception caught while creating local tone generator: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_21c

    .line 405
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_33a
    move-exception v11

    monitor-exit v12
    :try_end_33c
    .catchall {:try_start_31d .. :try_end_33c} :catchall_33a

    throw v11

    .line 413
    .restart local v3       #intentFilter:Landroid/content/IntentFilter;
    :catch_33d
    move-exception v6

    .line 414
    .local v6, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v11, "EmergencyDialer"

    const-string v12, "Vibrate control bool missing."

    invoke-static {v11, v12, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_238
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1048
    .line 1049
    if-nez p1, :cond_2d

    .line 1051
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e01bc

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e002a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1060
    :cond_2d
    return-object v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 435
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 436
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 437
    :try_start_6
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_12

    .line 438
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 441
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_42

    .line 442
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 444
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 445
    const-string v0, "EmergencyDialer"

    const-string v1, "onDestroy() : SCREEN_BRIGHT_WAKE_LOCK Release"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 448
    :cond_41
    return-void

    .line 441
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 630
    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 622
    :pswitch_9
    const/16 v0, 0x42

    if-ne p2, v0, :cond_7

    .line 623
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    .line 624
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    .line 625
    const/4 v0, 0x1

    goto :goto_8

    .line 618
    :pswitch_data_18
    .packed-switch 0x7f0900c2
        :pswitch_9
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 523
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "20"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 524
    if-ne p1, v3, :cond_1f

    .line 525
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 566
    :cond_1e
    :goto_1e
    return v0

    .line 528
    :cond_1f
    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mLocked:Z

    if-nez v1, :cond_1e

    .line 532
    :cond_23
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-eqz v1, :cond_31

    .line 533
    if-eq p1, v3, :cond_1e

    .line 538
    :cond_31
    sparse-switch p1, :sswitch_data_74

    .line 566
    :cond_34
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1e

    .line 541
    :sswitch_39
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 545
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z

    if-nez v1, :cond_1e

    .line 546
    :cond_55
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_1e

    .line 548
    :cond_59
    const-string v1, "feature_chn_duos_cdma_gsm"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 550
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->onCreateSimSelectDialog()V

    goto :goto_1e

    .line 553
    :cond_65
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_1e

    .line 559
    :sswitch_69
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_34

    .line 560
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_1e

    .line 538
    nop

    :sswitch_data_74
    .sparse-switch
        0x5 -> :sswitch_39
        0x7 -> :sswitch_69
        0x43 -> :sswitch_69
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 597
    sparse-switch p1, :sswitch_data_1a

    .line 607
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 599
    :sswitch_9
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_8

    .line 603
    :sswitch_f
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto :goto_8

    .line 597
    nop

    :sswitch_data_1a
    .sparse-switch
        0x7 -> :sswitch_9
        0x43 -> :sswitch_f
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 571
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_11

    .line 572
    sparse-switch p1, :sswitch_data_1c

    .line 592
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_15
    return v0

    .line 586
    :sswitch_16
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    .line 587
    const/4 v0, 0x1

    goto :goto_15

    .line 572
    nop

    :sswitch_data_1c
    .sparse-switch
        0x7 -> :sswitch_16
        0x8 -> :sswitch_16
        0x9 -> :sswitch_16
        0xa -> :sswitch_16
        0xb -> :sswitch_16
        0xc -> :sswitch_16
        0xd -> :sswitch_16
        0xe -> :sswitch_16
        0xf -> :sswitch_16
        0x10 -> :sswitch_16
        0x11 -> :sswitch_16
        0x12 -> :sswitch_16
        0x43 -> :sswitch_16
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 823
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 824
    .local v0, id:I
    sparse-switch v0, :sswitch_data_20

    move v1, v2

    .line 838
    :goto_a
    return v1

    .line 826
    :sswitch_b
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 830
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_a

    .line 834
    :sswitch_1a
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_a

    .line 824
    :sswitch_data_20
    .sparse-switch
        0x7f0900a8 -> :sswitch_1a
        0x7f0900ad -> :sswitch_b
    .end sparse-switch
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 900
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 902
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 903
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 904
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 905
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v2}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 907
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 911
    :cond_2c
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 913
    const-string v0, "emergency_dialer_tones"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 914
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 915
    :try_start_3a
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_46

    .line 916
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 919
    :cond_46
    monitor-exit v1

    .line 921
    :cond_47
    return-void

    .line 919
    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_48

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 471
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 477
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 478
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1137
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1138
    if-nez p1, :cond_11

    move-object v0, p2

    .line 1139
    check-cast v0, Landroid/app/AlertDialog;

    .line 1140
    .local v0, alert:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1142
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_11
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 452
    const-string v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 453
    return-void
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 843
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 845
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 846
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v4, -0x1000001

    and-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 847
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 850
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "dtmf_tone"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_89

    move v2, v3

    :goto_28
    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    .line 854
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 858
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v4

    .line 859
    :try_start_32
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_a8

    if-nez v2, :cond_41

    .line 861
    :try_start_36
    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v5, 0x8

    const/16 v6, 0x50

    invoke-direct {v2, v5, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_a8
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_41} :catch_8b

    .line 868
    :cond_41
    :goto_41
    :try_start_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_a8

    .line 873
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 874
    const-string v2, "emergency_dialer_home_recent_block"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 875
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v4, 0x120

    invoke-virtual {v2, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 877
    :cond_58
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mApp:Lcom/android/phone/PhoneApp;

    sget-object v4, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v2, v4}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 879
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    .line 881
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 882
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDomesticOtaStart:Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 884
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 885
    const/16 v2, 0x1a

    invoke-direct {p0, v2, v3}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    .line 887
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v3, 0x47

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 893
    :cond_88
    return-void

    .line 850
    :cond_89
    const/4 v2, 0x0

    goto :goto_28

    .line 863
    :catch_8b
    move-exception v0

    .line 864
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_8c
    const-string v2, "EmergencyDialer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught while creating local tone generator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_41

    .line 868
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_a8
    move-exception v2

    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_8c .. :try_end_aa} :catchall_a8

    throw v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 458
    const-string v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 925
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 926
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 927
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 215
    return-void
.end method

.method playTone(I)V
    .registers 6
    .parameter

    .prologue
    .line 1011
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v0, :cond_5

    .line 1036
    :cond_4
    :goto_4
    return-void

    .line 1020
    :cond_5
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1021
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1022
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 1027
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1028
    :try_start_19
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_3a

    .line 1029
    const-string v0, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    monitor-exit v1

    goto :goto_4

    .line 1035
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_37

    throw v0

    .line 1034
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x96

    invoke-virtual {v0, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1035
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_37

    goto :goto_4
.end method
