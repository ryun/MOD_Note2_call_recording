.class Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
.super Ljava/lang/Object;
.source "AutoRejectPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectModeInfo"
.end annotation


# instance fields
.field public mEnablePrefName:Ljava/lang/String;

.field public mModeSettingName:Ljava/lang/String;

.field public mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->this$0:Lcom/android/phone/callsettings/AutoRejectPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    return-void
.end method
