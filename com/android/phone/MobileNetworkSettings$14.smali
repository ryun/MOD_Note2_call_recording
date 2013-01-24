.class Lcom/android/phone/MobileNetworkSettings$14;
.super Landroid/telephony/PhoneStateListener;
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
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$14;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1151
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3
    .parameter "serviceState"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$14;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v0, p1}, Lcom/android/phone/MobileNetworkSettings;->roamingState(Landroid/telephony/ServiceState;)V

    .line 1155
    return-void
.end method
