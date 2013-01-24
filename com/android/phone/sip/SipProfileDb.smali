.class public Lcom/android/phone/sip/SipProfileDb;
.super Ljava/lang/Object;
.source "SipProfileDb.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProfilesCount:I

.field private mProfilesDirectory:Ljava/lang/String;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/sip/SipProfileDb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/profiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p1}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 53
    return-void
.end method

.method private deleteProfile(Ljava/io/File;)V
    .registers 7
    .parameter "file"

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 65
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_c
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .local v1, child:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 67
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 68
    return-void
.end method

.method private deserialize(Ljava/io/File;)Landroid/net/sip/SipProfile;
    .registers 10
    .parameter "profileObjectFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 133
    .local v0, atomicFile:Lcom/android/internal/os/AtomicFile;
    const/4 v2, 0x0

    .line 135
    .local v2, ois:Ljava/io/ObjectInputStream;
    :try_start_6
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_f} :catch_1c

    .line 136
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_15} :catch_46

    .line 141
    .local v4, p:Landroid/net/sip/SipProfile;
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    :cond_1a
    move-object v2, v3

    .line 143
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .end local v4           #p:Landroid/net/sip/SipProfile;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    :goto_1b
    return-object v4

    .line 138
    :catch_1c
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :goto_1d
    :try_start_1d
    sget-object v5, Lcom/android/phone/sip/SipProfileDb;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deserialize a profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_3c

    .line 141
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 143
    :cond_3a
    const/4 v4, 0x0

    goto :goto_1b

    .line 141
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catchall_3c
    move-exception v5

    :goto_3d
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_42
    throw v5

    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catchall_43
    move-exception v5

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_3d

    .line 138
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catch_46
    move-exception v1

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_1d
.end method

.method private retrieveSipProfileListInternal()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 110
    .local v9, sipProfileList:Ljava/util/List;,"Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v8, root:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, dirs:[Ljava/lang/String;
    if-nez v2, :cond_17

    .line 128
    :goto_16
    return-object v9

    .line 113
    :cond_17
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1a
    if-ge v5, v6, :cond_50

    aget-object v1, v0, v5

    .line 114
    .local v1, dir:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v11, ".pobj"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_33

    .line 113
    :cond_30
    :goto_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 117
    :cond_33
    :try_start_33
    invoke-direct {p0, v4}, Lcom/android/phone/sip/SipProfileDb;->deserialize(Ljava/io/File;)Landroid/net/sip/SipProfile;

    move-result-object v7

    .line 118
    .local v7, p:Landroid/net/sip/SipProfile;
    if-eqz v7, :cond_30

    .line 119
    invoke-virtual {v7}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 121
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_46} :catch_47

    goto :goto_30

    .line 122
    .end local v7           #p:Landroid/net/sip/SipProfile;
    :catch_47
    move-exception v3

    .line 123
    .local v3, e:Ljava/io/IOException;
    sget-object v10, Lcom/android/phone/sip/SipProfileDb;->TAG:Ljava/lang/String;

    const-string v11, "retrieveProfileListFromStorage()"

    invoke-static {v10, v11, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 126
    .end local v1           #dir:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #f:Ljava/io/File;
    :cond_50
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    iput v10, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    .line 127
    iget-object v10, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    iget v11, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v10, v11}, Lcom/android/phone/sip/SipSharedPreferences;->setProfilesCount(I)V

    goto :goto_16
.end method


# virtual methods
.method public deleteProfile(Landroid/net/sip/SipProfile;)V
    .registers 6
    .parameter

    .prologue
    .line 56
    const-class v1, Lcom/android/phone/sip/SipProfileDb;

    monitor-enter v1

    .line 57
    :try_start_3
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Ljava/io/File;)V

    .line 58
    iget v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    if-gez v0, :cond_29

    invoke-direct {p0}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    .line 59
    :cond_29
    iget-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    iget v2, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v0, v2}, Lcom/android/phone/sip/SipSharedPreferences;->setProfilesCount(I)V

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public getProfilesCount()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSharedPreferences;->getProfilesCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    goto :goto_a
.end method

.method public retrieveSipProfileList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    const-class v1, Lcom/android/phone/sip/SipProfileDb;

    monitor-enter v1

    .line 102
    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 103
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public saveProfile(Landroid/net/sip/SipProfile;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 71
    const-class v4, Lcom/android/phone/sip/SipProfileDb;

    monitor-enter v4

    .line 72
    :try_start_4
    iget v0, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    if-gez v0, :cond_b

    invoke-direct {p0}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileListInternal()Ljava/util/List;

    .line 73
    :cond_b
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 75
    :cond_30
    new-instance v5, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v3, ".pobj"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_6d

    .line 80
    :try_start_3c
    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_70
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_60

    move-result-object v3

    .line 81
    :try_start_40
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_70
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_45} :catch_73

    .line 82
    :try_start_45
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 84
    iget-object v0, p0, Lcom/android/phone/sip/SipProfileDb;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    iget v2, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/sip/SipProfileDb;->mProfilesCount:I

    invoke-virtual {v0, v2}, Lcom/android/phone/sip/SipSharedPreferences;->setProfilesCount(I)V

    .line 85
    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_66
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_59} :catch_77

    .line 90
    if-eqz v1, :cond_5e

    :try_start_5b
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 92
    :cond_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_6d

    .line 93
    return-void

    .line 86
    :catch_60
    move-exception v0

    move-object v1, v2

    .line 87
    :goto_62
    :try_start_62
    invoke-virtual {v5, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 88
    throw v0
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    .line 90
    :catchall_66
    move-exception v0

    :goto_67
    if-eqz v1, :cond_6c

    :try_start_69
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_6c
    throw v0

    .line 92
    :catchall_6d
    move-exception v0

    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_6d

    throw v0

    .line 90
    :catchall_70
    move-exception v0

    move-object v1, v2

    goto :goto_67

    .line 86
    :catch_73
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_62

    :catch_77
    move-exception v0

    move-object v2, v3

    goto :goto_62
.end method
