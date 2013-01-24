.class Lcom/android/phone/LGTGlobalAutoRoaming$4;
.super Ljava/lang/Object;
.source "LGTGlobalAutoRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTGlobalAutoRoaming;->dataRoamingSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTGlobalAutoRoaming;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/phone/LGTGlobalAutoRoaming$4;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming$4;->this$0:Lcom/android/phone/LGTGlobalAutoRoaming;

    #getter for: Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/LGTGlobalAutoRoaming;->access$200(Lcom/android/phone/LGTGlobalAutoRoaming;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 240
    return-void
.end method
