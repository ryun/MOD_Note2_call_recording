.class Lcom/android/phone/callsettings/PowerKeyEndPreference$2;
.super Ljava/lang/Object;
.source "PowerKeyEndPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PowerKeyEndPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference$2;->this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference$2;->this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    #getter for: Lcom/android/phone/callsettings/PowerKeyEndPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->access$100(Lcom/android/phone/callsettings/PowerKeyEndPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    iget-object v0, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference$2;->this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->access$002(Lcom/android/phone/callsettings/PowerKeyEndPreference;Z)Z

    .line 105
    iget-object v0, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference$2;->this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/PowerKeyEndPreference$2;->this$0:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    #getter for: Lcom/android/phone/callsettings/PowerKeyEndPreference;->endPowerKeyEndChecked:Z
    invoke-static {v1}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->access$000(Lcom/android/phone/callsettings/PowerKeyEndPreference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    .line 106
    return-void
.end method
