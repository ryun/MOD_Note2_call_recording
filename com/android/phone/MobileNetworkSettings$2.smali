.class Lcom/android/phone/MobileNetworkSettings$2;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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
    .line 288
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mDataClicked:Z
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$100(Lcom/android/phone/MobileNetworkSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$2;->this$0:Lcom/android/phone/MobileNetworkSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/MobileNetworkSettings;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->access$202(Lcom/android/phone/MobileNetworkSettings;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 292
    return-void
.end method
