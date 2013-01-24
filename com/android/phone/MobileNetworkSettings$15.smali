.class Lcom/android/phone/MobileNetworkSettings$15;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onDisplayMobileDataOffAlert()V
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
    .line 1312
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$15;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    .line 1314
    if-ne p2, v2, :cond_f

    .line 1315
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$15;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1321
    :goto_e
    return-void

    .line 1318
    :cond_f
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$15;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_mobiledata_checked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e
.end method
