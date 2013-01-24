.class public Lcom/android/phone/PhoneFeature;
.super Ljava/lang/Object;
.source "PhoneFeature.java"


# static fields
.field private static mFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDBGLevel()I
    .registers 3

    .prologue
    .line 1649
    const/4 v0, 0x2

    .line 1650
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1652
    const-string v2, "espressorf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "espresso10rf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1654
    :cond_17
    const/4 v0, 0x0

    .line 1661
    :cond_18
    return v0
.end method

.method public static disableFeature(Ljava/lang/String;)V
    .registers 3
    .parameter "feature"

    .prologue
    .line 1585
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    return-void
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .registers 2
    .parameter "feature"

    .prologue
    .line 1574
    if-eqz p0, :cond_a

    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1575
    :cond_a
    const/4 v0, 0x0

    .line 1577
    :goto_b
    return v0

    :cond_c
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b
.end method

.method public static hasIlluminanceSensor()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1612
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    const-string v5, "sensor"

    invoke-virtual {v3, v5}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 1613
    .local v2, mSensorManager:Landroid/hardware/SensorManager;
    if-nez v2, :cond_11

    move v3, v4

    .line 1625
    :goto_10
    return v3

    .line 1616
    :cond_11
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 1617
    .local v1, mSensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v1, :cond_1a

    move v3, v4

    .line 1618
    goto :goto_10

    .line 1620
    :cond_1a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_33

    .line 1621
    const/4 v5, 0x5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v5, v3, :cond_30

    .line 1622
    const/4 v3, 0x1

    goto :goto_10

    .line 1620
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_33
    move v3, v4

    .line 1625
    goto :goto_10
.end method

.method public static hasMultiWindwoFeature()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1631
    :try_start_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1632
    if-eqz v1, :cond_11

    .line 1633
    const-string v2, "com.sec.feature.multiwindow.tablet"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result v0

    .line 1639
    :cond_11
    :goto_11
    return v0

    .line 1635
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method static hasNoiseSuppressionFeature(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 1598
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1600
    const-string v1, "c1lgt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "oversea"

    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1602
    const/4 v0, 0x0

    .line 1607
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method static hasVibrator()Z
    .registers 4

    .prologue
    .line 1589
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 1590
    .local v1, vibrator:Landroid/os/Vibrator;
    const/4 v0, 0x1

    .line 1591
    .local v0, result:Z
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1592
    :cond_15
    const/4 v0, 0x0

    .line 1594
    :cond_16
    return v0
.end method

.method public static makeFeature()V
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 764
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_172

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_172

    move v0, v1

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 767
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 769
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 770
    const-string v0, "persist.sys.country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 773
    const-string v0, "SKT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "KTT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "LGT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_175

    :cond_40
    move v0, v1

    :goto_41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 776
    const-string v0, "CHN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "CHU"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "CTC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "CHM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    :cond_65
    move v0, v1

    :goto_66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 779
    const-string v0, "m0ctc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "m0grandectc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "m0ctcduos"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "t03gctc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "kyleplus3gctc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string v0, "aruba3gduosctc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    :cond_9a
    move v0, v1

    :goto_9b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 782
    const-string v0, "JPN"

    const-string v9, "USA"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 785
    const-string v0, "d2vl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    const-string v0, "d2vw"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    const-string v0, "comanchevl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    const-string v0, "t0ltevl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    const-string v0, "t0ltevw"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    :cond_d3
    move v0, v1

    :goto_d4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 787
    const-string v10, "d2vw"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 790
    sget-object v10, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "feature_hktw"

    const-string v12, "TGY"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10e

    const-string v12, "BRI"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10e

    const-string v12, "CWT"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10e

    const-string v12, "TWN"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10e

    const-string v12, "FET"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10f

    :cond_10e
    move v2, v1

    :cond_10f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v1, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "nck_block_feature"

    const-string v10, "DCM"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForCommon()V

    .line 797
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_133

    .line 798
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForTablet()V

    .line 801
    :cond_133
    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 802
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForHKTW()V

    .line 805
    :cond_13e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 806
    :cond_14a
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForCanada()V

    .line 809
    :cond_14d
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_156

    .line 810
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForKor()V

    .line 812
    :cond_156
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_162

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 813
    :cond_162
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForChina()V

    .line 816
    :cond_165
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 817
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForJapan()V

    .line 821
    :cond_16e
    invoke-static {}, Lcom/android/phone/PhoneFeature;->makeFeatureForUsa()V

    .line 822
    return-void

    :cond_172
    move v0, v2

    .line 765
    goto/16 :goto_13

    :cond_175
    move v0, v2

    .line 773
    goto/16 :goto_41

    :cond_178
    move v0, v2

    .line 776
    goto/16 :goto_66

    :cond_17b
    move v0, v2

    .line 779
    goto/16 :goto_9b

    :cond_17e
    move v0, v2

    .line 785
    goto/16 :goto_d4
.end method

.method public static makeFeatureForCanada()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1009
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1012
    const-string v0, "d2vl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "d2vw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "comanchevl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "t0ltevl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "t0ltevw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    :cond_30
    move v0, v2

    :goto_31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1014
    const-string v4, "d2vw"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1018
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_list_lte"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_75

    :goto_4f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v1, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "callforwarding_popup_in_can"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v1, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "networksearching_in_can"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v1, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "end_call_two_button"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v1, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "video_call_disable"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    return-void

    :cond_73
    move v0, v1

    .line 1012
    goto :goto_31

    :cond_75
    move v2, v1

    .line 1018
    goto :goto_4f
.end method

.method public static makeFeatureForChina()V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1033
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1034
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1037
    const-string v0, "CHN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "CHU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "CTC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "CHM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2af

    :cond_2e
    move v0, v2

    :goto_2f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1040
    const-string v0, "m0ctc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "m0grandectc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "m0ctcduos"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "t03gctc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "kyleplus3gctc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "aruba3gduosctc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b2

    :cond_63
    move v0, v2

    :goto_64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1043
    const-string v0, "m0grandectc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "m0ctcduos"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "t03gctc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "kyleplus3gctc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "aruba3gduosctc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b5

    :cond_90
    move v0, v2

    :goto_91
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1046
    const-string v0, "ironzn"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    const-string v0, "ironzm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    const-string v0, "t03gduoszc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    const-string v0, "t03gduoszn"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b8

    :cond_b5
    move v0, v2

    :goto_b6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1049
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "feature_chn"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "disable_format_number"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "hide_caller_id"

    const-string v10, "CHU"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "geo_description_disable"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "video_call_disable"

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "voice_call_recording"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "disable_sip_call_setting"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ip_call"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ip_call_cmcc"

    const-string v10, "CHM"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "auto_redial_time_delay"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_adjust_camera_contrast_brightness"

    const-string v10, "CHM"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_adjust_screen_brightness"

    const-string v10, "CHM"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_audio_mixed_recording"

    const-string v10, "CHM"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_multimedia_ringback_tone_timer"

    const-string v10, "CHM"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_operator_open_close_camera"

    const-string v10, "CHM"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_operator_fallback"

    const-string v10, "CHM"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_display_start_call_time"

    const-string v10, "CHM"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "preferred_networks"

    const-string v10, "CHM"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "call_block_ui"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v9, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "voice_privacy_enable"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2bb

    move v0, v2

    :goto_1ae
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "phone_number_locator"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ctc_voicecall_additional_setting"

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "cdma_call_forwarding_indicator"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "feature_ctc"

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ctc_call_time_duration"

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v9, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "ctc_dual_mode"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1ec

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2be

    :cond_1ec
    move v0, v2

    :goto_1ed
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v9, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "feature_chn_dual_mode"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_204

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c1

    :cond_204
    move v0, v2

    :goto_205
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "feature_chn_dual_mode_cdma_gsm"

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "feature_chn_dual_mode_gsm_gsm"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v9, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "feature_chn_duos"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_22a

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c4

    :cond_22a
    move v0, v2

    :goto_22b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "feature_chn_duos_cdma_gsm"

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_chn_duos_gsm_gsm"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_chn_dual_mode_with_one_ril"

    const-string v8, "t03gzm"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ctc_vip_mode"

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "fdn_nameinput_maxlength_limit"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_268

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_269

    :cond_268
    move v1, v2

    :cond_269
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ctc_roamingcall"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ctc_cdma_smc_fac_req"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "no_alert_tone_signal"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "remove_network_mode"

    const-string v2, "CHM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "lawmo_lock"

    const-string v2, "CHM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_china_lunar"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    return-void

    :cond_2af
    move v0, v1

    .line 1037
    goto/16 :goto_2f

    :cond_2b2
    move v0, v1

    .line 1040
    goto/16 :goto_64

    :cond_2b5
    move v0, v1

    .line 1043
    goto/16 :goto_91

    :cond_2b8
    move v0, v1

    .line 1046
    goto/16 :goto_b6

    :cond_2bb
    move v0, v1

    .line 1102
    goto/16 :goto_1ae

    :cond_2be
    move v0, v1

    .line 1120
    goto/16 :goto_1ed

    :cond_2c1
    move v0, v1

    .line 1123
    goto/16 :goto_205

    :cond_2c4
    move v0, v1

    .line 1132
    goto/16 :goto_22b
.end method

.method public static makeFeatureForCommon()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 825
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 826
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 829
    const-string v0, "m3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "t0lte"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "p4notelte"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "baffinlte"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58c

    :cond_2e
    move v0, v2

    :goto_2f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 831
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "stop_signal_info_tone"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_format_number"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_conference_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_busy_picture"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_call_transfer"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_merge_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "fdn_contact_search"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    sget-object v6, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "write_sleep_checking_file"

    if-eqz v3, :cond_58f

    const-string v0, "exynos4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string v0, "msm8960"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58f

    :cond_a0
    move v0, v2

    :goto_a1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_additional_caller_info"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "raft"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ssc_antenna_solution"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_EnableSSC"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "keyboard_open_spk_on"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "koeno_takuhaibin_number"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_subaddress_settings"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_additional_settings"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "fdn_button_call"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_EnableCallButtonInFdnList"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_network_mode_wcdma_only"

    const-string v7, "wcdmaonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_network_mode_gsm_only"

    const-string v7, "gsmonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_network_mode_lte"

    const-string v7, "lte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "bootup_data_connection_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_EnableDataServicePopup"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "bootup_data_tariff_rate_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Settig_EnableDataTariffWizard"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "national_roaming_mode_menu"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_EnableDataRoamingMenuInDetail"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "data_roaming_option_national"

    const-string v7, "national"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "data_roaming_option_all"

    const-string v7, "all"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_list_lte"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "enable_noise_reduction_in_wbamr"

    const-string v6, "t0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "cust_network_sel_menu4_orange"

    const-string v6, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "cust_network_sel_menu4_vodafone"

    const-string v6, "VODAFONE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "cust_network_sel_menu4_addauto"

    const-string v0, "OLB"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_269

    const-string v0, "ADDAUTO"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_269

    const-string v0, "TGY"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_592

    :cond_269
    move v0, v2

    :goto_26a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "enable_noise_reduction_in_wbamr"

    const-string v0, "m3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_285

    const-string v0, "t0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_595

    :cond_285
    move v0, v2

    :goto_286
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "default_noise_reduction"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "noise_suppression_support_speaker"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "showing_extra_volume"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "extra_volume_on_off_delay"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "qualcomm_ril"

    if-eqz v3, :cond_598

    const-string v0, "msm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_598

    move v0, v2

    :goto_2c8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "audio_separate_ringback_gain"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "btn_on_off_delay"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "separate_call_reject"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableSeparateCallReject"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "keypad_type_to_phone_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_KeypadTypeToDigit4UssdInput"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disappear_ussd_cancel_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableUssdCancelPopup"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "beep_vibration_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableBeepVibration4UssdAlert"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "default_vm_in_callforwarding"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableVmsNumberAsDefaultInCallForwarding"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "personal_vibration"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasVibrator()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "barge_in"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_ltn_auto_csp"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_VoiceCall_EnablePrefix4LongDistanceCallAs"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_59b

    move v0, v2

    :goto_379
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_ltn_sdnname_display"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableDisplaySdnNameDuringCall"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_rcs"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ringtone_escalating"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer_default_on"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "not_update_bt_connecting"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_autoanswer_in_silent_and_earjackmode"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableAutoAnswerInSilentNEarjactMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_display_vmtelnum_duringcall"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableDisplayVMTelNumDuringCall"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "order_neg_pos_buttons"

    const-string v0, "espresso"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59e

    const-string v0, "P6200"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59e

    const-string v0, "P6800"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59e

    move v0, v2

    :goto_41d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "allow_select_network_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vi_animation"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "reject_call_with_message_send_button_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ecbm_emergency_calls_only_enable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "in_call_menu_memo_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "in_call_menu_message_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_edit_callerid"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableEditingCallerID"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_dormant_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "service_memo_during_call"

    const-string v0, "p4note"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49a

    const-string v0, "t0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a1

    :cond_49a
    move v0, v2

    :goto_49b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_remind_me_later_support "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_network_mode"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "gd1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "move_incomingcallwidget_touch_area"

    const-string v5, "t0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_multi_window"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasMultiWindwoFeature()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_onehand_operation"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_mobile_data_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "geo_description_disable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "add_panel"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_contacts"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hw_home_key"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1110035

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5a4

    move v0, v2

    :goto_541
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "powey_key_ends_call_during_screen_off"

    const-string v5, "hw_home_key"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_volume"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_theme_feature_support"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "use_snote_string"

    const-string v3, "t0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "proximity_sensor_control_by_keypad"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    return-void

    :cond_58c
    move v0, v1

    .line 829
    goto/16 :goto_2f

    :cond_58f
    move v0, v1

    .line 844
    goto/16 :goto_a1

    :cond_592
    move v0, v1

    .line 870
    goto/16 :goto_26a

    :cond_595
    move v0, v1

    .line 873
    goto/16 :goto_286

    :cond_598
    move v0, v1

    .line 880
    goto/16 :goto_2c8

    :cond_59b
    move v0, v1

    .line 907
    goto/16 :goto_379

    :cond_59e
    move v0, v1

    .line 927
    goto/16 :goto_41d

    :cond_5a1
    move v0, v1

    .line 944
    goto/16 :goto_49b

    :cond_5a4
    move v0, v1

    .line 962
    goto :goto_541
.end method

.method public static makeFeatureForHKTW()V
    .registers 3

    .prologue
    .line 999
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1001
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "disable_format_number"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    :goto_1a
    return-void

    .line 1004
    :cond_1b
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "disable_format_number"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a
.end method

.method public static makeFeatureForJapan()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1172
    const-string v0, "DCM"

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1175
    const-string v1, "KDDI"

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 1182
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "video_call_disable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "support_conference_call"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "support_call_transfer"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "support_merge_call"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "emergency_contacts"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "hide_FDN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "hide_call_barring"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "remove_voicemail_category"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "voice_call_recording"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "remove_additional_call_setting_for_kor"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "remove_call_forwarding"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "hide_caller_id"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "end_call_two_button"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "international_dial_assist"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "voicemail_roaming_number"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "voice_call_recording_menu"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "voice_call_recording_second_call_ongoing"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_callsettings_menu"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_jcontacts_package_name"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "voicemail_notification_setting"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_dsac_feature"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_callwait_tone_long_feature"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_prohibit_secondcall_in_emergency"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_start_search_delay"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_manual_select_delay"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_show_separated_network_list"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_forbidden_network_show"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_reject_call_msg_limit"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_not_support_extra_calllog_type"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "display_mobiledata_off_alert"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "change_hangup_ipc_in_auto_reject"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "network_mode_list_lte"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "network_mode_list_dcm_lte"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "disable_sip_call_setting"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "dcm_change_data_enable_func"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "check_enable_block_apn_change"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "change_network_mode_ui"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    :cond_1b7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 1250
    :cond_1bd
    return-void
.end method

.method public static makeFeatureForKor()V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1253
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1254
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1256
    const-string v0, "SKT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "KTT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "LGT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_465

    :cond_26
    move v0, v2

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1257
    const-string v5, "SKT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1258
    const-string v6, "KTT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1259
    const-string v7, "LGT"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1261
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_skt"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_ktt"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_lgt"

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_71

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 1268
    :cond_71
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_conference_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    :cond_7c
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_88

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_93

    .line 1270
    :cond_88
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_call_transfer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    :cond_93
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_busy_picture"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_merge_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "default_noise_reduction"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "stop_signal_info_tone"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "geo_description_disable"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "play_local_dtmf_tones"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "dtmf_smaller_hit_target"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "restore_spk_unplugged_dock"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "check_ringtone_repeat"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hide_FDN"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hide_call_barring"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_voicemail_category"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "voice_call_recording"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_additional_call_setting_for_kor"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_call_forwarding"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_sip_call_setting"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "set_world_phone_option_for_kor"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_alerting_title"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_logs_kor"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "notify_audio_reset"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "implicit_network_setting"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "custom_setting"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "voip_interworking"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_mm_audio"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_bluetooth"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_a2dp_suspend_bluetooth"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "restrict_international_call"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "international_call_service"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_reject_message_limit"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "rearrange_preset_image_setting"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "modify_reject_message"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "mics_kor_common"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "roaming_auto_dial"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_dialpad_digits"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "force_display_endcall_screen"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_show_call_view_statusbar"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_listen_mwi"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "limited_service_state"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_korea_lunar"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "cnap_supplementary_service"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "menu_message"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "optis_command_test"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sms_pattern_lock_message"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "separate_connect_tone"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_vt_call_setting_for_kor"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "add_common_vt_call_setting_for_kor"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_store_ns_pref"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_reset_spk_during_ps_call"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ota_mode_disable_expand"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_alpha_anim_for_banner"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "period_mark_animation"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_button_bt_touch_sound"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "emergency_for_cyber_terror"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cdnip_supplementary_service"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "custom_waiting_tone"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "auto_call_test"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "waiting_call_end_tone"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    sget-object v7, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "auto_unhold"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_254

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_468

    :cond_254
    move v0, v2

    :goto_255
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "call_icon_display_in_call_screen"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "visual_expression"

    const-string v8, "m0skt"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "alerting_occurs_twice"

    const-string v8, "m0skt"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cancel_timeout_pending_mmi_request"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_waiting_tone"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_lgt_multi_call"

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "apn_setting_enable"

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "sec_korea_lgu_bluetooth"

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "kor_qc_cs_vt"

    const-string v0, "jaguark"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bc

    const-string v0, "d2ktt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46b

    :cond_2bc
    move v0, v2

    :goto_2bd
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "kor_cs_vt"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2d4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46e

    :cond_2d4
    move v0, v2

    :goto_2d5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "kor_cs_vt_ui"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2ec

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_471

    :cond_2ec
    move v0, v2

    :goto_2ed
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "kor_cs_vt_network_operator"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_304

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_474

    :cond_304
    move v0, v2

    :goto_305
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "emergency_vtcall"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_31c

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_477

    :cond_31c
    move v0, v2

    :goto_31d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_vt_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_vt_call_conference"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_vt_call_mediashare"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ims_vt_siop_levelset"

    const-string v0, "c1skt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_359

    const-string v0, "c1lgt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47a

    :cond_359
    move v0, v2

    :goto_35a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "block_data_during_call"

    const-string v0, "t0lteskt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39d

    const-string v0, "t0ltektt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39d

    const-string v0, "jaguars"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39d

    const-string v0, "jaguark"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39d

    const-string v0, "c1skt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39d

    const-string v0, "c1ktt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39d

    const-string v0, "m0skt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47d

    :cond_39d
    move v0, v2

    :goto_39e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "rearrange_search_contact_image"

    const-string v0, "jaguars"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c1

    const-string v0, "jaguark"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c1

    const-string v0, "jaguarl"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_480

    :cond_3c1
    move v0, v2

    :goto_3c2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "increase_dtmf_tone_headset_plugged"

    const-string v0, "msm8960"

    const-string v6, "ro.board.platform"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3eb

    const-string v0, "t0ltektt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3eb

    const-string v0, "t0ltelgt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_483

    :cond_3eb
    move v0, v2

    :goto_3ec
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "kor_infineon_chip"

    const-string v0, "m0skt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40f

    const-string v0, "p4noterfktt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40f

    const-string v0, "p4noterfskt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_486

    :cond_40f
    move v0, v2

    :goto_410
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "kor_phone_via_chip"

    const-string v5, "c1lgt"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_cs_svc_prop"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_action_domestic_network"

    const-string v5, "jaguarl"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_447

    const-string v5, "t0ltelgt"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_448

    :cond_447
    move v1, v2

    :cond_448
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ims_volte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    return-void

    :cond_465
    move v0, v1

    .line 1256
    goto/16 :goto_27

    :cond_468
    move v0, v1

    .line 1332
    goto/16 :goto_255

    :cond_46b
    move v0, v1

    .line 1347
    goto/16 :goto_2bd

    :cond_46e
    move v0, v1

    .line 1348
    goto/16 :goto_2d5

    :cond_471
    move v0, v1

    .line 1349
    goto/16 :goto_2ed

    :cond_474
    move v0, v1

    .line 1350
    goto/16 :goto_305

    :cond_477
    move v0, v1

    .line 1351
    goto/16 :goto_31d

    :cond_47a
    move v0, v1

    .line 1356
    goto/16 :goto_35a

    :cond_47d
    move v0, v1

    .line 1359
    goto/16 :goto_39e

    :cond_480
    move v0, v1

    .line 1361
    goto/16 :goto_3c2

    :cond_483
    move v0, v1

    .line 1363
    goto/16 :goto_3ec

    :cond_486
    move v0, v1

    .line 1365
    goto :goto_410
.end method

.method public static makeFeatureForTablet()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 974
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 976
    const-string v0, "p4note"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 977
    const-string v4, "kona"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 979
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "add_panel"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_contacts"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "tablet_device"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_split_settings"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hw_home_key"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "powey_key_ends_call_during_screen_off"

    const-string v7, "hw_home_key"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "extra_volume"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_theme_feature_support"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c1

    :cond_7b
    move v0, v2

    :goto_7c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "vt_post_dial_feature_support"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v4, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "no_receiver_in_call"

    const-string v0, "p4note"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a2

    const-string v0, "espresso10rf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c3

    :cond_a2
    move v0, v2

    :goto_a3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v0, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    return-void

    :cond_c1
    move v0, v1

    .line 988
    goto :goto_7c

    :cond_c3
    move v0, v1

    .line 992
    goto :goto_a3
.end method

.method public static makeFeatureForUsa()V
    .registers 22

    .prologue
    .line 1378
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1379
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1380
    const-string v2, "ro.baseband"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1383
    const-string v2, "SPR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string v2, "d2spr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string v2, "goghspr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string v2, "m3spr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string v2, "t0ltespr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string v2, "espresso10spr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f1

    :cond_42
    const/4 v2, 0x1

    :goto_43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1384
    const-string v2, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "d2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "jaspervzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "aegis2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "espressovzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "espresso10vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "m3vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "t0ltevzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    :cond_87
    const/4 v2, 0x1

    :goto_88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1385
    const-string v2, "VMU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    const-string v2, "iconvmu"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f7

    :cond_9c
    const/4 v2, 0x1

    :goto_9d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1386
    const-string v2, "prevail2spr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1387
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b7

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1fa

    :cond_b7
    const/4 v2, 0x1

    :goto_b8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 1388
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c8

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1fd

    :cond_c8
    const/4 v2, 0x1

    :goto_c9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 1389
    const-string v2, "d2usc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dd

    const-string v2, "t0lteusc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_200

    :cond_dd
    const/4 v2, 0x1

    :goto_de
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 1390
    const-string v2, "MTR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f2

    const-string v2, "d2mtr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_203

    :cond_f2
    const/4 v2, 0x1

    :goto_f3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1391
    const-string v2, "XAR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 1392
    const-string v2, "CRI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    const-string v2, "d2cri"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_206

    :cond_111
    const/4 v2, 0x1

    :goto_112
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 1395
    const-string v2, "ATT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14e

    const-string v2, "d2uc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14e

    const-string v2, "c1uc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14e

    const-string v2, "comancheuc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14e

    const-string v2, "expressuc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14e

    const-string v2, "p10lteuc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14e

    const-string v2, "t0lteatt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_209

    :cond_14e
    const/4 v2, 0x1

    :goto_14f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 1396
    const-string v2, "TMB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17b

    const-string v2, "d2tmo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17b

    const-string v2, "apexqtmo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17b

    const-string v2, "m3tmo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17b

    const-string v2, "t0ltetmo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20c

    :cond_17b
    const/4 v2, 0x1

    :goto_17c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1398
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1a4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1a4

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1a4

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1a4

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1a4

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_20f

    :cond_1a4
    const/4 v2, 0x1

    :goto_1a5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1399
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1b5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_211

    :cond_1b5
    const/4 v2, 0x1

    :goto_1b6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 1401
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_213

    :cond_1c6
    const/4 v2, 0x1

    :goto_1c7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 1403
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1d1

    :cond_1d1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1405
    const-string v2, "msm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e5

    const-string v2, "mdm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_215

    :cond_1e5
    const/4 v2, 0x1

    :goto_1e6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1407
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_217

    .line 1571
    :goto_1f0
    return-void

    .line 1383
    :cond_1f1
    const/4 v2, 0x0

    goto/16 :goto_43

    .line 1384
    :cond_1f4
    const/4 v2, 0x0

    goto/16 :goto_88

    .line 1385
    :cond_1f7
    const/4 v2, 0x0

    goto/16 :goto_9d

    .line 1387
    :cond_1fa
    const/4 v2, 0x0

    goto/16 :goto_b8

    .line 1388
    :cond_1fd
    const/4 v2, 0x0

    goto/16 :goto_c9

    .line 1389
    :cond_200
    const/4 v2, 0x0

    goto/16 :goto_de

    .line 1390
    :cond_203
    const/4 v2, 0x0

    goto/16 :goto_f3

    .line 1392
    :cond_206
    const/4 v2, 0x0

    goto/16 :goto_112

    .line 1395
    :cond_209
    const/4 v2, 0x0

    goto/16 :goto_14f

    .line 1396
    :cond_20c
    const/4 v2, 0x0

    goto/16 :goto_17c

    .line 1398
    :cond_20f
    const/4 v2, 0x0

    goto :goto_1a5

    .line 1399
    :cond_211
    const/4 v2, 0x0

    goto :goto_1b6

    .line 1401
    :cond_213
    const/4 v2, 0x0

    goto :goto_1c7

    .line 1405
    :cond_215
    const/4 v2, 0x0

    goto :goto_1e6

    .line 1411
    :cond_217
    sget-object v20, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "vi_animation"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_94a

    const/4 v2, 0x1

    :goto_222
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "tty_enable"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "samsung_screen_timeout_incall"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "feature_call_type"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "call_icon_display_in_call_screen"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "video_call_disable"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    sget-object v20, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "end_call_two_button"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_94d

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_94d

    const/4 v2, 0x1

    :goto_277
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "play_local_dtmf_tones"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "usa_duplicate_disable"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "emergency_dialer_tones"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "number_format_with_country_iso"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "disable_sip_call_setting"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "stop_signal_info_tone"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    sget-object v19, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "usa_geo_description_enable"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_312

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_312

    const-string v2, "t0ltevzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_312

    const-string v2, "t0lteatt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30a

    const-string v2, "d2uc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30a

    const-string v2, "c1uc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30a

    const-string v2, "expressuc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30a

    const-string v2, "p10lteuc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_950

    :cond_30a
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_950

    :cond_312
    const/4 v2, 0x1

    :goto_313
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    sget-object v19, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "ecid_enable"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_330

    const-string v2, "d2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_953

    :cond_330
    const/4 v2, 0x1

    :goto_331
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "dtmf_type_enable"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "usa_cdma_emergency_concept"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "usa_cdma_concept"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "usa_cdma_smc_fac_req"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    sget-object v19, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v20, "cdma_subscription_enable"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_956

    const/4 v2, 0x1

    :goto_373
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "cdma_call_alert_enable"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "manage_conference_call_menu_disable"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "not_ota_ui_display"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "speaker_bt_button_disable_with_headset_plug"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "reboot_after_ota_success"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, " disable_notification_in_waiting_call_ringing"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "signal_info_tone_generator_stop"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    sget-object v17, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "emergency_calllog_disable"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3e1

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3e1

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_959

    :cond_3e1
    const/4 v2, 0x1

    :goto_3e2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    sget-object v17, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "international_dialing_enable"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3fd

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_95c

    :cond_3fd
    const/4 v2, 0x1

    :goto_3fe
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    sget-object v17, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "usa_otasp_calllog_disable"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_419

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_95f

    :cond_419
    const/4 v2, 0x1

    :goto_41a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    sget-object v17, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "global_network_cdma_gsm_enable"

    const-string v2, "d2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_459

    const-string v2, "aegis2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_459

    const-string v2, "espresso10vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_459

    const-string v2, "m3vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_459

    const-string v2, "t0ltespr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_459

    const-string v2, "t0ltevzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_962

    :cond_459
    const/4 v2, 0x1

    :goto_45a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    sget-object v17, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "global_network_cdma_gsm_enable_for_spr"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_965

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_965

    const/4 v2, 0x1

    :goto_478
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    sget-object v17, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "global_network_cdma_gsm_enable_for_vzw"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_968

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_968

    const/4 v2, 0x1

    :goto_496
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    sget-object v17, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "cdma_additional_setting_enable"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4b7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4b7

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_96b

    :cond_4b7
    const/4 v2, 0x1

    :goto_4b8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    sget-object v17, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v19, "emergency_tone_alert_always"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4d3

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_96e

    :cond_4d3
    const/4 v2, 0x1

    :goto_4d4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    sget-object v14, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v17, "emergency_tone_alert_master_vol"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4fb

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4fb

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4fb

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_971

    :cond_4fb
    const/4 v2, 0x1

    :goto_4fc
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "hac_enable"

    move-object/from16 v0, v18

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    const-string v2, "comancheuc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51e

    const-string v2, "t0ltetmo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52a

    .line 1462
    :cond_51e
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "hac_enable"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    :cond_52a
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "network_mode_disable"

    move-object/from16 v0, v18

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "incoming_call_widget_description_enable"

    move-object/from16 v0, v18

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "onscreen_manage_conference"

    move-object/from16 v0, v18

    invoke-virtual {v2, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    sget-object v13, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v14, "usa_gsm_update_2nd_number"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_974

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_974

    const/4 v2, 0x1

    :goto_556
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "beep_vibration_for_ussd"

    move-object/from16 v0, v18

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "support_call_transfer"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_977

    const/4 v2, 0x1

    :goto_571
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "usa_gsm_network_setting"

    move-object/from16 v0, v18

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "feature_enable_csp"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_599

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_97a

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97a

    :cond_599
    const/4 v2, 0x1

    :goto_59a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "network_mode_list_lte"

    const-string v2, "t0ltetmo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97d

    const/4 v2, 0x1

    :goto_5ae
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ecbm_emergency_calls_only_enable"

    invoke-virtual {v2, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "usa_spr_roaming_feature"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "preferred_network_mode_reboot_enable"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "emergency_callback_mode_exit_timer_enable"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_980

    const/4 v2, 0x1

    :goto_5d5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "get_orig_dial_string_enable"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5ec

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_983

    :cond_5ec
    const/4 v2, 0x1

    :goto_5ed
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "remove_voicemail_category"

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->hasVisualVoicemail()Z

    move-result v2

    if-nez v2, :cond_604

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_986

    :cond_604
    const/4 v2, 0x1

    :goto_605
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "visual_voicemail_enable"

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->hasVisualVoicemail()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v2, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "updated_calling_name_presentation"

    const-string v13, "t0ltespr"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v2, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "csc_chameleon_enable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Common_UseChameleon"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v2, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "abbreviated_dialing_codes_enable"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_653

    const-string v2, "csc_chameleon_enable"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_989

    :cond_653
    const/4 v2, 0x1

    :goto_654
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "abbreviated_dialing_codes_table_sprint"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "abbreviated_dialing_codes_table_virgin"

    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "abbreviated_dialing_codes_table_boost"

    invoke-virtual {v2, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "powey_key_ends_call_during_screen_off"

    const-string v2, "goghspr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98c

    const-string v2, "aegis2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98c

    const-string v2, "jaspervzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98c

    const-string v2, "iconvmu"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98c

    const-string v2, "prevail2spr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98c

    const/4 v2, 0x1

    :goto_69d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "extra_volume"

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_98f

    const-string v2, "goghspr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98f

    const-string v2, "infiniteusc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98f

    const/4 v2, 0x1

    :goto_6bf
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "noise_reduction_icon_no_display_always"

    const-string v2, "goghspr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d8

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_992

    :cond_6d8
    const/4 v2, 0x1

    :goto_6d9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "sprint_connections_optimizer"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6f0

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_995

    :cond_6f0
    const/4 v2, 0x1

    :goto_6f1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "call_block_ui"

    const-string v2, "goghspr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70a

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_998

    :cond_70a
    const/4 v2, 0x1

    :goto_70b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "thrway_active_disable"

    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_automatic_cdma_lte_gsm"

    const-string v6, "t0ltespr"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "roaming_setting_guard_data_only"

    const-string v6, "espresso10spr"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "north_american_dialing_plan_for_voicemail"

    const-string v6, "t0ltespr"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "sprint_mvno_mobile_network_feature"

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voice_privacy_enable"

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_99b

    const/4 v2, 0x1

    :goto_75e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ddtm_enable"

    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "audio_manager_pingring"

    const-string v2, "prevail2spr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_780

    const-string v2, "iconvmu"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99e

    :cond_780
    const/4 v2, 0x1

    :goto_781
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "is_lo_res_disable"

    const-string v6, "prevail2spr"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_vzw"

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "cdma_apn_enable"

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "auto_retry_enable"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7b7

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9a1

    :cond_7b7
    const/4 v2, 0x1

    :goto_7b8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "eri_info_label_enable"

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "system_selection_automatic_ab_enable"

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "emergency_dialer_home_recent_block"

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "reject_call_with_message_send_button_enable"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9a4

    const/4 v2, 0x1

    :goto_7df
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "assisted_dialing_enable"

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "global_data_roaming_access_enable"

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "wifi_diable_during_emergency_call"

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "enable_urgenct_voice_mail_notification"

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_manual_selection_when_bootup"

    const-string v2, "d2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81e

    const-string v2, "aegis2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81e

    const-string v2, "t0ltevzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a7

    :cond_81e
    const/4 v2, 0x1

    :goto_81f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "recent_hw_key_disable_when_incoming"

    const-string v2, "jaspervzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83a

    const-string v2, "aegis2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9aa

    :cond_83a
    const/4 v2, 0x1

    :goto_83b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_duplicated_name_in_plmn_list"

    const-string v2, "d2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_866

    const-string v2, "aegis2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_866

    const-string v2, "t0ltevzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_866

    const-string v2, "espresso10vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9ad

    :cond_866
    const/4 v2, 0x1

    :goto_867
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "display_info_diable"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    sget-object v5, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "set_network_mode_when_no_sim_bootup"

    const-string v2, "d2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_896

    const-string v2, "aegis2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_896

    const-string v2, "t0ltevzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b0

    :cond_896
    const-string v2, "gsm.default.channel"

    const/4 v7, 0x0

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_9b0

    const/4 v2, 0x1

    :goto_8a0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_uscc"

    invoke-virtual {v2, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_att"

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hide_call_barring"

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "cityid_enable"

    const-string v6, "comancheuc"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "att_customer_proprietary_information"

    const-string v6, "comancheuc"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_tmo"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_ecn"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    sget-object v3, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hardkeyboardhidden_no"

    const-string v2, "aegis2vzw"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_904

    const-string v2, "apexqtmo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b3

    :cond_904
    const/4 v2, 0x1

    :goto_905
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer"

    invoke-static {}, Lcom/android/phone/PhoneFeature;->hasIlluminanceSensor()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_92d

    .line 1558
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "allow_select_network_mode"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    :cond_92d
    const-string v2, "goghspr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_941

    .line 1562
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "in_call_menu_memo_enable"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    :cond_941
    sget-object v2, Lcom/android/phone/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer_default_on"

    invoke-virtual {v2, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f0

    .line 1411
    :cond_94a
    const/4 v2, 0x0

    goto/16 :goto_222

    .line 1417
    :cond_94d
    const/4 v2, 0x0

    goto/16 :goto_277

    .line 1426
    :cond_950
    const/4 v2, 0x0

    goto/16 :goto_313

    .line 1429
    :cond_953
    const/4 v2, 0x0

    goto/16 :goto_331

    .line 1437
    :cond_956
    const/4 v2, 0x0

    goto/16 :goto_373

    .line 1447
    :cond_959
    const/4 v2, 0x0

    goto/16 :goto_3e2

    .line 1448
    :cond_95c
    const/4 v2, 0x0

    goto/16 :goto_3fe

    .line 1449
    :cond_95f
    const/4 v2, 0x0

    goto/16 :goto_41a

    .line 1450
    :cond_962
    const/4 v2, 0x0

    goto/16 :goto_45a

    .line 1451
    :cond_965
    const/4 v2, 0x0

    goto/16 :goto_478

    .line 1452
    :cond_968
    const/4 v2, 0x0

    goto/16 :goto_496

    .line 1453
    :cond_96b
    const/4 v2, 0x0

    goto/16 :goto_4b8

    .line 1454
    :cond_96e
    const/4 v2, 0x0

    goto/16 :goto_4d4

    .line 1455
    :cond_971
    const/4 v2, 0x0

    goto/16 :goto_4fc

    .line 1469
    :cond_974
    const/4 v2, 0x0

    goto/16 :goto_556

    .line 1471
    :cond_977
    const/4 v2, 0x0

    goto/16 :goto_571

    .line 1475
    :cond_97a
    const/4 v2, 0x0

    goto/16 :goto_59a

    .line 1476
    :cond_97d
    const/4 v2, 0x0

    goto/16 :goto_5ae

    .line 1483
    :cond_980
    const/4 v2, 0x0

    goto/16 :goto_5d5

    .line 1484
    :cond_983
    const/4 v2, 0x0

    goto/16 :goto_5ed

    .line 1485
    :cond_986
    const/4 v2, 0x0

    goto/16 :goto_605

    .line 1491
    :cond_989
    const/4 v2, 0x0

    goto/16 :goto_654

    .line 1495
    :cond_98c
    const/4 v2, 0x0

    goto/16 :goto_69d

    .line 1496
    :cond_98f
    const/4 v2, 0x0

    goto/16 :goto_6bf

    .line 1497
    :cond_992
    const/4 v2, 0x0

    goto/16 :goto_6d9

    .line 1498
    :cond_995
    const/4 v2, 0x0

    goto/16 :goto_6f1

    .line 1499
    :cond_998
    const/4 v2, 0x0

    goto/16 :goto_70b

    .line 1507
    :cond_99b
    const/4 v2, 0x0

    goto/16 :goto_75e

    .line 1511
    :cond_99e
    const/4 v2, 0x0

    goto/16 :goto_781

    .line 1518
    :cond_9a1
    const/4 v2, 0x0

    goto/16 :goto_7b8

    .line 1522
    :cond_9a4
    const/4 v2, 0x0

    goto/16 :goto_7df

    .line 1529
    :cond_9a7
    const/4 v2, 0x0

    goto/16 :goto_81f

    .line 1530
    :cond_9aa
    const/4 v2, 0x0

    goto/16 :goto_83b

    .line 1531
    :cond_9ad
    const/4 v2, 0x0

    goto/16 :goto_867

    .line 1533
    :cond_9b0
    const/4 v2, 0x0

    goto/16 :goto_8a0

    .line 1554
    :cond_9b3
    const/4 v2, 0x0

    goto/16 :goto_905
.end method
