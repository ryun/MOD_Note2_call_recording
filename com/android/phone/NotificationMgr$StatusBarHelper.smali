.class public Lcom/android/phone/NotificationMgr$StatusBarHelper;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusBarHelper"
.end annotation


# instance fields
.field private mIsExpandedViewEnabled:Z

.field private mIsNotificationEnabled:Z

.field private mIsSystemBarNavigationEnabled:Z

.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method private constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 233
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    .line 230
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    .line 231
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    .line 234
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;)V

    return-void
.end method

.method private updateStatusBar()V
    .registers 5

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, state:I
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    if-nez v1, :cond_8

    .line 309
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 311
    :cond_8
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    if-nez v1, :cond_f

    .line 312
    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 314
    :cond_f
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    if-nez v1, :cond_1c

    .line 316
    const/high16 v1, 0x20

    or-int/2addr v0, v1

    .line 317
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 318
    const/high16 v1, 0x40

    or-int/2addr v0, v1

    .line 321
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatusBar: state = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    .line 322
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$400(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 323
    return-void
.end method


# virtual methods
.method public enableExpandedView(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 257
    iget-boolean v2, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    if-eq v2, p1, :cond_60

    .line 263
    const-string v2, "ims_vt_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, isVideoCall:Z
    iget-object v2, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_61

    :cond_2e
    move v0, v1

    .line 269
    :goto_2f
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableExpandedView ...isVideoCall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 270
    if-nez p1, :cond_7b

    if-nez v0, :cond_7b

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_7b

    .line 271
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "enableExpandedView : Don\'t block expanding statusbar"

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 285
    .end local v0           #isVideoCall:Z
    :cond_60
    :goto_60
    return-void

    .line 266
    .restart local v0       #isVideoCall:Z
    :cond_61
    const/4 v0, 0x0

    goto :goto_2f

    .line 277
    .end local v0           #isVideoCall:Z
    :cond_63
    if-nez p1, :cond_7b

    iget-object v2, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_7b

    .line 278
    iget-object v2, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v3, "enableExpandedView : Don\'t block expanding statusbar"

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;Ljava/lang/String;Z)V

    goto :goto_60

    .line 282
    :cond_7b
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsExpandedViewEnabled:Z

    .line 283
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    goto :goto_60
.end method

.method public enableNotificationAlerts(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    if-eq v0, p1, :cond_9

    .line 244
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsNotificationEnabled:Z

    .line 245
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 247
    :cond_9
    return-void
.end method

.method public enableSystemBarNavigation(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    if-eq v0, p1, :cond_9

    .line 297
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    .line 298
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar()V

    .line 300
    :cond_9
    return-void
.end method
