.class public Lcom/android/phone/ManageConferenceUtils;
.super Ljava/lang/Object;
.source "ManageConferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    }
.end annotation


# instance fields
.field private mButtonManageConferenceDone:Landroid/view/View;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceTime:Landroid/widget/Chronometer;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mNumCallersInConference:I


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .registers 4
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "ManageConferenceUtils constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 100
    iput-object p2, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ManageConferenceUtils;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ManageConferenceUtils;)[Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 373
    const-string v0, "ManageConferenceUtils"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .registers 4
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 377
    const-string v0, "ManageConferenceUtils"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 378
    return-void
.end method


# virtual methods
.method public final displayCallerImageForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/ImageView;)V
    .registers 4
    .parameter "ci"
    .parameter "callerImageView"

    .prologue
    .line 326
    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 327
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :goto_b
    return-void

    .line 329
    :cond_c
    const v0, 0x7f020192

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b
.end method

.method public final displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 12
    .parameter "ci"
    .parameter "presentation"
    .parameter "nameTextView"
    .parameter "numberTypeTextView"
    .parameter "numberTextView"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 287
    const-string v0, ""

    .line 288
    .local v0, callerName:Ljava/lang/String;
    const-string v1, ""

    .line 289
    .local v1, callerNumber:Ljava/lang/String;
    const-string v2, ""

    .line 290
    .local v2, callerNumberType:Ljava/lang/String;
    if-eqz p1, :cond_21

    .line 291
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 295
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 296
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_21
    :goto_21
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 314
    invoke-virtual {p5, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :goto_33
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    return-void

    .line 297
    :cond_37
    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 299
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    goto :goto_21

    .line 301
    :cond_42
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_21

    .line 304
    :cond_45
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 305
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_21

    .line 317
    :cond_4a
    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33
.end method

.method public endConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> ENDING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 343
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 347
    return-void
.end method

.method public getNumCallersInConference()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    return v0
.end method

.method public initManageConferencePanel()V
    .registers 8

    .prologue
    const/4 v6, 0x5

    .line 104
    const-string v3, "initManageConferencePanel()..."

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;Z)V

    .line 105
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v3, :cond_81

    .line 106
    const-string v3, "initManageConferencePanel: first-time initialization!"

    invoke-direct {p0, v3}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f09014f

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 110
    .local v1, stub:Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 112
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f09017b

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 114
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v3, :cond_37

    .line 115
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_37
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f09017c

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    .line 121
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v5, 0x7f0e0186

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 124
    new-array v3, v6, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 126
    new-array v2, v6, [I

    fill-array-data v2, :array_82

    .line 128
    .local v2, viewGroupIdList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5c
    if-ge v0, v6, :cond_6f

    .line 129
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    aget v5, v2, v0

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 133
    :cond_6f
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f09017f

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/view/View;

    .line 134
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUtils;->mButtonManageConferenceDone:Landroid/view/View;

    iget-object v4, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .end local v0           #i:I
    .end local v1           #stub:Landroid/view/ViewStub;
    .end local v2           #viewGroupIdList:[I
    :cond_81
    return-void

    .line 126
    :array_82
    .array-data 0x4
        0x81t 0x1t 0x9t 0x7ft
        0x82t 0x1t 0x9t 0x7ft
        0x83t 0x1t 0x9t 0x7ft
        0x84t 0x1t 0x9t 0x7ft
        0x85t 0x1t 0x9t 0x7ft
    .end array-data
.end method

.method public separateConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> SEPARATING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 359
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 369
    return-void
.end method

.method public setPanelVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 143
    iget-object v1, p0, Lcom/android/phone/ManageConferenceUtils;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 145
    :cond_c
    return-void

    .line 143
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public startConferenceTime(J)V
    .registers 4
    .parameter "base"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_e

    .line 152
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 155
    :cond_e
    return-void
.end method

.method public stopConferenceTime()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_9

    .line 162
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 164
    :cond_9
    return-void
.end method

.method public updateManageConferencePanel(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateManageConferencePanel()... num connections in conference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;Z)V

    .line 185
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 186
    .local v2, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/ManageConferenceUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 187
    .local v3, hasHoldingCall:Z
    if-eqz v2, :cond_30

    if-nez v3, :cond_44

    .line 189
    .local v0, canSeparate:Z
    :cond_30
    :goto_30
    const/4 v4, 0x0

    .local v4, i:I
    :goto_31
    const/4 v6, 0x5

    if-ge v4, v6, :cond_4b

    .line 190
    iget v6, p0, Lcom/android/phone/ManageConferenceUtils;->mNumCallersInConference:I

    if-ge v4, v6, :cond_46

    .line 192
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 193
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0, v4, v1, v0}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    .line 189
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .end local v0           #canSeparate:Z
    .end local v4           #i:I
    :cond_44
    move v0, v5

    .line 187
    goto :goto_30

    .line 196
    .restart local v0       #canSeparate:Z
    .restart local v4       #i:I
    :cond_46
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v5}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    goto :goto_41

    .line 199
    :cond_4b
    return-void
.end method

.method public updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
    .registers 17
    .parameter "i"
    .parameter "connection"
    .parameter "canSeparate"

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateManageConferenceRow("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")...  connection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 217
    if-eqz p2, :cond_e0

    .line 219
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 223
    .local v7, endButton:Landroid/view/View;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 225
    .local v11, separateButton:Landroid/view/View;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 227
    .local v3, nameTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 229
    .local v5, numberTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 232
    .local v4, numberTypeTextView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 235
    .local v6, callerImageView:Landroid/widget/ImageView;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- button: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nameTextView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 238
    new-instance v8, Lcom/android/phone/ManageConferenceUtils$1;

    invoke-direct {v8, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$1;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 245
    .local v8, endThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    if-eqz p3, :cond_db

    .line 248
    new-instance v12, Lcom/android/phone/ManageConferenceUtils$2;

    invoke-direct {v12, p0, p1, p2}, Lcom/android/phone/ManageConferenceUtils$2;-><init>(Lcom/android/phone/ManageConferenceUtils;ILcom/android/internal/telephony/Connection;)V

    .line 255
    .local v12, separateThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .end local v12           #separateThisConnection:Landroid/view/View$OnClickListener;
    :goto_aa
    new-instance v10, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;

    invoke-direct {v10, p0, p1}, Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;-><init>(Lcom/android/phone/ManageConferenceUtils;I)V

    .line 263
    .local v10, listener:Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, p2, v10, p2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v9

    .line 266
    .local v9, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - got info from startGetCallerInfo(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ManageConferenceUtils;->log(Ljava/lang/String;)V

    .line 269
    iget-object v1, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/ManageConferenceUtils;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 271
    iget-object v0, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0, v0, v6}, Lcom/android/phone/ManageConferenceUtils;->displayCallerImageForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/ImageView;)V

    .line 276
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTypeTextView:Landroid/widget/TextView;
    .end local v5           #numberTextView:Landroid/widget/TextView;
    .end local v6           #callerImageView:Landroid/widget/ImageView;
    .end local v7           #endButton:Landroid/view/View;
    .end local v8           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v9           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v10           #listener:Lcom/android/phone/ManageConferenceUtils$QueryCompleteListener;
    .end local v11           #separateButton:Landroid/view/View;
    :goto_da
    return-void

    .line 258
    .restart local v3       #nameTextView:Landroid/widget/TextView;
    .restart local v4       #numberTypeTextView:Landroid/widget/TextView;
    .restart local v5       #numberTextView:Landroid/widget/TextView;
    .restart local v6       #callerImageView:Landroid/widget/ImageView;
    .restart local v7       #endButton:Landroid/view/View;
    .restart local v8       #endThisConnection:Landroid/view/View$OnClickListener;
    .restart local v11       #separateButton:Landroid/view/View;
    :cond_db
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_aa

    .line 274
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTypeTextView:Landroid/widget/TextView;
    .end local v5           #numberTextView:Landroid/widget/TextView;
    .end local v6           #callerImageView:Landroid/widget/ImageView;
    .end local v7           #endButton:Landroid/view/View;
    .end local v8           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v11           #separateButton:Landroid/view/View;
    :cond_e0
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUtils;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_da
.end method
