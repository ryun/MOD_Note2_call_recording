.class public interface abstract Lcom/android/phone/callsettings/ProviderConstants;
.super Ljava/lang/Object;
.source "ProviderConstants.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

.field public static final AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

.field public static final AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

.field public static final CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

.field public static final IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

.field public static final IPCALL_CONTENT_URI:Landroid/net/Uri;

.field public static final PREFIX_CONTENT_URI:Landroid/net/Uri;

.field public static final REGISTERREPLYMSG_CONTENT_URI:Landroid/net/Uri;

.field public static final REGISTERUSSD_CONTENT_URI:Landroid/net/Uri;

.field public static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;

.field public static final WHITELIST_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "content://com.android.phone.callsettings/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    .line 52
    const-string v0, "content://com.android.phone.callsettings/reject_videocall_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    .line 55
    const-string v0, "content://com.android.phone.callsettings/reject_outgoingcall_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    .line 58
    const-string v0, "content://com.android.phone.callsettings/prefix_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/ProviderConstants;->PREFIX_CONTENT_URI:Landroid/net/Uri;

    .line 61
    const-string v0, "content://com.android.phone.callsettings/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    .line 64
    const-string v0, "content://com.android.phone.callsettings/call_reminder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/ProviderConstants;->CALLREMINDER_CONTENT_URI:Landroid/net/Uri;

    .line 67
    const-string v0, "content://com.android.phone.callsettings/whitelist_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/ProviderConstants;->WHITELIST_CONTENT_URI:Landroid/net/Uri;

    .line 71
    const-string v0, "content://com.android.phone.callsettings/register_ussd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERUSSD_CONTENT_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "content://com.android.phone.callsettings/register_reply_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/ProviderConstants;->REGISTERREPLYMSG_CONTENT_URI:Landroid/net/Uri;

    .line 77
    const-string v0, "content://com.android.phone.callsettings/ip_call"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    .line 79
    const-string v0, "content://com.android.phone.callsettings/ip_call_cdma"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/ProviderConstants;->IPCALLCDMA_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
