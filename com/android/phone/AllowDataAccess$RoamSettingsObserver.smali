.class Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AllowDataAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AllowDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AllowDataAccess;


# direct methods
.method constructor <init>(Lcom/android/phone/AllowDataAccess;)V
    .registers 3
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;->this$0:Lcom/android/phone/AllowDataAccess;

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 216
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 221
    iget-object v1, p0, Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;->this$0:Lcom/android/phone/AllowDataAccess;

    invoke-virtual {v1}, Lcom/android/phone/AllowDataAccess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 223
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v1, "AllowDataAccess"

    const-string v2, "onChange(): RoamSettingsObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/phone/AllowDataAccess$RoamSettingsObserver;->this$0:Lcom/android/phone/AllowDataAccess;

    invoke-virtual {v1}, Lcom/android/phone/AllowDataAccess;->finish()V

    .line 225
    return-void
.end method
