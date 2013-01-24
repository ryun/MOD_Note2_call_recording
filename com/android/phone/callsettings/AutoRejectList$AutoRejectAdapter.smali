.class Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V
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
            "Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 841
    .local p3, _autoRejectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;>;"
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 843
    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    .line 844
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 845
    iput-object p3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    .line 846
    return-void
.end method

.method private drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 864
    move-object v1, p2

    .line 867
    .local v1, v:Landroid/view/View;
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    .line 868
    .local v0, item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;
    if-eqz v0, :cond_78

    .line 869
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    if-nez v3, :cond_79

    .line 870
    :cond_15
    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 871
    new-instance v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;)V

    .line 873
    .local v2, viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    const v3, 0x7f090021

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 874
    const/high16 v3, 0x101

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 875
    const v3, 0x7f090020

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 876
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 877
    const v3, 0x1010001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 878
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 883
    :goto_5a
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v3, :cond_65

    .line 884
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    :cond_65
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-nez v3, :cond_80

    .line 889
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0e02d9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 897
    .end local v2           #viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    :cond_78
    :goto_78
    return-object v1

    .line 880
    :cond_79
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    .restart local v2       #viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    goto :goto_5a

    .line 890
    :cond_80
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8e

    .line 891
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0e02da

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_78

    .line 892
    :cond_8e
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9c

    .line 893
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v4, 0x7f0e02db

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_78

    .line 894
    :cond_9c
    iget v3, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_78

    .line 895
    iget-object v3, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

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
    .line 901
    move-object v5, p2

    .line 903
    .local v5, v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

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

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v8, v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/phone/callsettings/AutoRejectList;->access$1800(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 906
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    .line 908
    .local v2, item:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;
    if-eqz v2, :cond_1ca

    .line 909
    if-nez p1, :cond_bc

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z
    invoke-static {v8}, Lcom/android/phone/callsettings/AutoRejectList;->access$300(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 910
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040010

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 912
    const v8, 0x7f090026

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 913
    .local v3, text:Landroid/widget/TextView;
    const v8, 0x7f09002d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 914
    .local v4, text_layout:Landroid/widget/LinearLayout;
    const v8, 0x7f09002a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    move-object v0, v8

    check-cast v0, Landroid/widget/CheckBox;

    .line 916
    .local v0, checkbox:Landroid/widget/CheckBox;
    new-instance v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$1;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$1;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    new-instance v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$2;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$2;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    iget-object v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    .line 957
    .local v1, checked:I
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "for Unknown, mScreenType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v10}, Lcom/android/phone/callsettings/AutoRejectList;->access$1000(Lcom/android/phone/callsettings/AutoRejectList;)I

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

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/callsettings/AutoRejectList;->access$1800(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 958
    if-lez v1, :cond_ba

    const/4 v8, 0x1

    :goto_b5
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object v6, v5

    .line 1069
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #checked:I
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #text_layout:Landroid/widget/LinearLayout;
    .end local v5           #v:Landroid/view/View;
    .local v6, v:Landroid/view/View;
    :goto_b9
    return-object v6

    .line 958
    .end local v6           #v:Landroid/view/View;
    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    .restart local v1       #checked:I
    .restart local v3       #text:Landroid/widget/TextView;
    .restart local v4       #text_layout:Landroid/widget/LinearLayout;
    .restart local v5       #v:Landroid/view/View;
    :cond_ba
    const/4 v8, 0x0

    goto :goto_b5

    .line 962
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #checked:I
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #text_layout:Landroid/widget/LinearLayout;
    :cond_bc
    if-eqz v5, :cond_c6

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    if-nez v8, :cond_196

    .line 963
    :cond_c6
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f04000e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 964
    new-instance v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;)V

    .line 966
    .local v7, viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    const v8, 0x7f090027

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    .line 967
    const v8, 0x7f090026

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 968
    const v8, 0x7f090028

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 969
    const v8, 0x7f09002a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 970
    const v8, 0x7f090025

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    .line 971
    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 975
    :goto_111
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$3;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$4;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$5;-><init>(Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1047
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v8, :cond_13a

    .line 1048
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    :cond_13a
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    if-nez p1, :cond_14b

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z
    invoke-static {v8}, Lcom/android/phone/callsettings/AutoRejectList;->access$300(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v8

    if-nez v8, :cond_157

    .line 1053
    :cond_14b
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    if-nez v8, :cond_19e

    .line 1054
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02d9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1063
    :cond_157
    :goto_157
    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    .line 1064
    .restart local v1       #checked:I
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mScreenType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v10}, Lcom/android/phone/callsettings/AutoRejectList;->access$1000(Lcom/android/phone/callsettings/AutoRejectList;)I

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

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/callsettings/AutoRejectList;->access$1800(Lcom/android/phone/callsettings/AutoRejectList;Ljava/lang/String;)V

    .line 1065
    iget-object v9, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    if-lez v1, :cond_1c8

    const/4 v8, 0x1

    :goto_190
    invoke-virtual {v9, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object v6, v5

    .line 1067
    .end local v5           #v:Landroid/view/View;
    .restart local v6       #v:Landroid/view/View;
    goto/16 :goto_b9

    .line 973
    .end local v1           #checked:I
    .end local v6           #v:Landroid/view/View;
    .end local v7           #viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    .restart local v5       #v:Landroid/view/View;
    :cond_196
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    .restart local v7       #viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    goto/16 :goto_111

    .line 1055
    :cond_19e
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1ac

    .line 1056
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02da

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_157

    .line 1057
    :cond_1ac
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1ba

    .line 1058
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02db

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_157

    .line 1059
    :cond_1ba
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->matched:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_157

    .line 1060
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0e02dc

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_157

    .line 1065
    .restart local v1       #checked:I
    :cond_1c8
    const/4 v8, 0x0

    goto :goto_190

    .end local v1           #checked:I
    .end local v7           #viewHolder:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;
    :cond_1ca
    move-object v6, v5

    .line 1069
    .end local v5           #v:Landroid/view/View;
    .restart local v6       #v:Landroid/view/View;
    goto/16 :goto_b9
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->getItem(I)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 860
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1074
    const/4 v0, 0x0

    .line 1076
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectList;->access$1000(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    .line 1077
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1081
    :goto_e
    return-object v0

    .line 1079
    :cond_f
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;->drawDeleteScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_e
.end method
