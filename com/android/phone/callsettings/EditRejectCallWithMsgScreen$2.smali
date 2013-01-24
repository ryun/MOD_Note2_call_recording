.class Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$2;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgScreen.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen$2;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 17
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    .line 143
    .local v2, inputSize:[I
    const/4 v7, 0x4

    new-array v5, v7, [I

    fill-array-data v5, :array_5e

    .line 144
    .local v5, size:[I
    const/4 v3, 0x0

    .line 145
    .local v3, keep:I
    const/4 v4, 0x0

    .line 147
    .local v4, septets:I
    const/4 v7, 0x3

    aget v7, v2, v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_31

    .line 148
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v5

    .line 152
    :goto_21
    const/4 v7, 0x2

    aget v7, v5, v7

    sub-int v8, p6, p5

    add-int v3, v7, v8

    .line 159
    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3b

    .line 160
    const-string v6, ""

    .line 182
    :cond_30
    :goto_30
    return-object v6

    .line 150
    :cond_31
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v5

    goto :goto_21

    .line 161
    :cond_3b
    sub-int v7, p3, p2

    if-lt v3, v7, :cond_49

    .line 162
    const/4 v7, 0x1

    aget v7, v2, v7

    if-ge v3, v7, :cond_47

    .line 163
    const-string v6, ""

    goto :goto_30

    .line 165
    :cond_47
    const/4 v6, 0x0

    goto :goto_30

    .line 168
    :cond_49
    const/4 v6, 0x0

    .line 169
    .local v6, subChar:Ljava/lang/CharSequence;
    move v0, v3

    .line 172
    .local v0, decrKeep:I
    :goto_4b
    add-int/lit8 v1, v0, -0x1

    .end local v0           #decrKeep:I
    .local v1, decrKeep:I
    add-int v7, p2, v0

    invoke-interface {p1, p2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 175
    const/4 v7, 0x1

    :try_start_54
    invoke-static {v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_57
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_54 .. :try_end_57} :catch_5c

    move-result v4

    .line 180
    :goto_58
    if-le v4, v3, :cond_30

    move v0, v1

    .end local v1           #decrKeep:I
    .restart local v0       #decrKeep:I
    goto :goto_4b

    .line 176
    .end local v0           #decrKeep:I
    .restart local v1       #decrKeep:I
    :catch_5c
    move-exception v7

    goto :goto_58

    .line 143
    :array_5e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
