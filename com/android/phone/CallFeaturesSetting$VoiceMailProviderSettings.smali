.class Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProviderSettings"
.end annotation


# instance fields
.field public forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;

.field public voicemailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter
    .parameter "voicemailNumber"
    .parameter "forwardingNumber"
    .parameter "timeSeconds"

    .prologue
    const/4 v3, 0x1

    .line 449
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    .line 451
    if-eqz p3, :cond_10

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    .line 452
    :cond_10
    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 466
    :cond_14
    return-void

    .line 454
    :cond_15
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()[I

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 455
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 456
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 457
    .local v0, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v0, v2, v1

    .line 458
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()[I

    move-result-object v2

    aget v2, v2, v1

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 459
    iget v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v2, :cond_49

    const/4 v2, 0x0

    :goto_3a
    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 460
    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 461
    const/16 v2, 0x91

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 462
    iput-object p3, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 463
    iput p4, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_49
    move v2, v3

    .line 459
    goto :goto_3a
.end method

.method public constructor <init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V
    .registers 4
    .parameter
    .parameter "voicemailNumber"
    .parameter "infos"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    .line 470
    iput-object p3, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 471
    return-void
.end method

.method private forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z
    .registers 10
    .parameter "infos1"
    .parameter "infos2"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 490
    if-ne p1, p2, :cond_5

    .line 505
    :cond_4
    :goto_4
    return v3

    .line 491
    :cond_5
    if-eqz p1, :cond_9

    if-nez p2, :cond_b

    :cond_9
    move v3, v4

    goto :goto_4

    .line 492
    :cond_b
    array-length v5, p1

    array-length v6, p2

    if-eq v5, v6, :cond_11

    move v3, v4

    goto :goto_4

    .line 493
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v5, p1

    if-ge v0, v5, :cond_4

    .line 494
    aget-object v1, p1, v0

    .line 495
    .local v1, i1:Lcom/android/internal/telephony/CallForwardInfo;
    aget-object v2, p2, v0

    .line 496
    .local v2, i2:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v6, :cond_45

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, v6, :cond_45

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    if-ne v5, v6, :cond_45

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    if-ne v5, v6, :cond_45

    iget-object v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_3f

    iget-object v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    :cond_3f
    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    if-eq v5, v6, :cond_47

    :cond_45
    move v3, v4

    .line 502
    goto :goto_4

    .line 493
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 475
    if-nez p1, :cond_4

    .line 479
    :cond_3
    :goto_3
    return v1

    .line 476
    :cond_4
    instance-of v2, p1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 477
    check-cast v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    .line 479
    .local v0, v:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-nez v2, :cond_13

    iget-object v2, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-eqz v2, :cond_21

    :cond_13
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_21
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v3, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    const-string v0, ""

    goto :goto_28
.end method
