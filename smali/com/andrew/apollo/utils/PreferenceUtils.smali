.class public final Lcom/andrew/apollo/utils/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# static fields
.field private static sInstance:Lcom/andrew/apollo/utils/PreferenceUtils;


# instance fields
.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/utils/PreferenceUtils;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;
    .locals 2
    .parameter "context"

    .prologue
    .line 102
    sget-object v0, Lcom/andrew/apollo/utils/PreferenceUtils;->sInstance:Lcom/andrew/apollo/utils/PreferenceUtils;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/andrew/apollo/utils/PreferenceUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/utils/PreferenceUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/andrew/apollo/utils/PreferenceUtils;->sInstance:Lcom/andrew/apollo/utils/PreferenceUtils;

    .line 105
    :cond_0
    sget-object v0, Lcom/andrew/apollo/utils/PreferenceUtils;->sInstance:Lcom/andrew/apollo/utils/PreferenceUtils;

    return-object v0
.end method

.method private setLayoutType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 325
    const/4 v1, 0x0

    new-instance v2, Lcom/andrew/apollo/utils/PreferenceUtils$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/andrew/apollo/utils/PreferenceUtils$4;-><init>(Lcom/andrew/apollo/utils/PreferenceUtils;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-static {v1, v2, v0}, Lcom/andrew/apollo/utils/ApolloUtils;->execute(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method private setSortOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 204
    const/4 v1, 0x0

    new-instance v2, Lcom/andrew/apollo/utils/PreferenceUtils$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/andrew/apollo/utils/PreferenceUtils$3;-><init>(Lcom/andrew/apollo/utils/PreferenceUtils;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-static {v1, v2, v0}, Lcom/andrew/apollo/utils/ApolloUtils;->execute(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 214
    return-void
.end method


# virtual methods
.method public final downloadMissingArtistImages()Z
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "download_missing_artist_images"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final downloadMissingArtwork()Z
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "download_missing_artwork"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final enableLockscreenControls()Z
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "lockscreen_controls"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getAlbumSongSortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "album_song_sort_order"

    const-string v2, "track, title_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAlbumSortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "album_sort_order"

    const-string v2, "album_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getArtistAlbumSortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "artist_album_sort_order"

    const-string v2, "album_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getArtistSongSortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "artist_song_sort_order"

    const-string v2, "title_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getArtistSortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "artist_sort_order"

    const-string v2, "artist_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultThemeColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "default_theme_color"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSongSortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "song_sort_order"

    const-string v2, "title_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStartPage()I
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "start_page"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isDetailedLayout(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "which"
    .parameter "context"

    .prologue
    .line 381
    const-string v1, "detailed"

    .line 382
    .local v1, detailed:Ljava/lang/String;
    const-string v0, "grid"

    .line 383
    .local v0, defaultValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "grid"

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "detailed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public isSimpleLayout(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "which"
    .parameter "context"

    .prologue
    .line 370
    const-string v1, "simple"

    .line 371
    .local v1, simple:Ljava/lang/String;
    const-string v0, "grid"

    .line 372
    .local v0, defaultValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "grid"

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "simple"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public final onlyOnWifi()Z
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "only_on_wifi"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAlbumLayout(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 352
    const-string v0, "album_layout"

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->setLayoutType(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public setAlbumSongSortOrder(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 290
    const-string v0, "album_song_sort_order"

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSortOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public setAlbumSortOrder(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 274
    const-string v0, "album_sort_order"

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSortOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public setArtistAlbumSortOrder(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 256
    const-string v0, "artist_album_sort_order"

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSortOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public setArtistLayout(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 343
    const-string v0, "artist_layout"

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->setLayoutType(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public setArtistSongSortOrder(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 238
    const-string v0, "artist_song_sort_order"

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSortOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setArtistSortOrder(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 222
    const-string v0, "artist_sort_order"

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSortOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public setDefaultThemeColor(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 142
    const/4 v1, 0x0

    new-instance v2, Lcom/andrew/apollo/utils/PreferenceUtils$2;

    invoke-direct {v2, p0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils$2;-><init>(Lcom/andrew/apollo/utils/PreferenceUtils;I)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-static {v1, v2, v0}, Lcom/andrew/apollo/utils/ApolloUtils;->execute(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public setRecentLayout(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 361
    const-string v0, "recent_layout"

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->setLayoutType(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public setSongSortOrder(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 308
    const-string v0, "song_sort_order"

    invoke-direct {p0, v0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->setSortOrder(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public setStartPage(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 115
    const/4 v1, 0x0

    new-instance v2, Lcom/andrew/apollo/utils/PreferenceUtils$1;

    invoke-direct {v2, p0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils$1;-><init>(Lcom/andrew/apollo/utils/PreferenceUtils;I)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-static {v1, v2, v0}, Lcom/andrew/apollo/utils/ApolloUtils;->execute(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method
