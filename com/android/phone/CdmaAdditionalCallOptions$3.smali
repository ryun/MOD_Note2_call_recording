.class Lcom/android/phone/CdmaAdditionalCallOptions$3;
.super Ljava/lang/Object;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$100(Ljava/lang/String;)V

    .line 221
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4a

    move v0, v2

    .line 222
    .local v0, value:I
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$100(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-virtual {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "area_code_enabled"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    iget-object v1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$3;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    #calls: Lcom/android/phone/CdmaAdditionalCallOptions;->updateSummaryAutoAreaCode()V
    invoke-static {v1}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$200(Lcom/android/phone/CdmaAdditionalCallOptions;)V

    .line 226
    return v2

    .line 221
    .end local v0           #value:I
    :cond_4a
    const/4 v0, 0x0

    goto :goto_23
.end method
