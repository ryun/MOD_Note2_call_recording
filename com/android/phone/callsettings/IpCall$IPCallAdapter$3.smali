.class Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 972
    const v1, 0x7f09016a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 973
    .local v0, radio:Landroid/widget/RadioButton;
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    #getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$1500(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_ab

    move v1, v2

    :goto_17
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 974
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 975
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->val$position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 977
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    #getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$1600(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/IpCall;->access$800(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 978
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default ip number is changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    #getter for: Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->items:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->access$1600(Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    new-instance v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04004f

    iget-object v6, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v6, v6, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/phone/callsettings/IpCall;->access$600(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/content/Context;ILjava/util/ArrayList;)V

    #setter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/IpCall;->access$1102(Lcom/android/phone/callsettings/IpCall;Lcom/android/phone/callsettings/IpCall$IPCallAdapter;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    .line 981
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v1, v1, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall$IPCallAdapter$3;->this$1:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/IpCall$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCall;

    #getter for: Lcom/android/phone/callsettings/IpCall;->mListAdapter:Lcom/android/phone/callsettings/IpCall$IPCallAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/IpCall;->access$1100(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IPCallAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 982
    return-void

    .line 973
    :cond_ab
    const/4 v1, 0x0

    goto/16 :goto_17
.end method
