.class public Lcom/andrew/apollo/provider/RecentStore;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RecentStore.java"


# static fields
.field private static sInstance:Lcom/andrew/apollo/provider/RecentStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/provider/RecentStore;->sInstance:Lcom/andrew/apollo/provider/RecentStore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 52
    const-string v0, "albumhistory.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 53
    return-void
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/RecentStore;
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    const-class v1, Lcom/andrew/apollo/provider/RecentStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/andrew/apollo/provider/RecentStore;->sInstance:Lcom/andrew/apollo/provider/RecentStore;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/andrew/apollo/provider/RecentStore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/andrew/apollo/provider/RecentStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/andrew/apollo/provider/RecentStore;->sInstance:Lcom/andrew/apollo/provider/RecentStore;

    .line 85
    :cond_0
    sget-object v0, Lcom/andrew/apollo/provider/RecentStore;->sInstance:Lcom/andrew/apollo/provider/RecentStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addAlbumId(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "albumId"
    .parameter "albumName"
    .parameter "artistName"
    .parameter "songCount"
    .parameter "albumYear"

    .prologue
    .line 99
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/provider/RecentStore;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 106
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 108
    const-string v2, "albumid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string v2, "itemname"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "artistname"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "albumsongcount"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "albumyear"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "timeplayed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string v2, "albumhistory"

    const-string v3, "albumid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    const-string v2, "albumhistory"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 119
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 120
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public getAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "key"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-object v5

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/provider/RecentStore;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 135
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "albumid"

    aput-object v1, v2, v6

    const-string v1, "itemname"

    aput-object v1, v2, v7

    const/4 v1, 0x2

    const-string v3, "artistname"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "timeplayed"

    aput-object v3, v2, v1

    .line 139
    .local v2, projection:[Ljava/lang/String;
    const-string v11, "artistname=?"

    .line 140
    .local v11, selection:Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 143
    .local v4, having:[Ljava/lang/String;
    const-string v1, "albumhistory"

    const-string v3, "artistname=?"

    const-string v7, "timeplayed DESC"

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 145
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    const-string v1, "itemname"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 149
    .local v9, album:Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 150
    const/4 v10, 0x0

    move-object v5, v9

    .line 151
    goto :goto_0

    .line 153
    .end local v9           #album:Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 155
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 60
    const-string v0, "CREATE TABLE IF NOT EXISTS albumhistory (albumid LONG NOT NULL,itemname TEXT NOT NULL,artistname TEXT NOT NULL,albumsongcount TEXT NOT NULL,albumyear TEXT,timeplayed LONG NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 73
    const-string v0, "DROP TABLE IF EXISTS albumhistory"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/provider/RecentStore;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    return-void
.end method

.method public removeItem(J)V
    .locals 6
    .parameter "albumId"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/andrew/apollo/provider/RecentStore;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 174
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "albumhistory"

    const-string v2, "albumid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    return-void
.end method
