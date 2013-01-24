.class Lcom/android/phone/MobileNetworkSettings$1;
.super Landroid/database/ContentObserver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$1;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 178
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$1;->this$0:Lcom/android/phone/MobileNetworkSettings;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 179
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$1;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 180
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$1;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 181
    :cond_22
    return-void
.end method
