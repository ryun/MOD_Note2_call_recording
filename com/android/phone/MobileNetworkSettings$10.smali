.class Lcom/android/phone/MobileNetworkSettings$10;
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
    .line 773
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$500(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->settingsPreferredNetworkMode:I
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->settingsPreferredNetworkMode:I
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)I

    move-result v2

    #calls: Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkMode(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->access$800(Lcom/android/phone/MobileNetworkSettings;II)Z

    .line 777
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$10;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsOptions;->operatorSelectionExpandSetEnabled(Z)V

    .line 778
    return-void
.end method
