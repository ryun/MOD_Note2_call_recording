.class Lcom/android/phone/MobileNetworkSettings$7;
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
    .line 705
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$7;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$7;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$500(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$7;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->objValuePreferredNetworkMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$600(Lcom/android/phone/MobileNetworkSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 708
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$7;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$7;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->buttonPreferredNetworkMode:I
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$700(Lcom/android/phone/MobileNetworkSettings;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$7;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->settingsPreferredNetworkMode:I
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)I

    move-result v3

    #calls: Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkMode(II)Z
    invoke-static {v1, v2, v3}, Lcom/android/phone/MobileNetworkSettings;->access$800(Lcom/android/phone/MobileNetworkSettings;II)Z

    .line 709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, startIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 712
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 713
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$7;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v1}, Lcom/android/phone/MobileNetworkSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 714
    return-void
.end method
