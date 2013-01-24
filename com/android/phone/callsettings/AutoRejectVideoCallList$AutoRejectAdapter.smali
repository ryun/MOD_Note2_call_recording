.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "_context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 803
    .local p3, _autoRejectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;>;"
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 805
    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->context:Landroid/app/Activity;

    .line 806
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 807
    iput-object p3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    .line 808
    return-void
.end method

.method private drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 826
    move-object v1, p2

    .line 829
    .local v1, v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    .line 830
    .local v0, item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;
    if-eqz v0, :cond_78

    .line 831
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    if-nez v3, :cond_79

    .line 832
    :cond_15
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 833
    new-instance v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;)V

    .line 835
    .local v2, viewHolder:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;
    const v3, 0x7f090021

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 836
    const/high16 v3, 0x101

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 837
    const v3, 0x7f090020

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 838
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 839
    const v3, 0x1010001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 840
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 845
    :goto_5a
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v3, :cond_65

    .line 846
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    :cond_65
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    if-nez v3, :cond_80

    .line 851
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0e02d9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 859
    .end local v2           #viewHolder:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;
    :cond_78
    :goto_78
    return-object v1

    .line 842
    :cond_79
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    .restart local v2       #viewHolder:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;
    goto :goto_5a

    .line 852
    :cond_80
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8e

    .line 853
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0e02da

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_78

    .line 854
    :cond_8e
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9c

    .line 855
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0e02db

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_78

    .line 856
    :cond_9c
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_78

    .line 857
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0e02dc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_78
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 863
    move-object v5, p2

    .line 865
    .local v5, v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawNormalScreen, autoreject pos : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " rejectNum = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v8, v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1700(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    .line 868
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    .line 870
    .local v2, item:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;
    if-eqz v2, :cond_1ba

    .line 871
    if-nez p1, :cond_b4

    .line 872
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040010

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 874
    const v8, 0x7f090026

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 875
    .local v3, text:Landroid/widget/TextView;
    const v8, 0x7f09002d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 876
    .local v4, text_layout:Landroid/widget/LinearLayout;
    const v8, 0x7f09002a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    move-object v0, v8

    check-cast v0, Landroid/widget/CheckBox;

    .line 878
    .local v0, checkbox:Landroid/widget/CheckBox;
    new-instance v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    new-instance v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    iget-object v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    .line 919
    .local v1, checked:I
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "for Unknown, mScreenType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v10}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " checked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1700(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    .line 920
    if-lez v1, :cond_b2

    const/4 v8, 0x1

    :goto_ad
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object v6, v5

    .line 1031
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #checked:I
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #text_layout:Landroid/widget/LinearLayout;
    .end local v5           #v:Landroid/view/View;
    .local v6, v:Landroid/view/View;
    :goto_b1
    return-object v6

    .line 920
    .end local v6           #v:Landroid/view/View;
    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    .restart local v1       #checked:I
    .restart local v3       #text:Landroid/widget/TextView;
    .restart local v4       #text_layout:Landroid/widget/LinearLayout;
    .restart local v5       #v:Landroid/view/View;
    :cond_b2
    const/4 v8, 0x0

    goto :goto_ad

    .line 924
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #checked:I
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #text_layout:Landroid/widget/LinearLayout;
    :cond_b4
    if-eqz v5, :cond_be

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    if-nez v8, :cond_186

    .line 925
    :cond_be
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f04000e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 926
    new-instance v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;)V

    .line 928
    .local v7, viewHolder:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;
    const v8, 0x7f090027

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 929
    const v8, 0x7f090026

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 930
    const v8, 0x7f090028

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 931
    const v8, 0x7f09002a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 932
    const v8, 0x7f090025

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 933
    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 937
    :goto_109
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$3;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$3;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 958
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 981
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$5;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$5;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1009
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v8, :cond_132

    .line 1010
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    :cond_132
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    if-eqz p1, :cond_147

    .line 1015
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    if-nez v8, :cond_18e

    .line 1016
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02d9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1025
    :cond_147
    :goto_147
    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    .line 1026
    .restart local v1       #checked:I
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mScreenType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v10}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " checked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1700(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    .line 1027
    iget-object v9, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    if-lez v1, :cond_1b8

    const/4 v8, 0x1

    :goto_180
    invoke-virtual {v9, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object v6, v5

    .line 1029
    .end local v5           #v:Landroid/view/View;
    .restart local v6       #v:Landroid/view/View;
    goto/16 :goto_b1

    .line 935
    .end local v1           #checked:I
    .end local v6           #v:Landroid/view/View;
    .end local v7           #viewHolder:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;
    .restart local v5       #v:Landroid/view/View;
    :cond_186
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    .restart local v7       #viewHolder:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;
    goto/16 :goto_109

    .line 1017
    :cond_18e
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_19c

    .line 1018
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02da

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_147

    .line 1019
    :cond_19c
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1aa

    .line 1020
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02db

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_147

    .line 1021
    :cond_1aa
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_147

    .line 1022
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02dc

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_147

    .line 1027
    .restart local v1       #checked:I
    :cond_1b8
    const/4 v8, 0x0

    goto :goto_180

    .end local v1           #checked:I
    .end local v7           #viewHolder:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;
    :cond_1ba
    move-object v6, v5

    .line 1031
    .end local v5           #v:Landroid/view/View;
    .restart local v6       #v:Landroid/view/View;
    goto/16 :goto_b1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 795
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->getItem(I)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 822
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1036
    const/4 v0, 0x0

    .line 1038
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    .line 1039
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1043
    :goto_e
    return-object v0

    .line 1041
    :cond_f
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_e
.end method
