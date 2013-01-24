.class public Lcom/android/phone/callsettings/SwitchDialogPreference;
.super Landroid/preference/SwitchPreference;
.source "SwitchDialogPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/SwitchDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/callsettings/SwitchDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method


# virtual methods
.method protected onClick()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method
