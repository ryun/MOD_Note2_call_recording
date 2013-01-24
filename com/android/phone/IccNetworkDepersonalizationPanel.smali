.class public Lcom/android/phone/IccNetworkDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccNetworkDepersonalizationPanel.java"


# instance fields
.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 97
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 263
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 301
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateBusy()V

    return-void
.end method

.method private hideAlert()V
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    return-void
.end method

.method private indicateBusy()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e004b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    return-void
.end method

.method private indicateError()V
    .registers 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e004c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    return-void
.end method

.method private indicateSuccess()V
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 309
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccNetworkDepersonalizationPanel] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x1

    .line 182
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const v6, 0x7f040085

    invoke-virtual {p0, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setContentView(I)V

    .line 187
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Phone_DisableEnterNCK"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    .line 189
    .local v1, disableEnterNCK:Z
    if-ne v1, v9, :cond_af

    .line 190
    const v6, 0x7f0901f8

    invoke-virtual {p0, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 192
    .local v2, mLabel:Landroid/widget/TextView;
    const v6, 0x7f0e060e

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 200
    .end local v2           #mLabel:Landroid/widget/TextView;
    :goto_28
    const v6, 0x7f0901fa

    invoke-virtual {p0, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 201
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 202
    if-ne v1, v9, :cond_bd

    .line 204
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 215
    :goto_41
    const v6, 0x7f0901f7

    invoke-virtual {p0, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 217
    const v6, 0x7f0901fb

    invoke-virtual {p0, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 218
    if-ne v1, v9, :cond_e3

    .line 220
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    :goto_5e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Phone_DisableQuitNetworkLockByManual"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 231
    .local v0, disableDismiss:Z
    const v6, 0x7f0901fc

    invoke-virtual {p0, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 232
    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_ec

    if-eq v0, v9, :cond_ec

    .line 235
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :goto_92
    const v6, 0x7f0901fd

    invoke-virtual {p0, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 244
    const v6, 0x7f0901fe

    invoke-virtual {p0, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 246
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 247
    return-void

    .line 194
    .end local v0           #disableDismiss:Z
    :cond_af
    const v6, 0x7f0901f9

    invoke-virtual {p0, v6}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 196
    .local v3, mLockIcon:Landroid/widget/ImageView;
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_28

    .line 206
    .end local v3           #mLockIcon:Landroid/widget/ImageView;
    :cond_bd
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 207
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .local v5, text:Ljava/lang/CharSequence;
    move-object v4, v5

    .line 211
    check-cast v4, Landroid/text/Spannable;

    .line 212
    .local v4, span:Landroid/text/Spannable;
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x12

    invoke-interface {v4, v6, v11, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_41

    .line 222
    .end local v4           #span:Landroid/text/Spannable;
    .end local v5           #text:Ljava/lang/CharSequence;
    :cond_e3
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5e

    .line 239
    .restart local v0       #disableDismiss:Z
    :cond_ec
    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_92
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 256
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 257
    const/4 v0, 0x1

    .line 260
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 252
    return-void
.end method
