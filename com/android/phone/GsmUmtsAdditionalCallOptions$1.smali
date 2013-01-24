.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 175
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5b

    move v1, v4

    .line 178
    .local v1, newIntValue:I
    :goto_c
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "area_code_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 182
    .local v2, value:I
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$100(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "area_code_value"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, data:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange newValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "area_code_enabled"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    if-eq v1, v2, :cond_5a

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    #calls: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(ILjava/lang/String;)V
    invoke-static {v3, v1, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;ILjava/lang/String;)V

    .line 190
    :cond_5a
    return v4

    .end local v0           #data:Ljava/lang/String;
    .end local v1           #newIntValue:I
    .end local v2           #value:I
    .restart local p2
    :cond_5b
    move v1, v5

    .line 175
    goto :goto_c
.end method
