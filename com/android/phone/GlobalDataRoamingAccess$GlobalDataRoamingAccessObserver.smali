.class Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;
.super Landroid/database/ContentObserver;
.source "GlobalDataRoamingAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GlobalDataRoamingAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalDataRoamingAccessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GlobalDataRoamingAccess;


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalDataRoamingAccess;)V
    .registers 3
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 160
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 167
    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #calls: Lcom/android/phone/GlobalDataRoamingAccess;->getMode()I
    invoke-static {v1}, Lcom/android/phone/GlobalDataRoamingAccess;->access$000(Lcom/android/phone/GlobalDataRoamingAccess;)I

    move-result v0

    .line 168
    .local v0, mode:I
    invoke-static {}, Lcom/android/phone/GlobalDataRoamingAccess;->access$100()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "GlobalDataRoamingAccess"

    const-string v2, "onChange(): RoamSettingsObserver"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_16
    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v1}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$GlobalDataRoamingAccessObserver;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v1}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 170
    :cond_27
    return-void
.end method
