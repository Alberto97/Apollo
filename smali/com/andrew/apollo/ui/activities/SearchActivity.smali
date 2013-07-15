.class public Lcom/andrew/apollo/ui/activities/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/ServiceConnection;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/SearchView$OnQueryTextListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

.field private mFilterString:Ljava/lang/String;

.field private mGridView:Landroid/widget/GridView;

.field private mResources:Lcom/andrew/apollo/utils/ThemeUtils;

.field private mSearchView:Landroid/widget/SearchView;

.field private mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 407
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    new-instance v3, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    .line 118
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {v3, p0}, Lcom/andrew/apollo/utils/ThemeUtils;->setOverflowStyle(Landroid/app/Activity;)V

    .line 121
    const/high16 v3, 0x10a

    const v5, 0x10a0001

    invoke-virtual {p0, v3, v5}, Lcom/andrew/apollo/ui/activities/SearchActivity;->overridePendingTransition(II)V

    .line 124
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/activities/SearchActivity;->setVolumeControlStream(I)V

    .line 127
    invoke-static {p0, p0}, Lcom/andrew/apollo/utils/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    move-result-object v3

    iput-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    .line 130
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 131
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    const v5, 0x7f090002

    invoke-virtual {p0, v5}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->themeActionBar(Landroid/app/ActionBar;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 135
    const v3, 0x7f030012

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/activities/SearchActivity;->setContentView(I)V

    .line 138
    const v3, 0x7f0d0063

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/activities/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 139
    .local v1, background:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f02001f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "query"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, query:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v2           #query:Ljava/lang/String;
    :goto_0
    iput-object v2, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mFilterString:Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setSubtitle(Ljava/lang/String;)V

    .line 149
    new-instance v3, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    .line 151
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->setPrefix(Ljava/lang/CharSequence;)V

    .line 153
    const v3, 0x7f0d0065

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/activities/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mGridView:Landroid/widget/GridView;

    .line 155
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mGridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mGridView:Landroid/widget/GridView;

    new-instance v5, Lcom/andrew/apollo/recycler/RecycleHolder;

    invoke-direct {v5}, Lcom/andrew/apollo/recycler/RecycleHolder;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 159
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 160
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    invoke-static {p0}, Lcom/andrew/apollo/utils/ApolloUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 168
    :goto_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 169
    return-void

    .restart local v2       #query:Ljava/lang/String;
    :cond_0
    move-object v2, v4

    .line 143
    goto :goto_0

    .line 164
    .end local v2           #query:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/audio/search/fancy/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mFilterString:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 258
    .local v2, uri:Landroid/net/Uri;
    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "mime_type"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "artist"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "album"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "title"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "data1"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "data2"

    aput-object v1, v3, v0

    .line 262
    .local v3, projection:[Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0f000a

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 192
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-virtual {v2, p1}, Lcom/andrew/apollo/utils/ThemeUtils;->setSearchIcon(Landroid/view/Menu;)V

    .line 195
    const v2, 0x7f0d009e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    .line 196
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 199
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 200
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    .line 201
    .local v1, searchableInfo:Landroid/app/SearchableInfo;
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 230
    sget-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->unbindFromService(Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mToken:Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;

    .line 234
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 355
    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 356
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 357
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const-string v3, "mime_type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, mimeType:Ljava/lang/String;
    const-string v3, "artist"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    const-string v3, "artist"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/andrew/apollo/utils/NavUtils;->openArtistProfile(Landroid/app/Activity;Ljava/lang/String;)V

    .line 382
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 383
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SearchActivity;->finish()V

    goto :goto_0

    .line 368
    :cond_3
    const-string v3, "album"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 370
    const-string v3, "album"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "artist"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/andrew/apollo/utils/NavUtils;->openAlbumProfile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :cond_4
    if-ltz p3, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-ltz v3, :cond_2

    .line 375
    const/4 v3, 0x1

    new-array v1, v3, [J

    aput-wide p4, v1, v5

    .line 378
    .local v1, list:[J
    invoke-static {p0, v1, v5, v5}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 272
    :cond_0
    const v1, 0x7f0d0064

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 273
    .local v0, empty:Landroid/widget/TextView;
    const v1, 0x7f090077

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 280
    .end local v0           #empty:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    invoke-virtual {v1, p2}, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/ui/activities/SearchActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 291
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 177
    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, query:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .end local v0           #query:Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mFilterString:Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->setPrefix(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 182
    return-void

    .restart local v0       #query:Ljava/lang/String;
    :cond_0
    move-object v0, v1

    .line 178
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 243
    :pswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SearchActivity;->finish()V

    .line 244
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "newText"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 346
    .end local p1
    :goto_0
    return v0

    .line 342
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .end local p1
    :goto_1
    iput-object p1, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mFilterString:Ljava/lang/String;

    .line 344
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->setPrefix(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 346
    const/4 v0, 0x1

    goto :goto_0

    .restart local p1
    :cond_1
    move-object p1, v0

    .line 342
    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .parameter "query"

    .prologue
    const/4 v1, 0x0

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    :goto_0
    return v1

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_2

    .line 320
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/activities/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 321
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 322
    iget-object v2, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 327
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mResources:Lcom/andrew/apollo/utils/ThemeUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->setSubtitle(Ljava/lang/String;)V

    .line 328
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 586
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x1

    .line 299
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-ne p2, v1, :cond_1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->setPauseDiskCache(Z)V

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->setPauseDiskCache(Z)V

    .line 304
    iget-object v0, p0, Lcom/andrew/apollo/ui/activities/SearchActivity;->mAdapter:Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/activities/SearchActivity$SearchAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 393
    invoke-static {p2}, Lcom/andrew/apollo/IApolloService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/andrew/apollo/IApolloService;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 394
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 401
    const/4 v0, 0x0

    sput-object v0, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    .line 402
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 211
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/andrew/apollo/utils/MusicUtils;->notifyForegroundStateChanged(Landroid/content/Context;Z)V

    .line 212
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 220
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/andrew/apollo/utils/MusicUtils;->notifyForegroundStateChanged(Landroid/content/Context;Z)V

    .line 221
    return-void
.end method
