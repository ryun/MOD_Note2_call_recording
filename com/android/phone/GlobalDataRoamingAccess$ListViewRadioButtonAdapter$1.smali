.class Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;
.super Ljava/lang/Object;
.source "GlobalDataRoamingAccess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iput p2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 219
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    iget v5, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->val$position:I

    #calls: Lcom/android/phone/GlobalDataRoamingAccess;->checkSecureSetting(I)Z
    invoke-static {v2, v5}, Lcom/android/phone/GlobalDataRoamingAccess;->access$400(Lcom/android/phone/GlobalDataRoamingAccess;I)Z

    move-result v2

    if-nez v2, :cond_54

    .line 221
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mRadioButtonList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$500(Lcom/android/phone/GlobalDataRoamingAccess;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 222
    .local v1, mRB:Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    iget v5, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->val$position:I

    if-ne v2, v5, :cond_33

    move v2, v3

    :goto_2f
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1a

    :cond_33
    move v2, v4

    goto :goto_2f

    .line 224
    .end local v1           #mRB:Landroid/widget/RadioButton;
    :cond_35
    iget v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->val$position:I

    packed-switch v2, :pswitch_data_a0

    .line 234
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming_onetime"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_54
    :goto_54
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 240
    :cond_69
    return-void

    .line 226
    .restart local v0       #i$:Ljava/util/Iterator;
    :pswitch_6a
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "data_roaming"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "data_roaming_onetime"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_54

    .line 230
    :pswitch_85
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "data_roaming"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming_onetime"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_54

    .line 224
    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_85
    .end packed-switch
.end method
