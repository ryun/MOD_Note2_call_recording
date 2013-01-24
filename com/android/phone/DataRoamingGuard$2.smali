.class Lcom/android/phone/DataRoamingGuard$2;
.super Ljava/lang/Object;
.source "DataRoamingGuard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DataRoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataRoamingGuard;


# direct methods
.method constructor <init>(Lcom/android/phone/DataRoamingGuard;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/phone/DataRoamingGuard$2;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard$2;->this$0:Lcom/android/phone/DataRoamingGuard;

    #calls: Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V
    invoke-static {v0, v1}, Lcom/android/phone/DataRoamingGuard;->access$100(Lcom/android/phone/DataRoamingGuard;I)V

    .line 110
    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 111
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard$2;->this$0:Lcom/android/phone/DataRoamingGuard;

    #calls: Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V
    invoke-static {v0, v1}, Lcom/android/phone/DataRoamingGuard;->access$200(Lcom/android/phone/DataRoamingGuard;I)V

    .line 112
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard$2;->this$0:Lcom/android/phone/DataRoamingGuard;

    #calls: Lcom/android/phone/DataRoamingGuard;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/DataRoamingGuard;->access$300(Lcom/android/phone/DataRoamingGuard;)V

    .line 114
    :cond_18
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard$2;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-virtual {v0}, Lcom/android/phone/DataRoamingGuard;->finish()V

    .line 115
    return-void
.end method
