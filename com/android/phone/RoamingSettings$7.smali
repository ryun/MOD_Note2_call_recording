.class Lcom/android/phone/RoamingSettings$7;
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
    .line 279
    iput-object p1, p0, Lcom/android/phone/RoamingSettings$7;->this$0:Lcom/android/phone/RoamingSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$7;->this$0:Lcom/android/phone/RoamingSettings;

    const/4 v1, 0x4

    #calls: Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/RoamingSettings;->access$000(Lcom/android/phone/RoamingSettings;II)V

    .line 282
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 283
    iget-object v0, p0, Lcom/android/phone/RoamingSettings$7;->this$0:Lcom/android/phone/RoamingSettings;

    #getter for: Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/RoamingSettings;->access$200(Lcom/android/phone/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 284
    :cond_16
    return-void
.end method
