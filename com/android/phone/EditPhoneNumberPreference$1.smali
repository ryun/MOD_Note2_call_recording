.class Lcom/android/phone/EditPhoneNumberPreference$1;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPhoneNumberPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mParentFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/phone/EditPhoneNumberPreference;->access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 229
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 230
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mParentFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/phone/EditPhoneNumberPreference;->access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->access$100(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I
    invoke-static {v2}, Lcom/android/phone/EditPhoneNumberPreference;->access$200(Lcom/android/phone/EditPhoneNumberPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    :cond_29
    :goto_29
    return-void

    .line 232
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mParentFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/phone/EditPhoneNumberPreference;->access$000(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->access$100(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I
    invoke-static {v2}, Lcom/android/phone/EditPhoneNumberPreference;->access$200(Lcom/android/phone/EditPhoneNumberPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_29

    .line 234
    :cond_40
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/phone/EditPhoneNumberPreference;->access$300(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 235
    iget-object v0, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/phone/EditPhoneNumberPreference;->access$300(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/EditPhoneNumberPreference;->access$100(Lcom/android/phone/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/EditPhoneNumberPreference;

    #getter for: Lcom/android/phone/EditPhoneNumberPreference;->mPrefId:I
    invoke-static {v2}, Lcom/android/phone/EditPhoneNumberPreference;->access$200(Lcom/android/phone/EditPhoneNumberPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_29
.end method
