.class public Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field private mPhoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/RespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "phoneNumber"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p2, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    .line 206
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v8}, Lcom/android/phone/RespondViaSmsManager;->access$000(Ljava/lang/String;Z)V

    .line 217
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p3, v5, :cond_56

    .line 224
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v6, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    #calls: Lcom/android/phone/RespondViaSmsManager;->launchSmsCompose(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/RespondViaSmsManager;->access$100(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V

    .line 258
    :goto_32
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    #getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$300(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    .line 260
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v5}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 262
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 263
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_87

    .line 265
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->dismissCallScreen()V

    .line 271
    :goto_55
    return-void

    .line 227
    .end local v4           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_56
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v6, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    #calls: Lcom/android/phone/RespondViaSmsManager;->sendText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v2}, Lcom/android/phone/RespondViaSmsManager;->access$200(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    #getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$300(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 233
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f0e027c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, formatString:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, confirmationMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    #getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$300(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-static {v5, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_32

    .line 269
    .end local v0           #confirmationMsg:Ljava/lang/String;
    .end local v1           #formatString:Ljava/lang/String;
    .end local v3           #res:Landroid/content/res/Resources;
    .restart local v4       #state:Lcom/android/internal/telephony/Phone$State;
    :cond_87
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    #getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$300(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_55
.end method
