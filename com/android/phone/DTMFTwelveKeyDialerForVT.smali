.class public Lcom/android/phone/DTMFTwelveKeyDialerForVT;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialerForVT.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final mToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDTMFBurstCnfPending:Z

.field private mDTMFQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mDTMFToneEnabled:Z

.field private mDTMFToneType:I

.field private mDialerDrawer:Landroid/widget/SlidingDrawer;

.field private mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

.field private mDialpadDigits:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

.field private mIsHardwareKeyPressed:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mVTManager:Lsiso/vt/VTManager;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x2a

    const/16 v5, 0x23

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    if-lt v0, v4, :cond_1ae

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    .line 95
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v3, 0x31

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09009e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f09009f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0900a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0900a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0900a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0900a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0900a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0900a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0900a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0900a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0900a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f0900a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void

    :cond_1ae
    move v0, v2

    .line 54
    goto/16 :goto_c
.end method

.method public constructor <init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Landroid/widget/SlidingDrawer;)V
    .registers 9
    .parameter "parent"
    .parameter "dialerView"
    .parameter "dialerDrawer"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    .line 70
    iput-object v4, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mVTManager:Lsiso/vt/VTManager;

    .line 76
    iput-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    .line 79
    iput-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mIsHardwareKeyPressed:Z

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    .line 396
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mHandler:Landroid/os/Handler;

    .line 431
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_29

    .line 432
    const-string v0, "DTMFTwelveKeyDialer constructor..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 434
    :cond_29
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    .line 435
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 439
    if-nez p2, :cond_41

    .line 440
    const-string v0, "DTMFTwelveKeyDialerForVT"

    const-string v1, "DTMFTwelveKeyDialer: null dialerView!"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    :cond_41
    iput-object p2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    .line 445
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_5f

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Got passed-in mDialerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 448
    :cond_5f
    iput-object p3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    .line 449
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_7d

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Got passed-in mDialerDrawer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 452
    :cond_7d
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    if-eqz v0, :cond_a8

    .line 453
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    .line 460
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    .line 462
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_a3

    .line 463
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    .line 464
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 468
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 477
    :cond_a3
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-direct {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)V

    .line 480
    :cond_a8
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_b6

    .line 481
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 482
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 485
    :cond_b6
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mIsHardwareKeyPressed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/DTMFTwelveKeyDialerForVT;C)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 981
    const-string v0, "DTMFTwelveKeyDialerForVT"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void
.end method

.method private onDialerClose()V
    .registers 3

    .prologue
    .line 577
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_9

    .line 578
    const-string v0, "onDialerClose()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 584
    :cond_9
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 587
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->onDialerClose()V

    .line 588
    return-void
.end method

.method private onDialerOpen()V
    .registers 5

    .prologue
    .line 516
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_9

    .line 517
    const-string v0, "onDialerOpen()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 521
    :cond_9
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->onDialerOpen()V

    .line 529
    return-void
.end method

.method private final processDtmf(C)V
    .registers 4
    .parameter "c"

    .prologue
    .line 846
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 847
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_26

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updating display and sending dtmf tone for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 851
    :cond_26
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_64

    .line 861
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mIsHardwareKeyPressed:Z

    if-nez v0, :cond_37

    .line 862
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 864
    :cond_37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mIsHardwareKeyPressed:Z

    .line 867
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    .line 868
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/InVTCallScreen;->mDtmfString:Ljava/lang/String;

    .line 873
    :cond_64
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 875
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startTone(C)V

    .line 882
    :cond_73
    :goto_73
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 883
    return-void

    .line 877
    :cond_7b
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_73

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring dtmf request for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    goto :goto_73
.end method

.method private sendShortDtmfToNetwork(C)V
    .registers 7
    .parameter "dtmfDigit"

    .prologue
    const/4 v3, 0x1

    .line 1066
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 1067
    :try_start_4
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    if-ne v1, v3, :cond_14

    .line 1069
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1079
    :goto_12
    monitor-exit v2

    .line 1080
    return-void

    .line 1071
    :cond_14
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, dtmfStr:Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v1, :cond_34

    const-string v1, "DTMFTwelveKeyDialerForVT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dtmfsent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    goto :goto_12

    .line 1079
    .end local v0           #dtmfStr:Ljava/lang/String;
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)V
    .registers 6
    .parameter "dialerView"

    .prologue
    .line 630
    sget-object v3, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 632
    .local v2, viewId:I
    invoke-virtual {p1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 634
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 635
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 636
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_a

    .line 638
    .end local v0           #button:Landroid/view/View;
    .end local v2           #viewId:I
    :cond_29
    return-void
.end method

.method private startTone(C)V
    .registers 6
    .parameter "c"

    .prologue
    .line 988
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 989
    .local v0, phoneType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 990
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startDtmfTone(C)V

    .line 996
    :goto_c
    return-void

    .line 991
    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startToneCdma(C)V

    goto :goto_c

    .line 994
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private stopTone()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1002
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1003
    .local v0, phoneType:I
    if-ne v0, v2, :cond_d

    .line 1004
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopDtmfTone()V

    .line 1013
    :cond_c
    :goto_c
    return-void

    .line 1005
    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 1007
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    if-ne v1, v2, :cond_c

    .line 1008
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopToneCdma()V

    goto :goto_c

    .line 1011
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private stopToneCdma()V
    .registers 2

    .prologue
    .line 1087
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_9

    .line 1088
    const-string v0, "stopping remote tone."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1090
    :cond_9
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1091
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopLocalToneCdma()V

    .line 1092
    return-void
.end method


# virtual methods
.method public closeDialer(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 789
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_9

    .line 790
    const-string v0, "closeDialer()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 792
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 793
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_21

    .line 795
    if-eqz p1, :cond_1b

    .line 796
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateToggle()V

    .line 812
    :cond_1a
    :goto_1a
    return-void

    .line 798
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    goto :goto_1a

    .line 804
    :cond_21
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    .line 809
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerClose()V

    goto :goto_1a
.end method

.method handleBurstDtmfConfirmation()V
    .registers 7

    .prologue
    .line 1119
    const/4 v1, 0x0

    .line 1120
    .local v1, dtmfChar:Ljava/lang/Character;
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 1121
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFBurstCnfPending:Z

    .line 1122
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    .line 1123
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    .line 1124
    sget-boolean v2, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v2, :cond_35

    const-string v2, "DTMFTwelveKeyDialerForVT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dtmf character removed from queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_40

    .line 1127
    if-eqz v1, :cond_3f

    .line 1128
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->sendShortDtmfToNetwork(C)V

    .line 1130
    :cond_3f
    return-void

    .line 1126
    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v2
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_b

    .line 729
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    .line 732
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onDrawerClosed()V
    .registers 1

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerClose()V

    .line 837
    return-void
.end method

.method public onDrawerOpened()V
    .registers 1

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerOpen()V

    .line 830
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 699
    const/16 v1, 0x17

    if-ne p2, v1, :cond_1b

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 701
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 702
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 716
    .end local v0           #viewId:I
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    return v1

    .line 704
    .restart local v0       #viewId:I
    :pswitch_1d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1b

    .line 705
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V

    goto :goto_1b

    .line 709
    :pswitch_37
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V

    goto :goto_1b

    .line 702
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_37
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 645
    packed-switch p1, :pswitch_data_18

    .line 654
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InVTCallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_a
    return v0

    .line 649
    :pswitch_b
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v1, :cond_14

    .line 650
    const-string v1, "exit requested"

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 651
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    goto :goto_a

    .line 645
    :pswitch_data_18
    .packed-switch 0x4
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InVTCallScreen;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 672
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 673
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 689
    :cond_17
    :goto_17
    :pswitch_17
    const/4 v1, 0x0

    return v1

    .line 678
    :pswitch_19
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V

    goto :goto_17

    .line 683
    :pswitch_2d
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V

    goto :goto_17

    .line 673
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2d
        :pswitch_17
        :pswitch_2d
    .end packed-switch
.end method

.method public openDialer(Z)V
    .registers 4
    .parameter "animate"

    .prologue
    .line 751
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_9

    .line 752
    const-string v0, "openDialer()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 754
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 755
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_21

    .line 757
    if-eqz p1, :cond_1b

    .line 758
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateToggle()V

    .line 780
    :cond_1a
    :goto_1a
    return-void

    .line 760
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    goto :goto_1a

    .line 766
    :cond_21
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDtmfString:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mDtmfString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_51

    .line 770
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->mDtmfString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialpadDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->mDtmfString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 777
    :cond_51
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onDialerOpen()V

    goto :goto_1a
.end method

.method public setHandleVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_c

    .line 821
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 823
    :cond_c
    return-void

    .line 821
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method public setVTManagerInstance(Lsiso/vt/VTManager;)V
    .registers 2
    .parameter "vtManager"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mVTManager:Lsiso/vt/VTManager;

    .line 191
    return-void
.end method

.method public startDialerSession()V
    .registers 6

    .prologue
    .line 550
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    .line 557
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v1, :cond_1a

    .line 558
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 559
    :try_start_a
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_3a

    if-nez v1, :cond_19

    .line 561
    :try_start_e
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x50

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_3a
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_19} :catch_1b

    .line 568
    :cond_19
    :goto_19
    :try_start_19
    monitor-exit v2

    .line 570
    :cond_1a
    return-void

    .line 562
    :catch_1b
    move-exception v0

    .line 563
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v1, :cond_36

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating local tone generator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 565
    :cond_36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_19

    .line 568
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_3a
    move-exception v1

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method startDtmfTone(C)V
    .registers 6
    .parameter "tone"

    .prologue
    .line 921
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_9

    .line 922
    const-string v0, "startDtmfTone()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 924
    :cond_9
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mVTManager:Lsiso/vt/VTManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsiso/vt/VTManager;->sendDTMF(Ljava/lang/String;I)V

    .line 926
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_39

    .line 927
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 928
    :try_start_1a
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_3a

    .line 929
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_38

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmfTone: mToneGenerator == null, tone: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 936
    :cond_38
    :goto_38
    monitor-exit v1

    .line 938
    :cond_39
    return-void

    .line 932
    :cond_3a
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_54

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting local tone "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 934
    :cond_54
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_38

    .line 936
    :catchall_6a
    move-exception v0

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_1a .. :try_end_6c} :catchall_6a

    throw v0
.end method

.method startLocalToneCdma(C)V
    .registers 7
    .parameter "tone"

    .prologue
    .line 1040
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v1, :cond_26

    .line 1041
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1042
    :try_start_7
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_27

    .line 1043
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v1, :cond_25

    .line 1044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startToneCdma: mToneGenerator == null, tone: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1056
    :cond_25
    :goto_25
    monitor-exit v2

    .line 1058
    :cond_26
    return-void

    .line 1046
    :cond_27
    sget-boolean v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v1, :cond_41

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting local tone "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1050
    :cond_41
    const/4 v0, -0x1

    .line 1051
    .local v0, toneDuration:I
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    if-nez v1, :cond_48

    .line 1052
    const/16 v0, 0x78

    .line 1054
    :cond_48
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_25

    .line 1056
    .end local v0           #toneDuration:I
    :catchall_5e
    move-exception v1

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_7 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method startToneCdma(C)V
    .registers 5
    .parameter "tone"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mInVTCallScreen:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    .line 1024
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneType:I

    if-nez v0, :cond_1a

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->sendShortDtmfToNetwork(C)V

    .line 1032
    :goto_16
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startLocalToneCdma(C)V

    .line 1033
    return-void

    .line 1028
    :cond_1a
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_36

    const-string v0, "DTMFTwelveKeyDialerForVT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send long dtmf for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_36
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_16
.end method

.method stopDtmfTone()V
    .registers 3

    .prologue
    .line 949
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_9

    .line 950
    const-string v0, "stopDtmfTone()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 954
    :cond_9
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_12

    .line 955
    const-string v0, "trying to stop local tone..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 956
    :cond_12
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_27

    .line 957
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 958
    :try_start_19
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_28

    .line 959
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_26

    .line 960
    const-string v0, "stopDtmfTone: mToneGenerator == null"

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 966
    :cond_26
    :goto_26
    monitor-exit v1

    .line 968
    :cond_27
    return-void

    .line 962
    :cond_28
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_31

    .line 963
    const-string v0, "stopping local tone."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 964
    :cond_31
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_26

    .line 966
    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_37

    throw v0
.end method

.method stopLocalToneCdma()V
    .registers 3

    .prologue
    .line 1099
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_9

    .line 1100
    const-string v0, "trying to stop local tone..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1101
    :cond_9
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_1e

    .line 1102
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1103
    :try_start_10
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1f

    .line 1104
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_1d

    .line 1105
    const-string v0, "stopLocalToneCdma: mToneGenerator == null"

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1111
    :cond_1d
    :goto_1d
    monitor-exit v1

    .line 1113
    :cond_1e
    return-void

    .line 1107
    :cond_1f
    sget-boolean v0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->DBG:Z

    if-eqz v0, :cond_28

    .line 1108
    const-string v0, "stopping local tone."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V

    .line 1109
    :cond_28
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_1d

    .line 1111
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_2e

    throw v0
.end method
