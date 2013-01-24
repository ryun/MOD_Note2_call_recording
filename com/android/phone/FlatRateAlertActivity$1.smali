.class Lcom/android/phone/FlatRateAlertActivity$1;
.super Ljava/lang/Object;
.source "FlatRateAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FlatRateAlertActivity;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FlatRateAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/FlatRateAlertActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    #getter for: Lcom/android/phone/FlatRateAlertActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/FlatRateAlertActivity;->access$000(Lcom/android/phone/FlatRateAlertActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 103
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v1, "bootup_data_tariff_rate_popup"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 104
    iget-object v1, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    #getter for: Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/phone/FlatRateAlertActivity;->access$100(Lcom/android/phone/FlatRateAlertActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    sget-object v2, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-ne v1, v2, :cond_32

    const/4 v1, 0x1

    :goto_29
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 110
    :goto_2c
    iget-object v1, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    invoke-virtual {v1}, Lcom/android/phone/FlatRateAlertActivity;->finish()V

    .line 111
    return-void

    .line 104
    :cond_32
    const/4 v1, 0x0

    goto :goto_29

    .line 105
    :cond_34
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_DefaultDataStateFalse"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 106
    const-string v1, "FLatRateAlertActivity"

    const-string v2, "No setMobileDataEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 108
    :cond_48
    sget-object v1, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_2c
.end method
