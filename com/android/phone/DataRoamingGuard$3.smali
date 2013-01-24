.class Lcom/android/phone/DataRoamingGuard$3;
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
    .line 118
    iput-object p1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 120
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Lcom/android/phone/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 122
    .local v0, mDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 123
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #calls: Lcom/android/phone/DataRoamingGuard;->setSecureRoamGuardDataValue(I)V
    invoke-static {v1, v4}, Lcom/android/phone/DataRoamingGuard;->access$400(Lcom/android/phone/DataRoamingGuard;I)V

    .line 127
    :goto_18
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #calls: Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V
    invoke-static {v1, v3}, Lcom/android/phone/DataRoamingGuard;->access$100(Lcom/android/phone/DataRoamingGuard;I)V

    .line 129
    const-string v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 130
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #calls: Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V
    invoke-static {v1, v3}, Lcom/android/phone/DataRoamingGuard;->access$200(Lcom/android/phone/DataRoamingGuard;I)V

    .line 131
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #calls: Lcom/android/phone/DataRoamingGuard;->setCdmaRoaming()V
    invoke-static {v1}, Lcom/android/phone/DataRoamingGuard;->access$300(Lcom/android/phone/DataRoamingGuard;)V

    .line 134
    :cond_2f
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingInService()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 135
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/DataRoamingGuard;->access$500(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 138
    :cond_3e
    const-string v1, "data_roam_guard_first_time"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 139
    const-string v1, "data_roam_guard_first_time"

    invoke-static {v1, v4}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 140
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    const v2, 0x7f0e0461

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 143
    :cond_57
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-virtual {v1}, Lcom/android/phone/DataRoamingGuard;->finish()V

    .line 144
    return-void

    .line 125
    :cond_5d
    iget-object v1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    #calls: Lcom/android/phone/DataRoamingGuard;->setSecureRoamGuardDataValue(I)V
    invoke-static {v1, v3}, Lcom/android/phone/DataRoamingGuard;->access$400(Lcom/android/phone/DataRoamingGuard;I)V

    goto :goto_18
.end method
