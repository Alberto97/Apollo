.class public final Lcom/andrew/apollo/utils/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;,
        Lcom/andrew/apollo/utils/MusicUtils$ServiceBinder;
    }
.end annotation


# static fields
.field private static final mConnectionMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/andrew/apollo/utils/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static mContentValuesCache:[Landroid/content/ContentValues;

.field public static mService:Lcom/andrew/apollo/IApolloService;

.field private static final sEmptyList:[J

.field private static sForegroundActivities:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 68
    sput v1, Lcom/andrew/apollo/utils/MusicUtils;->sForegroundActivities:I

    .line 74
    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mContentValuesCache:[Landroid/content/ContentValues;

    .line 77
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mConnectionMap:Ljava/util/WeakHashMap;

    .line 78
    new-array v0, v1, [J

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static addToPlaylist(Landroid/content/Context;[JJ)V
    .locals 16
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"

    .prologue
    .line 829
    move-object/from16 v0, p1

    array-length v13, v0

    .line 830
    .local v13, size:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 831
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    .line 834
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "external"

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 835
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 836
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 837
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 838
    .local v8, base:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 839
    const/4 v9, 0x0

    .line 840
    const/4 v11, 0x0

    .line 841
    .local v11, numinserted:I
    const/4 v12, 0x0

    .local v12, offSet:I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 842
    const/16 v5, 0x3e8

    move-object/from16 v0, p1

    invoke-static {v0, v12, v5, v8}, Lcom/andrew/apollo/utils/MusicUtils;->makeInsertItems([JIII)V

    .line 843
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mContentValuesCache:[Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v5

    add-int/2addr v11, v5

    .line 841
    add-int/lit16 v12, v12, 0x3e8

    goto :goto_0

    .line 845
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0004

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v14

    invoke-virtual {v5, v6, v11, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 847
    .local v10, message:Ljava/lang/String;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    sget-object v5, Lcom/devspark/appmsg/AppMsg;->STYLE_CONFIRM:Lcom/devspark/appmsg/AppMsg$Style;

    move-object/from16 v0, p0

    invoke-static {v0, v10, v5}, Lcom/devspark/appmsg/AppMsg;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/devspark/appmsg/AppMsg$Style;)Lcom/devspark/appmsg/AppMsg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/devspark/appmsg/AppMsg;->show()V

    .line 848
    return-void
.end method

.method public static addToQueue(Landroid/content/Context;[J)V
    .locals 3
    .parameter "context"
    .parameter "list"

    .prologue
    .line 855
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 864
    .end local p0
    :goto_0
    return-void

    .line 859
    .restart local p0
    :cond_0
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/andrew/apollo/IApolloService;->enqueue([JI)V

    .line 860
    const v1, 0x7f0b0005

    array-length v2, p1

    invoke-static {p0, v1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->makeLabel(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, message:Ljava/lang/String;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    sget-object v1, Lcom/devspark/appmsg/AppMsg;->STYLE_CONFIRM:Lcom/devspark/appmsg/AppMsg$Style;

    invoke-static {p0, v0, v1}, Lcom/devspark/appmsg/AppMsg;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/devspark/appmsg/AppMsg$Style;)Lcom/devspark/appmsg/AppMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/devspark/appmsg/AppMsg;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 862
    .end local v0           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 92
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    check-cast p0, Landroid/app/Activity;

    .line 96
    :goto_0
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    new-instance v0, Lcom/andrew/apollo/utils/MusicUtils$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/utils/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 99
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mConnectionMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    invoke-direct {v0, v1}, Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 104
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "playlistId"

    .prologue
    const/4 v4, 0x0

    .line 818
    const-string v1, "external"

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 819
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 820
    return-void
.end method

.method public static clearQueue()V
    .locals 3

    .prologue
    .line 1238
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/andrew/apollo/IApolloService;->removeTracks(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    :goto_0
    return-void

    .line 1239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final createPlaylist(Landroid/content/Context;Ljava/lang/String;)J
    .locals 12
    .parameter "context"
    .parameter "name"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 789
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 790
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 791
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v11, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "name"

    aput-object v5, v2, v1

    .line 794
    .local v2, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 797
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 798
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 799
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v8, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 802
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 810
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_0
    return-wide v4

    .line 804
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    if-eqz v6, :cond_1

    .line 805
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 806
    const/4 v6, 0x0

    :cond_1
    move-wide v4, v9

    .line 808
    goto :goto_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    move-wide v4, v9

    .line 810
    goto :goto_0
.end method

.method public static cycleRepeat()V
    .locals 2

    .prologue
    .line 255
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 267
    :pswitch_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_1
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0

    .line 261
    :pswitch_2
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    .line 262
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getShuffleMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static cycleShuffle()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 280
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 283
    :pswitch_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    .line 284
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getRepeatMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 285
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/andrew/apollo/IApolloService;->setRepeatMode(I)V

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    goto :goto_0

    .line 289
    :pswitch_1
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    goto :goto_0

    .line 292
    :pswitch_2
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static deleteTracks(Landroid/content/Context;[J)V
    .locals 16
    .parameter "context"
    .parameter "list"

    .prologue
    .line 1272
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 1275
    .local v3, projection:[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1276
    .local v15, selection:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v10, v1, :cond_1

    .line 1278
    aget-wide v1, p1, v10

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1279
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_0

    .line 1280
    const-string v1, ","

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1283
    :cond_1
    const-string v1, ")"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1287
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 1290
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1291
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1293
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1294
    .local v11, id:J
    invoke-static {v11, v12}, Lcom/andrew/apollo/utils/MusicUtils;->removeTrack(J)I

    .line 1296
    invoke-static/range {p0 .. p0}, Lcom/andrew/apollo/provider/FavoritesStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/FavoritesStore;

    move-result-object v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/provider/FavoritesStore;->removeItem(Ljava/lang/Long;)V

    .line 1298
    invoke-static/range {p0 .. p0}, Lcom/andrew/apollo/provider/RecentStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/RecentStore;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/andrew/apollo/provider/RecentStore;->removeItem(J)V

    .line 1299
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1303
    .end local v11           #id:J
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1307
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1308
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1309
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1310
    .local v14, name:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1312
    .local v9, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1315
    const-string v1, "MusicUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1318
    :catch_0
    move-exception v8

    .line 1319
    .local v8, ex:Ljava/lang/SecurityException;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1322
    .end local v8           #ex:Ljava/lang/SecurityException;
    .end local v9           #f:Ljava/io/File;
    .end local v14           #name:Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1325
    :cond_5
    const v1, 0x7f0b0007

    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->makeLabel(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v13

    .local v13, message:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 1327
    check-cast v1, Landroid/app/Activity;

    sget-object v2, Lcom/devspark/appmsg/AppMsg;->STYLE_CONFIRM:Lcom/devspark/appmsg/AppMsg$Style;

    invoke-static {v1, v13, v2}, Lcom/devspark/appmsg/AppMsg;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/devspark/appmsg/AppMsg$Style;)Lcom/devspark/appmsg/AppMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/devspark/appmsg/AppMsg;->show()V

    .line 1331
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1333
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->refresh()V

    .line 1334
    return-void
.end method

.method public static final duration()J
    .locals 2

    .prologue
    .line 1212
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 1214
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->duration()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1218
    :goto_0
    return-wide v0

    .line 1215
    :catch_0
    move-exception v0

    .line 1218
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static final getAlbumArtist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 747
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "album=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "album"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 753
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 754
    .local v6, artistName:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 755
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 756
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 759
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 760
    const/4 v7, 0x0

    .line 762
    :cond_1
    return-object v6
.end method

.method public static final getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 373
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getAlbumName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 374
    :catch_0
    move-exception v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 360
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getArtistName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 361
    :catch_0
    move-exception v0

    .line 364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getCurrentAlbumId()J
    .locals 2

    .prologue
    .line 384
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 386
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getAlbumId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 390
    :goto_0
    return-wide v0

    .line 387
    :catch_0
    move-exception v0

    .line 390
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static final getCurrentArtistId()J
    .locals 2

    .prologue
    .line 410
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 412
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getArtistId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 416
    :goto_0
    return-wide v0

    .line 413
    :catch_0
    move-exception v0

    .line 416
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static final getCurrentAudioId()J
    .locals 2

    .prologue
    .line 397
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 399
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 403
    :goto_0
    return-wide v0

    .line 400
    :catch_0
    move-exception v0

    .line 403
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static final getIdForAlbum(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 721
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "album=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "album"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 727
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 728
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 729
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 730
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 733
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 734
    const/4 v6, 0x0

    .line 736
    :cond_1
    int-to-long v0, v7

    return-wide v0
.end method

.method public static final getIdForArtist(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 695
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "artist=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "artist"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 701
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 702
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 703
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 704
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 707
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 708
    const/4 v6, 0x0

    .line 710
    :cond_1
    int-to-long v0, v7

    return-wide v0
.end method

.method public static final getIdForPlaylist(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 669
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 675
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 676
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 677
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 678
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 681
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 682
    const/4 v6, 0x0

    .line 684
    :cond_1
    int-to-long v0, v7

    return-wide v0
.end method

.method public static final getLastAlbumForArtist(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "artistName"

    .prologue
    .line 1178
    invoke-static {p0}, Lcom/andrew/apollo/provider/RecentStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/RecentStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/provider/RecentStore;->getAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getQueue()[J
    .locals 1

    .prologue
    .line 424
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getQueue()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    .line 428
    :catch_0
    move-exception v0

    .line 430
    :cond_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static final getQueuePosition()I
    .locals 1

    .prologue
    .line 452
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 453
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 457
    :goto_0
    return v0

    .line 455
    :catch_0
    move-exception v0

    .line 457
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getReleaseDateForAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 938
    if-nez p1, :cond_1

    .line 939
    const/4 v7, 0x0

    .line 956
    :cond_0
    :goto_0
    return-object v7

    .line 941
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "minyear"

    aput-object v3, v2, v8

    const-string v3, "album=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "album"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 947
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 948
    .local v7, releaseDate:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 949
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 950
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 951
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 953
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 954
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static final getRepeatMode()I
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 334
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getRepeatMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 338
    :goto_0
    return v0

    .line 335
    :catch_0
    move-exception v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getShuffleMode()I
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 321
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getShuffleMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 325
    :goto_0
    return v0

    .line 322
    :catch_0
    move-exception v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getSongCountForAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 911
    if-nez p1, :cond_1

    .line 912
    const/4 v7, 0x0

    .line 929
    :cond_0
    :goto_0
    return-object v7

    .line 914
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "numsongs"

    aput-object v3, v2, v8

    const-string v3, "album=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "album"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 920
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 921
    .local v7, songCount:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 922
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 923
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 924
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 926
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 927
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static final getSongListForAlbum(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 515
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 518
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track, title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 523
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 524
    invoke-static {v6}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 525
    .local v7, mList:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 526
    const/4 v6, 0x0

    .line 529
    .end local v7           #mList:[J
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static final getSongListForArtist(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 492
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 495
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album_key,track"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 500
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 501
    invoke-static {v6}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 502
    .local v7, mList:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 503
    const/4 v6, 0x0

    .line 506
    .end local v7           #mList:[J
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static final getSongListForCursor(Landroid/database/Cursor;)[J
    .locals 7
    .parameter "cursor"

    .prologue
    .line 465
    if-nez p0, :cond_0

    .line 466
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    .line 483
    :goto_0
    return-object v3

    .line 468
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 469
    .local v2, len:I
    new-array v3, v2, [J

    .line 470
    .local v3, list:[J
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 471
    const/4 v0, -0x1

    .line 473
    .local v0, columnIndex:I
    :try_start_0
    const-string v5, "audio_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 477
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 478
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v3, v1

    .line 479
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 474
    .end local v1           #i:I
    :catch_0
    move-exception v4

    .line 475
    .local v4, notaplaylist:Ljava/lang/IllegalArgumentException;
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 481
    .end local v4           #notaplaylist:Ljava/lang/IllegalArgumentException;
    .restart local v1       #i:I
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 482
    const/4 p0, 0x0

    .line 483
    goto :goto_0
.end method

.method public static final getSongListForFavorites(Landroid/content/Context;)[J
    .locals 2
    .parameter "context"

    .prologue
    .line 1078
    invoke-static {p0}, Lcom/andrew/apollo/loaders/FavoritesLoader;->makeFavoritesCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 1079
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1080
    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForFavoritesCursor(Landroid/database/Cursor;)[J

    move-result-object v1

    .line 1081
    .local v1, list:[J
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1082
    const/4 v0, 0x0

    .line 1085
    .end local v1           #list:[J
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static final getSongListForFavoritesCursor(Landroid/database/Cursor;)[J
    .locals 6
    .parameter "cursor"

    .prologue
    .line 1053
    if-nez p0, :cond_0

    .line 1054
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    .line 1070
    :goto_0
    return-object v3

    .line 1056
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1057
    .local v2, len:I
    new-array v3, v2, [J

    .line 1058
    .local v3, list:[J
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1059
    const/4 v0, -0x1

    .line 1061
    .local v0, colidx:I
    :try_start_0
    const-string v4, "songid"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1064
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 1065
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1066
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1064
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1068
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1069
    const/4 p0, 0x0

    .line 1070
    goto :goto_0

    .line 1062
    .end local v1           #i:I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static final getSongListForGenre(Landroid/content/Context;J)[J
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 538
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 541
    .local v2, projection:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .local v8, selection:Ljava/lang/StringBuilder;
    const-string v0, "is_music=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v0, " AND title!=\'\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string v0, "external"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 545
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 547
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 548
    invoke-static {v6}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 549
    .local v7, mList:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 550
    const/4 v6, 0x0

    .line 553
    .end local v7           #mList:[J
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static final getSongListForLastAdded(Landroid/content/Context;)[J
    .locals 6
    .parameter "context"

    .prologue
    .line 1102
    invoke-static {p0}, Lcom/andrew/apollo/loaders/LastAddedLoader;->makeLastAddedCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 1103
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1104
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1105
    .local v0, count:I
    new-array v3, v0, [J

    .line 1106
    .local v3, list:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1107
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1108
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 1106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1112
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #list:[J
    :cond_0
    sget-object v3, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    :cond_1
    return-object v3
.end method

.method public static final getSongListForPlaylist(Landroid/content/Context;J)[J
    .locals 8
    .parameter "context"
    .parameter "playlistId"

    .prologue
    const/4 v3, 0x0

    .line 1017
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    .line 1020
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1025
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1026
    invoke-static {v6}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v7

    .line 1027
    .local v7, list:[J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1028
    const/4 v6, 0x0

    .line 1031
    .end local v7           #list:[J
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static final getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 347
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->getTrackName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isFavorite()Z
    .locals 1

    .prologue
    .line 1003
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 1004
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->isFavorite()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1008
    :goto_0
    return v0

    .line 1006
    :catch_0
    move-exception v0

    .line 1008
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isPlaying()Z
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 308
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 312
    :goto_0
    return v0

    .line 309
    :catch_0
    move-exception v0

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeInsertItems([JIII)V
    .locals 5
    .parameter "ids"
    .parameter "offset"
    .parameter "len"
    .parameter "base"

    .prologue
    .line 767
    add-int v1, p1, p2

    array-length v2, p0

    if-le v1, v2, :cond_0

    .line 768
    array-length v1, p0

    sub-int p2, v1, p1

    .line 771
    :cond_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mContentValuesCache:[Landroid/content/ContentValues;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mContentValuesCache:[Landroid/content/ContentValues;

    array-length v1, v1

    if-eq v1, p2, :cond_2

    .line 772
    :cond_1
    new-array v1, p2, [Landroid/content/ContentValues;

    sput-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mContentValuesCache:[Landroid/content/ContentValues;

    .line 774
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_4

    .line 775
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 776
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mContentValuesCache:[Landroid/content/ContentValues;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v1, v0

    .line 778
    :cond_3
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "play_order"

    add-int v3, p3, p1

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "audio_id"

    add-int v3, p1, v0

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    :cond_4
    return-void
.end method

.method public static final makeLabel(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "pluralInt"
    .parameter "number"

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makePlaylistMenu(Landroid/content/Context;ILandroid/view/SubMenu;Z)V
    .locals 7
    .parameter "context"
    .parameter "groupId"
    .parameter "subMenu"
    .parameter "showFavorites"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1136
    invoke-interface {p2}, Landroid/view/SubMenu;->clear()V

    .line 1137
    if-eqz p3, :cond_0

    .line 1138
    const/4 v2, 0x4

    const v3, 0x7f09001a

    invoke-interface {p2, p1, v2, v5, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1141
    :cond_0
    const/4 v2, 0x5

    const v3, 0x7f09002c

    invoke-interface {p2, p1, v2, v5, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1142
    invoke-static {p0}, Lcom/andrew/apollo/loaders/PlaylistLoader;->makePlaylistCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 1143
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1144
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1145
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1146
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "playlist"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/andrew/apollo/utils/MusicUtils;->getIdForPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1147
    const/4 v2, 0x7

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, p1, v2, v5, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1149
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1152
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    if-eqz v0, :cond_2

    .line 1153
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1154
    const/4 v0, 0x0

    .line 1156
    :cond_2
    return-void
.end method

.method public static final makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v5, 0xe10

    const-wide/16 v7, 0x3c

    .line 192
    div-long v1, p1, v5

    .line 193
    .local v1, hours:J
    mul-long/2addr v5, v1

    sub-long/2addr p1, v5

    .line 194
    div-long v3, p1, v7

    .line 195
    .local v3, mins:J
    mul-long v5, v3, v7

    sub-long/2addr p1, v5

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-nez v5, :cond_0

    const/high16 v5, 0x7f09

    :goto_0
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, durationFormat:Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 197
    .end local v0           #durationFormat:Ljava/lang/String;
    :cond_0
    const v5, 0x7f090001

    goto :goto_0
.end method

.method public static moveQueueItem(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 978
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 979
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0, p0, p1}, Lcom/andrew/apollo/IApolloService;->moveQueueItem(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 982
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static next()V
    .locals 1

    .prologue
    .line 207
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static notifyForegroundStateChanged(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1250
    sget v0, Lcom/andrew/apollo/utils/MusicUtils;->sForegroundActivities:I

    .line 1251
    if-eqz p1, :cond_2

    .line 1252
    sget v1, Lcom/andrew/apollo/utils/MusicUtils;->sForegroundActivities:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/andrew/apollo/utils/MusicUtils;->sForegroundActivities:I

    .line 1257
    :goto_0
    if-eqz v0, :cond_0

    sget v0, Lcom/andrew/apollo/utils/MusicUtils;->sForegroundActivities:I

    if-nez v0, :cond_1

    .line 1258
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1259
    const-string v0, "com.andrew.apollo.fgstatechanged"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    const-string v2, "nowinforeground"

    sget v0, Lcom/andrew/apollo/utils/MusicUtils;->sForegroundActivities:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1261
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1263
    :cond_1
    return-void

    .line 1254
    :cond_2
    sget v1, Lcom/andrew/apollo/utils/MusicUtils;->sForegroundActivities:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/andrew/apollo/utils/MusicUtils;->sForegroundActivities:I

    goto :goto_0

    .line 1260
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static playAll(Landroid/content/Context;[JIZ)V
    .locals 7
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "forceShuffle"

    .prologue
    const/4 v4, -0x1

    .line 591
    array-length v5, p1

    if-eqz v5, :cond_0

    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v5, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    if-eqz p3, :cond_2

    .line 596
    :try_start_0
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    .line 600
    :goto_1
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v5}, Lcom/andrew/apollo/IApolloService;->getAudioId()J

    move-result-wide v0

    .line 601
    .local v0, currentId:J
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueuePosition()I

    move-result v2

    .line 602
    .local v2, currentQueuePosition:I
    if-eq p2, v4, :cond_3

    if-ne v2, p2, :cond_3

    aget-wide v5, p1, p2

    cmp-long v5, v0, v5

    if-nez v5, :cond_3

    .line 603
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueue()[J

    move-result-object v3

    .line 604
    .local v3, playlist:[J
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 605
    sget-object v4, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v4}, Lcom/andrew/apollo/IApolloService;->play()V

    goto :goto_0

    .line 614
    .end local v0           #currentId:J
    .end local v2           #currentQueuePosition:I
    .end local v3           #playlist:[J
    :catch_0
    move-exception v4

    goto :goto_0

    .line 598
    :cond_2
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    goto :goto_1

    .line 609
    .restart local v0       #currentId:J
    .restart local v2       #currentQueuePosition:I
    :cond_3
    if-gez p2, :cond_4

    .line 610
    const/4 p2, 0x0

    .line 612
    :cond_4
    sget-object v5, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz p3, :cond_5

    :goto_2
    invoke-interface {v5, p1, v4}, Lcom/andrew/apollo/IApolloService;->open([JI)V

    .line 613
    sget-object v4, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v4}, Lcom/andrew/apollo/IApolloService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    move v4, p2

    .line 612
    goto :goto_2
.end method

.method public static playFavorites(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1094
    invoke-static {p0}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForFavorites(Landroid/content/Context;)[J

    move-result-object v0

    invoke-static {p0, v0, v1, v1}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 1095
    return-void
.end method

.method public static playFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 561
    if-eqz p1, :cond_0

    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, scheme:Ljava/lang/String;
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 570
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, filename:Ljava/lang/String;
    :goto_1
    :try_start_0
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2}, Lcom/andrew/apollo/IApolloService;->stop()V

    .line 577
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2, v0}, Lcom/andrew/apollo/IApolloService;->openFile(Ljava/lang/String;)V

    .line 578
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v2}, Lcom/andrew/apollo/IApolloService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    :catch_0
    move-exception v2

    goto :goto_0

    .line 572
    .end local v0           #filename:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #filename:Ljava/lang/String;
    goto :goto_1
.end method

.method public static playLastAdded(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1121
    invoke-static {p0}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForLastAdded(Landroid/content/Context;)[J

    move-result-object v0

    invoke-static {p0, v0, v1, v1}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 1122
    return-void
.end method

.method public static playNext([J)V
    .locals 2
    .parameter "list"

    .prologue
    .line 622
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 626
    :cond_0
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Lcom/andrew/apollo/IApolloService;->enqueue([JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static playOrPause()V
    .locals 1

    .prologue
    .line 239
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->pause()V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static playPlaylist(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "playlistId"

    .prologue
    .line 1041
    invoke-static {p0, p1, p2}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 1042
    .local v0, playlistList:[J
    if-eqz v0, :cond_0

    .line 1043
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 1045
    :cond_0
    return-void
.end method

.method public static final position()J
    .locals 2

    .prologue
    .line 1199
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 1201
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->position()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1205
    :goto_0
    return-wide v0

    .line 1202
    :catch_0
    move-exception v0

    .line 1205
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static previous(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/andrew/apollo/MusicPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    const-string v1, "com.andrew.apollo.previous"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 232
    return-void
.end method

.method public static refresh()V
    .locals 1

    .prologue
    .line 1163
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 1164
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->refresh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1166
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final removeTrack(J)I
    .locals 1
    .parameter "id"

    .prologue
    .line 439
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0, p0, p1}, Lcom/andrew/apollo/IApolloService;->removeTrack(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 444
    :goto_0
    return v0

    .line 442
    :catch_0
    move-exception v0

    .line 444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static seek(J)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1187
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 1189
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0, p0, p1}, Lcom/andrew/apollo/IApolloService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setQueuePosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1225
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 1227
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0, p0}, Lcom/andrew/apollo/IApolloService;->setQueuePosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1228
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setRingtone(Landroid/content/Context;J)V
    .locals 12
    .parameter "context"
    .parameter "id"

    .prologue
    .line 871
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 872
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 874
    .local v9, uri:Landroid/net/Uri;
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v10, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 875
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v1, "is_alarm"

    const-string v4, "1"

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v9, v10, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string v4, "title"

    aput-object v4, v2, v1

    .line 886
    .local v2, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 887
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 890
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 891
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 892
    const-string v1, "ringtone"

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 893
    const v1, 0x7f09004e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v11, 0x2

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 895
    .local v8, message:Ljava/lang/String;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    sget-object v1, Lcom/devspark/appmsg/AppMsg;->STYLE_CONFIRM:Lcom/devspark/appmsg/AppMsg$Style;

    invoke-static {p0, v8, v1}, Lcom/devspark/appmsg/AppMsg;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/devspark/appmsg/AppMsg$Style;)Lcom/devspark/appmsg/AppMsg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/devspark/appmsg/AppMsg;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    .end local v8           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 899
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 900
    const/4 v6, 0x0

    .line 903
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return-void

    .line 878
    .restart local p0
    :catch_0
    move-exception v7

    .line 879
    .local v7, ingored:Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 898
    .end local v7           #ingored:Ljava/lang/UnsupportedOperationException;
    .end local p0
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 899
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 900
    const/4 v6, 0x0

    :cond_2
    throw v1
.end method

.method public static shuffleAll(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 635
    invoke-static {p0}, Lcom/andrew/apollo/loaders/SongLoader;->makeSongCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 636
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v5

    .line 637
    .local v5, mTrackList:[J
    const/4 v6, 0x0

    .line 638
    .local v6, position:I
    array-length v7, v5

    if-eqz v7, :cond_0

    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v7, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    :try_start_0
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/andrew/apollo/IApolloService;->setShuffleMode(I)V

    .line 643
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v7}, Lcom/andrew/apollo/IApolloService;->getAudioId()J

    move-result-wide v1

    .line 644
    .local v1, mCurrentId:J
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueuePosition()I

    move-result v3

    .line 645
    .local v3, mCurrentQueuePosition:I
    if-nez v3, :cond_2

    const/4 v7, 0x0

    aget-wide v7, v5, v7

    cmp-long v7, v1, v7

    if-nez v7, :cond_2

    .line 647
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueue()[J

    move-result-object v4

    .line 648
    .local v4, mPlaylist:[J
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 649
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v7}, Lcom/andrew/apollo/IApolloService;->play()V

    goto :goto_0

    .line 657
    .end local v1           #mCurrentId:J
    .end local v3           #mCurrentQueuePosition:I
    .end local v4           #mPlaylist:[J
    :catch_0
    move-exception v7

    goto :goto_0

    .line 653
    .restart local v1       #mCurrentId:J
    .restart local v3       #mCurrentQueuePosition:I
    :cond_2
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const/4 v8, -0x1

    invoke-interface {v7, v5, v8}, Lcom/andrew/apollo/IApolloService;->open([JI)V

    .line 654
    sget-object v7, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v7}, Lcom/andrew/apollo/IApolloService;->play()V

    .line 655
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toggleFavorite()V
    .locals 1

    .prologue
    .line 991
    :try_start_0
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 992
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v0}, Lcom/andrew/apollo/IApolloService;->toggleFavorite()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static unbindFromService(Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 111
    if-nez p0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 115
    .local v1, mContextWrapper:Landroid/content/ContextWrapper;
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mConnectionMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/utils/MusicUtils$ServiceBinder;

    .line 116
    .local v0, mBinder:Lcom/andrew/apollo/utils/MusicUtils$ServiceBinder;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    sget-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mConnectionMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const/4 v2, 0x0

    sput-object v2, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    goto :goto_0
.end method
