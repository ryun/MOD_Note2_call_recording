.class Lcom/android/phone/MobileNetworkSettings$4;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$4;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 277
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$4;->this$0:Lcom/android/phone/MobileNetworkSettings;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 278
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$4;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #setter for: Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z
    invoke-static {v1, v3}, Lcom/android/phone/MobileNetworkSettings;->access$102(Lcom/android/phone/MobileNetworkSettings;Z)Z

    .line 280
    return-void
.end method
