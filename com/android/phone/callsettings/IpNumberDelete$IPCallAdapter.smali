.class Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IpNumberDelete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IpNumberDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IPCallAdapter"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/callsettings/IpNumberDelete;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/IpNumberDelete;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;>;"
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    .line 375
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 376
    iput-object p4, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->items:Ljava/util/ArrayList;

    .line 377
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 380
    move-object v0, p2

    .line 382
    .local v0, delete:Landroid/view/View;
    if-nez v0, :cond_15

    .line 383
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/IpNumberDelete;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 384
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04004d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 387
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    .line 389
    .local v2, s:Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;
    const v3, 0x7f09016c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v4, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    const v3, 0x7f09016d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    #setter for: Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteStatus:Landroid/widget/CheckBox;
    invoke-static {v4, v3}, Lcom/android/phone/callsettings/IpNumberDelete;->access$202(Lcom/android/phone/callsettings/IpNumberDelete;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 393
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    #getter for: Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteStatus:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpNumberDelete;->access$200(Lcom/android/phone/callsettings/IpNumberDelete;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 394
    return-object v0
.end method
