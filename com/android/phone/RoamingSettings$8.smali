.class Lcom/android/phone/RoamingSettings$8;
.super Ljava/lang/Object;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingSettings;->internationalDataRoamClick()V
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
    .line 266
    iput-object p1, p0, Lcom/android/phone/RoamingSettings$8;->this$0:Lcom/android/phone/RoamingSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 268
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 269
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$8;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v3, v2}, Lcom/android/phone/RoamingSettings;->access$000(Lcom/android/phone/RoamingSettings;II)V

    .line 270
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$8;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;)V

    .line 271
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$8;->this$0:Lcom/android/phone/RoamingSettings;

    const-string v1, "international_data_roaming_settings"

    #calls: Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/RoamingSettings;->access$300(Lcom/android/phone/RoamingSettings;Ljava/lang/String;)V

    .line 277
    :goto_19
    return-void

    .line 273
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$8;->this$0:Lcom/android/phone/RoamingSettings;

    const/4 v1, 0x4

    #calls: Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/RoamingSettings;->access$000(Lcom/android/phone/RoamingSettings;II)V

    .line 274
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$8;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v3, v2}, Lcom/android/phone/RoamingSettings;->access$000(Lcom/android/phone/RoamingSettings;II)V

    .line 275
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$8;->this$0:Lcom/android/phone/RoamingSettings;

    #calls: Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/RoamingSettings;->access$100(Lcom/android/phone/RoamingSettings;)V

    goto :goto_19
.end method
