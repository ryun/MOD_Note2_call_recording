.class Lcom/android/phone/CallFeaturesSetting$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->updateProximitySensorPreference()V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$000(Lcom/android/phone/CallFeaturesSetting;)V

    .line 421
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->updatePowerkeyPreference()V
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$100(Lcom/android/phone/CallFeaturesSetting;)V

    .line 422
    return-void
.end method
