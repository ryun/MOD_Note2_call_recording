.class public Lcom/android/phone/CallLogAsync$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final callType:I

.field public final ci:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final dbUri:Landroid/net/Uri;

.field public final dormantset:I

.field public final durationInSec:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final remindme:I

.field public final sharedFilePath:Ljava/lang/String;

.field public final simnum:I

.field public final timestamp:J

.field public values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .registers 14
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 106
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 107
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 108
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 109
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 110
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 111
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 112
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 113
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 114
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 115
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 116
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V
    .registers 15
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "remindme"
    .parameter "dormantset"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 227
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 228
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 229
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 230
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 231
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 232
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 233
    iput-object v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 234
    iput-object v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 235
    iput-object v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 236
    iput p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 237
    iput p11, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;Landroid/net/Uri;)V
    .registers 15
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "value"
    .parameter "dbUri"

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 154
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 155
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 156
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 157
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 158
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 159
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 160
    iget-object v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 161
    iput-object p11, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 163
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 164
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 165
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V
    .registers 15
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 129
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 130
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 131
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 132
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 133
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 134
    iput-object p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 135
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 136
    iput-object v3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 137
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 138
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 139
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;II)V
    .registers 16
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "remindme"
    .parameter "dormantset"

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 203
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 204
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 205
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 206
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 207
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 208
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 209
    iput-object p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 210
    iput-object v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 211
    iput-object v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 212
    iput p11, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 213
    iput p12, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;Ljava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "sharedFilePath"

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 179
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 180
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 181
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 182
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 183
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 184
    iput-object p10, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 186
    iput-object p11, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 187
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->remindme:I

    .line 188
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->dormantset:I

    .line 189
    iput v2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->simnum:I

    .line 190
    return-void
.end method
