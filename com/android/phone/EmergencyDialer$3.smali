.class Lcom/android/phone/EmergencyDialer$3;
.super Landroid/widget/ArrayAdapter;
.source "EmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->onCreateSimSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;Landroid/content/Context;I[Ljava/lang/String;Landroid/view/LayoutInflater;)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$3;->this$0:Lcom/android/phone/EmergencyDialer;

    iput-object p5, p0, Lcom/android/phone/EmergencyDialer$3;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "simSelectView"
    .parameter "parent"

    .prologue
    .line 1079
    if-nez p2, :cond_c

    .line 1080
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer$3;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v4, 0x10900cb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1085
    :cond_c
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1086
    .local v1, text1:Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1087
    .local v2, text2:Landroid/widget/TextView;
    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1089
    .local v0, icon:Landroid/widget/ImageView;
    if-nez p1, :cond_3b

    .line 1090
    const v3, 0x7f0e0743

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1091
    const v3, 0x7f0201e7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1096
    :goto_35
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1098
    return-object p2

    .line 1093
    :cond_3b
    const v3, 0x7f0e0744

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1094
    const v3, 0x7f0201e8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_35
.end method
