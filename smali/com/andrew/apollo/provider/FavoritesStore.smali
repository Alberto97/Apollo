.class public Lcom/andrew/apollo/provider/FavoritesStore;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FavoritesStore.java"


# static fields
.field private static sInstance:Lcom/andrew/apollo/provider/FavoritesStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/provider/FavoritesStore;->sInstance:Lcom/andrew/apollo/provider/FavoritesStore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 45
    const-string v0, "favorites.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 46
    return-void
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/FavoritesStore;
    .locals 3
    .parameter "context"

    .prologue
    .line 73
    const-class v1, Lcom/andrew/apollo/provider/FavoritesStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/andrew/apollo/provider/FavoritesStore;->sInstance:Lcom/andrew/apollo/provider/FavoritesStore;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/andrew/apollo/provider/FavoritesStore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/andrew/apollo/provider/FavoritesStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/andrew/apollo/provider/FavoritesStore;->sInstance:Lcom/andrew/apollo/provider/FavoritesStore;

    .line 76
    :cond_0
    sget-object v0, Lcom/andrew/apollo/provider/FavoritesStore;->sInstance:Lcom/andrew/apollo/provider/FavoritesStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addSongId(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "songId"
    .parameter "songName"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    const-wide/16 v3, 0x1

    .line 89
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/provider/FavoritesStore;->getPlayCount(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    .line 94
    .local v1, playCount:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/andrew/apollo/provider/FavoritesStore;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 97
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 99
    const-string v5, "songid"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v5, "songname"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v5, "albumname"

    invoke-virtual {v2, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v5, "artistname"

    invoke-virtual {v2, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v5, "playcount"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v3, v6

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v3, "favorites"

    const-string v4, "songid = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    const-string v3, "favorites"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 109
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public getPlayCount(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 12
    .parameter "songId"

    .prologue
    .line 156
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-gtz v1, :cond_0

    .line 157
    const/4 v10, 0x0

    .line 183
    :goto_0
    return-object v10

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/provider/FavoritesStore;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 161
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "songid"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "songname"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "albumname"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "artistname"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "playcount"

    aput-object v3, v2, v1

    .line 165
    .local v2, projection:[Ljava/lang/String;
    const-string v11, "songid=?"

    .line 166
    .local v11, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    .line 169
    .local v4, having:[Ljava/lang/String;
    const-string v1, "favorites"

    const-string v3, "songid=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 171
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const-string v1, "playcount"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 174
    .local v10, playCount:Ljava/lang/Long;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 175
    const/4 v9, 0x0

    .line 176
    goto :goto_0

    .line 178
    .end local v10           #playCount:Ljava/lang/Long;
    :cond_1
    if-eqz v9, :cond_2

    .line 179
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 180
    const/4 v9, 0x0

    .line 183
    :cond_2
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_0
.end method

.method public getSongId(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 12
    .parameter "songId"

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-gtz v1, :cond_0

    .line 122
    const/4 v10, 0x0

    .line 146
    :goto_0
    return-object v10

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/provider/FavoritesStore;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 126
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "songid"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "songname"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "albumname"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "artistname"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "playcount"

    aput-object v3, v2, v1

    .line 130
    .local v2, projection:[Ljava/lang/String;
    const-string v11, "songid=?"

    .line 131
    .local v11, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    .line 134
    .local v4, having:[Ljava/lang/String;
    const-string v1, "favorites"

    const-string v3, "songid=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 136
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const-string v1, "songid"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 138
    .local v10, id:Ljava/lang/Long;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 139
    const/4 v9, 0x0

    .line 140
    goto :goto_0

    .line 142
    .end local v10           #id:Ljava/lang/Long;
    :cond_1
    if-eqz v9, :cond_2

    .line 143
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 144
    const/4 v9, 0x0

    .line 146
    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 53
    const-string v0, "CREATE TABLE IF NOT EXISTS favorites (songid LONG NOT NULL,songname TEXT NOT NULL,albumname TEXT NOT NULL,artistname TEXT NOT NULL,playcount LONG NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 64
    const-string v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/provider/FavoritesStore;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    return-void
.end method

.method public removeItem(Ljava/lang/Long;)V
    .locals 6
    .parameter "songId"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/andrew/apollo/provider/FavoritesStore;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 213
    .local v0, database:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "favorites"

    const-string v2, "songid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public toggleSong(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "songId"
    .parameter "songName"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/provider/FavoritesStore;->getSongId(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/andrew/apollo/provider/FavoritesStore;->addSongId(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/provider/FavoritesStore;->removeItem(Ljava/lang/Long;)V

    goto :goto_0
.end method
