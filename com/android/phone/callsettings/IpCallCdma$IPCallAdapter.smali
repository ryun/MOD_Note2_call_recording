.class Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IpCallCdma.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IpCallCdma;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIpNumberString:Ljava/lang/String;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/phone/callsettings/IpCallCdma;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/IpCallCdma;Landroid/content/Context;ILjava/util/ArrayList;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 897
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    .line 898
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 899
    iput-object p4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->items:Ljava/util/ArrayList;

    .line 900
    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mIpNumberString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Landroid/widget/RadioButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->items:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 903
    if-nez p2, :cond_14

    .line 904
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/IpCallCdma;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 905
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04004f

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 909
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_14
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mIpNumberString:Ljava/lang/String;

    .line 910
    const v4, 0x7f090168

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mTextView:Landroid/widget/TextView;

    .line 911
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mIpNumberString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    const v4, 0x7f09016a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    .line 915
    const v4, 0x7f090169

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 916
    .local v2, radio_layout:Landroid/widget/LinearLayout;
    const v4, 0x7f090167

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 919
    .local v3, text_layout:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCallCdma;->access$700(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 920
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mIpNumberString:Ljava/lang/String;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/callsettings/IpCallCdma;->access$800(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    .line 923
    :cond_62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_63
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_89

    .line 924
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mIpNumberString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/callsettings/IpCallCdma;->access$700(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 925
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 923
    :goto_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 927
    :cond_82
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_7f

    .line 931
    :cond_89
    new-instance v4, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$1;-><init>(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 947
    new-instance v4, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$2;-><init>(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    new-instance v4, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter$3;-><init>(Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 986
    return-object p2
.end method
