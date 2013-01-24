.class public Lcom/android/phone/RejectCallWithMsgContent;
.super Landroid/widget/LinearLayout;
.source "RejectCallWithMsgContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RejectCallWithMsgContent$SendMsgRunnable;,
        Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;
    }
.end annotation


# static fields
.field private static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private FROM:[Ljava/lang/String;

.field private mBtnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mNetType:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field private mRemindButton:Landroid/widget/LinearLayout;

.field private mRemindDialog:Landroid/app/AlertDialog;

.field private mSendMsgListener:Landroid/view/View$OnClickListener;

.field remindtimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field strList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const-string v0, "content://com.android.phone.callsettings/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RejectCallWithMsgContent;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    .line 63
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    .line 64
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindButton:Landroid/widget/LinearLayout;

    .line 65
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    .line 66
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    .line 83
    iput v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I

    .line 85
    iput v3, p0, Lcom/android/phone/RejectCallWithMsgContent;->mNetType:I

    .line 87
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "reject_message"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "edit_checked"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "remind_time"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->FROM:[Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->strList:Ljava/util/ArrayList;

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->remindtimeList:Ljava/util/ArrayList;

    .line 100
    new-instance v1, Lcom/android/phone/RejectCallWithMsgContent$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgContent$1;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v1, Lcom/android/phone/RejectCallWithMsgContent$2;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgContent$2;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;

    .line 188
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 189
    .local v0, inflater:Landroid/view/LayoutInflater;
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 190
    const v1, 0x7f040070

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 198
    :goto_5b
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    .line 199
    return-void

    .line 194
    :cond_5e
    const v1, 0x7f04006f

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_5b
.end method

.method private RemindmeDialog()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 346
    new-array v2, v8, [I

    fill-array-data v2, :array_98

    .line 347
    .local v2, remind_time:[I
    new-array v3, v8, [Ljava/lang/CharSequence;

    .line 348
    .local v3, remind_time_item:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v8, :cond_5a

    .line 349
    if-ge v1, v10, :cond_2e

    .line 350
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgContent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0757

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 348
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 353
    :cond_2e
    if-ne v1, v10, :cond_3e

    .line 354
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgContent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0758

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_2b

    .line 357
    :cond_3e
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgContent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0759

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_2b

    .line 361
    :cond_5a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    .local v0, RemindmeD:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgContent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e074c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 363
    new-instance v4, Lcom/android/phone/RejectCallWithMsgContent$6;

    invoke-direct {v4, p0}, Lcom/android/phone/RejectCallWithMsgContent$6;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v0, v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgContent;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/phone/RejectCallWithMsgContent$5;

    invoke-direct {v6, p0}, Lcom/android/phone/RejectCallWithMsgContent$5;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    .line 412
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 413
    return-void

    .line 346
    nop

    :array_98
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/RejectCallWithMsgContent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mNetType:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/RejectCallWithMsgContent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mNetType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/RejectCallWithMsgContent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/RejectCallWithMsgContent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/RejectCallWithMsgContent;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/RejectCallWithMsgContent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/RejectCallWithMsgContent;->RemindmeDialog()V

    return-void
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/phone/RejectCallWithMsgContent;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static constructReminderLabel(Landroid/content/Context;I)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x1

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 318
    .local v1, resources:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 319
    .local v3, value:I
    const/4 v0, 0x0

    .line 320
    .local v0, format:Ljava/lang/String;
    const/4 v2, 0x0

    .line 322
    .local v2, retString:Ljava/lang/String;
    rem-int/lit8 v4, p1, 0x3c

    if-eqz v4, :cond_2e

    .line 323
    move v3, p1

    .line 324
    if-ne v3, v5, :cond_26

    .line 325
    const v4, 0x7f0e075a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    :goto_16
    if-eq v3, v5, :cond_25

    .line 339
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 342
    :cond_25
    return-object v2

    .line 327
    :cond_26
    const v4, 0x7f0e075b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 330
    :cond_2e
    div-int/lit8 v3, p1, 0x3c

    .line 331
    if-ne v3, v5, :cond_3a

    .line 332
    const v4, 0x7f0e075c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 334
    :cond_3a
    const v4, 0x7f0e075d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method


# virtual methods
.method public disableSendMsgButton()V
    .registers 8

    .prologue
    .line 284
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/4 v6, 0x6

    if-ge v3, v6, :cond_4d

    .line 286
    :try_start_4
    iget-object v6, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 287
    .local v4, item:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_2d

    .line 288
    const-string v6, "reject_call_with_message_send_button_enable"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 289
    const v6, 0x7f0901e0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    move-object v0, v6

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    .line 290
    .local v1, btn:Landroid/widget/Button;
    if-eqz v1, :cond_2d

    .line 291
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    .end local v1           #btn:Landroid/widget/Button;
    .end local v4           #item:Landroid/widget/LinearLayout;
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 295
    .restart local v4       #item:Landroid/widget/LinearLayout;
    :cond_30
    const v6, 0x7f0901df

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 296
    .local v5, textView:Landroid/widget/TextView;
    if-eqz v5, :cond_2d

    .line 297
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_47} :catch_48

    goto :goto_2d

    .line 302
    .end local v4           #item:Landroid/widget/LinearLayout;
    .end local v5           #textView:Landroid/widget/TextView;
    :catch_48
    move-exception v2

    .line 303
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 306
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 203
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 204
    const v1, 0x7f0901d5

    invoke-virtual {p0, v1}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    .line 205
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 206
    const v1, 0x7f0901dc

    invoke-virtual {p0, v1}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindButton:Landroid/widget/LinearLayout;

    .line 207
    :cond_23
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 208
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 210
    :cond_30
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/RejectCallWithMsgContent$3;

    invoke-direct {v4, p0}, Lcom/android/phone/RejectCallWithMsgContent$3;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    if-nez v1, :cond_99

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    .line 236
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v1, 0x7f0901d6

    invoke-virtual {p0, v1}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v1, 0x7f0901d7

    invoke-virtual {p0, v1}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v1, 0x7f0901d8

    invoke-virtual {p0, v1}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v1, 0x7f0901d9

    invoke-virtual {p0, v1}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v1, 0x7f0901da

    invoke-virtual {p0, v1}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    const v1, 0x7f0901db

    invoke-virtual {p0, v1}, Lcom/android/phone/RejectCallWithMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_99
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 245
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 246
    .local v0, netMode:I
    if-ne v0, v2, :cond_c1

    move v1, v2

    :goto_ac
    iput v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I

    .line 248
    .end local v0           #netMode:I
    :cond_ae
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 249
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/RejectCallWithMsgContent$4;

    invoke-direct {v2, p0}, Lcom/android/phone/RejectCallWithMsgContent$4;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_c0
    return-void

    .restart local v0       #netMode:I
    :cond_c1
    move v1, v3

    .line 246
    goto :goto_ac
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 261
    const-string v0, "RejectCallWithMsgContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 262
    sparse-switch p1, :sswitch_data_2e

    .line 274
    :cond_1f
    :goto_1f
    return-void

    .line 264
    :sswitch_20
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgContent;->updateItemList()V

    goto :goto_1f

    .line 267
    :sswitch_24
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1f

    .line 268
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mRemindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1f

    .line 262
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_20
        0x8 -> :sswitch_24
    .end sparse-switch
.end method

.method setRejectCallNumber(Ljava/lang/String;)V
    .registers 5
    .parameter "phoneNumber"

    .prologue
    .line 309
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 310
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    .line 311
    const-string v0, "RejectCallWithMsgContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roaming area setRejectCallNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 315
    :goto_2b
    return-void

    .line 313
    :cond_2c
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mPhoneNumber:Ljava/lang/String;

    goto :goto_2b
.end method

.method updateItemList()V
    .registers 4

    .prologue
    .line 277
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_13

    .line 278
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    :cond_13
    new-instance v1, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;-><init>(Lcom/android/phone/RejectCallWithMsgContent;)V

    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgContent$updateContentsThread;->start()V

    .line 281
    return-void
.end method
