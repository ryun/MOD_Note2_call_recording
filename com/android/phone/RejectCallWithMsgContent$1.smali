.class Lcom/android/phone/RejectCallWithMsgContent$1;
.super Landroid/os/Handler;
.source "RejectCallWithMsgContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgContent;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgContent;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 102
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_cc

    .line 150
    :cond_9
    :goto_9
    return-void

    .line 104
    :pswitch_a
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 105
    .local v2, index:I
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 107
    .local v5, text:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mBtnList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/phone/RejectCallWithMsgContent;->access$000(Lcom/android/phone/RejectCallWithMsgContent;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 108
    .local v3, item:Landroid/widget/LinearLayout;
    const v7, 0x7f0901df

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v6, v7

    check-cast v6, Landroid/widget/TextView;

    .line 109
    .local v6, textView:Landroid/widget/TextView;
    if-eqz v6, :cond_2d

    .line 110
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_2d
    const v7, 0x7f0901e0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    move-object v0, v7

    check-cast v0, Landroid/widget/Button;

    .line 112
    .local v0, btn:Landroid/widget/Button;
    const-string v7, "reject_call_with_message_send_button_enable"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 113
    if-eqz v0, :cond_4f

    .line 114
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;
    invoke-static {v7}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    :cond_4f
    :goto_4f
    const-string v7, "feature_remind_me_later_support "

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 126
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 127
    .local v4, remindtime:I
    const v7, 0x7f0901e1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    move-object v1, v7

    check-cast v1, Landroid/widget/ImageView;

    .line 128
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_6c

    .line 129
    if-lez v4, :cond_c5

    .line 130
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v4           #remindtime:I
    :cond_6c
    :goto_6c
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    const-string v7, "feature_chn_duos"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 138
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mNetType:I
    invoke-static {v7, v10}, Lcom/android/phone/RejectCallWithMsgContent;->access$202(Lcom/android/phone/RejectCallWithMsgContent;I)I

    .line 139
    iget-object v10, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mNetType:I
    invoke-static {v7}, Lcom/android/phone/RejectCallWithMsgContent;->access$200(Lcom/android/phone/RejectCallWithMsgContent;)I

    move-result v7

    if-ne v7, v8, :cond_c9

    move v7, v8

    :goto_8f
    #setter for: Lcom/android/phone/RejectCallWithMsgContent;->mPhoneType:I
    invoke-static {v10, v7}, Lcom/android/phone/RejectCallWithMsgContent;->access$302(Lcom/android/phone/RejectCallWithMsgContent;I)I

    .line 142
    :cond_92
    const-string v7, "usa_cdma_emergency_concept"

    invoke-static {v7}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "ril.cdma.inecmmode"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 144
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    invoke-virtual {v7}, Lcom/android/phone/RejectCallWithMsgContent;->disableSendMsgButton()V

    goto/16 :goto_9

    .line 118
    :cond_b1
    if-eqz v6, :cond_bf

    .line 119
    iget-object v7, p0, Lcom/android/phone/RejectCallWithMsgContent$1;->this$0:Lcom/android/phone/RejectCallWithMsgContent;

    #getter for: Lcom/android/phone/RejectCallWithMsgContent;->mSendMsgListener:Landroid/view/View$OnClickListener;
    invoke-static {v7}, Lcom/android/phone/RejectCallWithMsgContent;->access$100(Lcom/android/phone/RejectCallWithMsgContent;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 122
    :cond_bf
    if-eqz v0, :cond_4f

    .line 123
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4f

    .line 132
    .restart local v1       #imageView:Landroid/widget/ImageView;
    .restart local v4       #remindtime:I
    :cond_c5
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6c

    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v4           #remindtime:I
    :cond_c9
    move v7, v9

    .line 139
    goto :goto_8f

    .line 102
    nop

    :pswitch_data_cc
    .packed-switch 0x64
        :pswitch_a
    .end packed-switch
.end method
