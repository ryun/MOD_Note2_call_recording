.class Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneNumberLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PhoneNumberLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateVersionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .registers 2
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocator;Lcom/android/phone/callsettings/PhoneNumberLocator$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    .line 713
    return-void
.end method
