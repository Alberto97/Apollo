.class public Lcom/andrew/apollo/loaders/NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "NowPlayingCursor.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurPos:I

.field private mCursorIndexes:[J

.field private mNowPlaying:[J

.field private mQueueCursor:Landroid/database/Cursor;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album"

    aput-object v2, v0, v1

    sput-object v0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->makeNowPlayingCursor()V

    .line 58
    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 214
    iput-object v4, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    .line 215
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    .line 216
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mSize:I

    .line 217
    iget v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mSize:I

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v11, selection:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mSize:I

    if-ge v8, v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    aget-wide v0, v0, v8

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    iget v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mSize:I

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_2

    .line 226
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 229
    :cond_3
    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/andrew/apollo/loaders/NowPlayingCursor;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    .line 235
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mSize:I

    goto :goto_0

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 241
    .local v9, playlistSize:I
    new-array v0, v9, [J

    iput-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mCursorIndexes:[J

    .line 242
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 243
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 244
    .local v6, columnIndex:I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_5

    .line 245
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mCursorIndexes:[J

    iget-object v1, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v0, v8

    .line 246
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 244
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mCurPos:I

    .line 251
    const/4 v10, 0x0

    .line 252
    .local v10, removed:I
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    :goto_3
    if-ltz v8, :cond_7

    .line 253
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    aget-wide v12, v0, v8

    .line 254
    .local v12, trackId:J
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mCursorIndexes:[J

    invoke-static {v0, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    .line 255
    .local v7, cursorIndex:I
    if-gez v7, :cond_6

    .line 256
    invoke-static {v12, v13}, Lcom/andrew/apollo/utils/MusicUtils;->removeTrack(J)I

    move-result v0

    add-int/2addr v10, v0

    .line 252
    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 259
    .end local v7           #cursorIndex:I
    .end local v12           #trackId:J
    :cond_7
    if-lez v10, :cond_0

    .line 260
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    .line 261
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mSize:I

    .line 262
    iget v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mSize:I

    if-nez v0, :cond_0

    .line 263
    iput-object v4, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mCursorIndexes:[J

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 208
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 184
    :cond_0
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 118
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, ignored:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->onChange(Z)V

    .line 118
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 131
    :goto_0
    return-wide v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, ignored:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->onChange(Z)V

    .line 131
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, ignored:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->onChange(Z)V

    .line 97
    const-string v1, ""

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 5
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v3, 0x1

    .line 73
    if-ne p1, p2, :cond_0

    .line 85
    :goto_0
    return v3

    .line 77
    :cond_0
    iget-object v4, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mCursorIndexes:[J

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    array-length v4, v4

    if-lt p2, v4, :cond_2

    .line 78
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 81
    :cond_2
    iget-object v4, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    aget-wide v1, v4, p2

    .line 82
    .local v1, id:J
    iget-object v4, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mCursorIndexes:[J

    invoke-static {v4, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 83
    .local v0, cursorIndex:I
    iget-object v4, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mQueueCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 84
    iput p2, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mCurPos:I

    goto :goto_0
.end method

.method public removeItem(I)Z
    .locals 4
    .parameter "which"

    .prologue
    .line 275
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1, p1, p1}, Lcom/andrew/apollo/IApolloService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 276
    const/4 v1, 0x0

    .line 287
    :goto_0
    return v1

    .line 278
    :cond_0
    move v0, p1

    .line 279
    .local v0, i:I
    iget v1, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mSize:I

    .line 280
    :goto_1
    iget v1, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    iget-object v2, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mNowPlaying:[J

    add-int/lit8 v3, v0, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/andrew/apollo/loaders/NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0           #i:I
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->makeNowPlayingCursor()V

    .line 192
    const/4 v0, 0x1

    return v0
.end method
