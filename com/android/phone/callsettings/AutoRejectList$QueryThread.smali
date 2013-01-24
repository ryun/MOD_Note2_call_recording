.class Lcom/android/phone/callsettings/AutoRejectList$QueryThread;
.super Ljava/lang/Thread;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;Lcom/android/phone/callsettings/AutoRejectList$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;-><init>(Lcom/android/phone/callsettings/AutoRejectList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 180
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 181
    .local v10, msg:Landroid/os/Message;
    const/16 v0, 0x64

    iput v0, v10, Landroid/os/Message;->what:I

    .line 184
    const/4 v7, 0x0

    .line 185
    .local v7, contact_cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 186
    .local v11, shouldDefaultName:Z
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #calls: Lcom/android/phone/callsettings/AutoRejectList;->hasUnknownItem()Z
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$300(Lcom/android/phone/callsettings/AutoRejectList;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v9, v12

    .line 188
    .local v9, index:I
    :cond_19
    const-string v0, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryThread start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 191
    :goto_31
    :try_start_31
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_e9

    .line 192
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 194
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 198
    if-eqz v7, :cond_8d

    .line 199
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 201
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 202
    .local v6, columnIndex:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_c7

    .line 203
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    .line 215
    .end local v6           #columnIndex:I
    :cond_8d
    :goto_8d
    if-eqz v7, :cond_92

    .line 216
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_92
    if-eqz v11, :cond_c3

    .line 220
    const/4 v11, 0x0

    .line 222
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->defaultName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 223
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectList;->access$400(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    #getter for: Lcom/android/phone/callsettings/AutoRejectList;->defaultName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/callsettings/AutoRejectList;->access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_c3} :catch_cb

    .line 191
    :cond_c3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_31

    .line 207
    .restart local v6       #columnIndex:I
    :cond_c7
    const/4 v11, 0x1

    goto :goto_8d

    .line 211
    .end local v6           #columnIndex:I
    :cond_c9
    const/4 v11, 0x1

    goto :goto_8d

    .line 227
    .end local v1           #contactUri:Landroid/net/Uri;
    :catch_cb
    move-exception v8

    .line 228
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "AutoRejectList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 229
    if-eqz v7, :cond_e9

    .line 230
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 233
    .end local v8           #e:Ljava/lang/Exception;
    :cond_e9
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    const-string v0, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryThread end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 236
    return-void
.end method
