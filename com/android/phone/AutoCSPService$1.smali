.class Lcom/android/phone/AutoCSPService$1;
.super Lcom/android/phone/IAutoCSP$Stub;
.source "AutoCSPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoCSPService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoCSPService;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoCSPService;)V
    .registers 2
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/phone/AutoCSPService$1;->this$0:Lcom/android/phone/AutoCSPService;

    invoke-direct {p0}, Lcom/android/phone/IAutoCSP$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoCSPNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "originalBaseNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/16 v11, 0x30

    .line 20
    :try_start_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 90
    .end local p1
    :cond_9
    :goto_9
    return-object p1

    .line 25
    .restart local p1
    :cond_a
    const-string v9, "+"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "*"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "#"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 35
    const/16 v9, 0x2c

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 36
    .local v4, pauseDigit:I
    const/16 v9, 0x3b

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 37
    .local v8, waitDigit:I
    const/4 v6, 0x0

    .line 38
    .local v6, pauseWaitIndex:I
    const/4 v5, 0x0

    .line 40
    .local v5, pauseWaitAvailable:Z
    if-gtz v4, :cond_34

    if-lez v8, :cond_b7

    .line 41
    :cond_34
    if-lez v4, :cond_3a

    if-le v4, v8, :cond_b5

    if-ltz v8, :cond_b5

    :cond_3a
    move v6, v8

    .line 42
    :goto_3b
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, baseNumber:Ljava/lang/String;
    const/4 v5, 0x1

    .line 50
    :goto_41
    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v9, "-"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v9, "("

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v9, ")"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 57
    .local v3, length:I
    const/4 v9, 0x3

    if-le v3, v9, :cond_9

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_9

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_9

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_9

    const/4 v9, 0x6

    if-eq v3, v9, :cond_8f

    const/4 v9, 0x7

    if-eq v3, v9, :cond_8f

    const/16 v9, 0xa

    if-eq v3, v9, :cond_8f

    const/16 v9, 0xb

    if-eq v3, v9, :cond_8f

    const/16 v9, 0xc

    if-ne v3, v9, :cond_9

    .line 60
    :cond_8f
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v7, phoneNumber:Ljava/lang/StringBuffer;
    iget-object v9, p0, Lcom/android/phone/AutoCSPService$1;->this$0:Lcom/android/phone/AutoCSPService;

    invoke-virtual {v9}, Lcom/android/phone/AutoCSPService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "data_operator_code"

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, autoCSPCode:I
    if-ne v0, v12, :cond_b9

    .line 68
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a6} :catch_cd

    .line 78
    :goto_a6
    if-eqz v5, :cond_af

    .line 79
    :try_start_a8
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_af} :catch_d3

    .line 84
    :cond_af
    :goto_af
    :try_start_af
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .end local v0           #autoCSPCode:I
    .end local v1           #baseNumber:Ljava/lang/String;
    .end local v3           #length:I
    .end local v7           #phoneNumber:Ljava/lang/StringBuffer;
    :cond_b5
    move v6, v4

    .line 41
    goto :goto_3b

    .line 45
    :cond_b7
    move-object v1, p1

    .restart local v1       #baseNumber:Ljava/lang/String;
    goto :goto_41

    .line 71
    .restart local v0       #autoCSPCode:I
    .restart local v3       #length:I
    .restart local v7       #phoneNumber:Ljava/lang/StringBuffer;
    :cond_b9
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 73
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_cc} :catch_cd

    goto :goto_a6

    .line 88
    .end local v0           #autoCSPCode:I
    .end local v1           #baseNumber:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #pauseDigit:I
    .end local v5           #pauseWaitAvailable:Z
    .end local v6           #pauseWaitIndex:I
    .end local v7           #phoneNumber:Ljava/lang/StringBuffer;
    .end local v8           #waitDigit:I
    :catch_cd
    move-exception v2

    .line 89
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 81
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #autoCSPCode:I
    .restart local v1       #baseNumber:Ljava/lang/String;
    .restart local v3       #length:I
    .restart local v4       #pauseDigit:I
    .restart local v5       #pauseWaitAvailable:Z
    .restart local v6       #pauseWaitIndex:I
    .restart local v7       #phoneNumber:Ljava/lang/StringBuffer;
    .restart local v8       #waitDigit:I
    :catch_d3
    move-exception v9

    goto :goto_af
.end method

.method public isAutoCSPEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/android/phone/AutoCSPService$1;->this$0:Lcom/android/phone/AutoCSPService;

    invoke-virtual {v1}, Lcom/android/phone/AutoCSPService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autocsp_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_10

    const/4 v0, 0x1

    .line 98
    .local v0, isEnabled:Z
    :cond_10
    return v0
.end method
