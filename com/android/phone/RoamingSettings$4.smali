.class Lcom/android/phone/RoamingSettings$4;
.super Ljava/lang/Object;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingSettings;->domesticDataRoamClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/RoamingSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 175
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 176
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v2, v2}, Lcom/android/phone/RoamingSettings;->access$000(Lcom/android/phone/RoamingSettings;II)V

    .line 177
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;)V

    .line 178
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v1, "domestic_data_roaming_settings"

    #calls: Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/RoamingSettings;->access$300(Lcom/android/phone/RoamingSettings;Ljava/lang/String;)V

    .line 184
    :goto_18
    return-void

    .line 180
    :cond_19
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    const/4 v1, 0x2

    #calls: Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/RoamingSettings;->access$000(Lcom/android/phone/RoamingSettings;II)V

    .line 181
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v2, v2}, Lcom/android/phone/RoamingSettings;->access$000(Lcom/android/phone/RoamingSettings;II)V

    .line 182
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$4;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;)V

    goto :goto_18
.end method
