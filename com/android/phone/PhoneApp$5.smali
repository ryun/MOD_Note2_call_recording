.class Lcom/android/phone/PhoneApp$5;
.super Landroid/database/ContentObserver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 3889
    iput-object p1, p0, Lcom/android/phone/PhoneApp$5;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2
    .parameter "selfChange"

    .prologue
    .line 3891
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingDataRoaming()V

    .line 3892
    return-void
.end method
