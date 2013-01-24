.class Lcom/android/phone/MobileNetworkSettings$9;
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
    .line 738
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$9;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$9;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #calls: Lcom/android/phone/MobileNetworkSettings;->showGsmUmtsDialog()V
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$900(Lcom/android/phone/MobileNetworkSettings;)V

    .line 741
    return-void
.end method
