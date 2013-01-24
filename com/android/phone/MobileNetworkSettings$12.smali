.class Lcom/android/phone/MobileNetworkSettings$12;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    .line 805
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$12;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 807
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$12;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$1000(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_national_roaming_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 810
    .local v0, settingsDataRoamingMode:I
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$12;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$1100(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 811
    return-void
.end method
