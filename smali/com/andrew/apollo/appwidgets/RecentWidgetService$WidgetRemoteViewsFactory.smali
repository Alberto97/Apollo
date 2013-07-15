.class final Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;
.super Ljava/lang/Object;
.source "RecentWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/appwidgets/RecentWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WidgetRemoteViewsFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

.field private final mRecentsStore:Lcom/andrew/apollo/provider/RecentStore;

.field private mViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {p1}, Lcom/andrew/apollo/cache/ImageFetcher;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    .line 92
    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-static {p1}, Lcom/andrew/apollo/cache/ImageCache;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/cache/ImageCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/ImageFetcher;->setImageCache(Lcom/andrew/apollo/cache/ImageCache;)V

    .line 94
    invoke-static {p1}, Lcom/andrew/apollo/provider/RecentStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/RecentStore;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mRecentsStore:Lcom/andrew/apollo/provider/RecentStore;

    .line 95
    return-void
.end method

.method private closeCursor()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 13
    .parameter "position"

    .prologue
    const v12, 0x7f0d0038

    .line 122
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 125
    new-instance v9, Landroid/widget/RemoteViews;

    iget-object v10, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f030008

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mViews:Landroid/widget/RemoteViews;

    .line 128
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const-string v11, "albumid"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 132
    .local v3, id:J
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const-string v11, "itemname"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, albumName:Ljava/lang/String;
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const-string v11, "artistname"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, artist:Ljava/lang/String;
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mViews:Landroid/widget/RemoteViews;

    const v10, 0x7f0d0039

    invoke-virtual {v9, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 142
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mViews:Landroid/widget/RemoteViews;

    const v10, 0x7f0d003a

    invoke-virtual {v9, v10, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 144
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v9, v0}, Lcom/andrew/apollo/cache/ImageFetcher;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 146
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 147
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    invoke-virtual {v9, v0}, Lcom/andrew/apollo/cache/ImageFetcher;->getCachedArtwork(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 149
    :cond_0
    if-eqz v2, :cond_1

    .line 150
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mViews:Landroid/widget/RemoteViews;

    invoke-virtual {v9, v12, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 157
    :goto_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v8, profileIntent:Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v7, profileExtras:Landroid/os/Bundle;
    const-string v9, "id"

    invoke-virtual {v7, v9, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 160
    const-string v9, "name"

    invoke-virtual {v7, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v9, "artist_name"

    invoke-virtual {v7, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v9, "set_action"

    const-string v10, "open_profile"

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v8, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 165
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mViews:Landroid/widget/RemoteViews;

    const v10, 0x7f0d0037

    invoke-virtual {v9, v10, v8}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 168
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v5, playAlbum:Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v6, playAlbumExtras:Landroid/os/Bundle;
    const-string v9, "id"

    invoke-virtual {v6, v9, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 171
    const-string v9, "set_action"

    const-string v10, "play_album"

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 174
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mViews:Landroid/widget/RemoteViews;

    invoke-virtual {v9, v12, v5}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 175
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mViews:Landroid/widget/RemoteViews;

    return-object v9

    .line 152
    .end local v5           #playAlbum:Landroid/content/Intent;
    .end local v6           #playAlbumExtras:Landroid/os/Bundle;
    .end local v7           #profileExtras:Landroid/os/Bundle;
    .end local v8           #profileIntent:Landroid/content/Intent;
    :cond_1
    iget-object v9, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mViews:Landroid/widget/RemoteViews;

    const v10, 0x7f020018

    invoke-virtual {v9, v12, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public onDataSetChanged()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 201
    iput-object v3, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mRecentsStore:Lcom/andrew/apollo/provider/RecentStore;

    invoke-virtual {v0}, Lcom/andrew/apollo/provider/RecentStore;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "albumhistory"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "albumid as id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "albumid"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "itemname"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "artistname"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "albumsongcount"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "albumyear"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "timeplayed"

    aput-object v5, v2, v4

    const-string v7, "timeplayed DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 211
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/andrew/apollo/appwidgets/RecentWidgetService$WidgetRemoteViewsFactory;->closeCursor()V

    .line 219
    return-void
.end method
