.class Lcom/android/phone/CallFeaturesSetting$14;
.super Landroid/content/BroadcastReceiver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 3477
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3479
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 3483
    :try_start_6
    const-string v0, "com.movial.ipphone.IPUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_47

    .line 3484
    :try_start_1a
    const-string v1, "com.movial.ipphone.IPUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "IMS_REG_STATUS"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-class v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2e} :catch_57

    .line 3489
    :goto_2e
    if-eqz v0, :cond_46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3490
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3491
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$14;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mCallForwarding:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$3400(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-nez v0, :cond_55

    const/4 v0, 0x1

    :goto_43
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 3493
    :cond_46
    return-void

    .line 3485
    :catch_47
    move-exception v0

    move-object v1, v3

    .line 3486
    :goto_49
    const-string v5, "CallFeaturesSetting"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    move-object v1, v3

    goto :goto_2e

    :cond_55
    move v0, v2

    .line 3491
    goto :goto_43

    .line 3485
    :catch_57
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_49
.end method
