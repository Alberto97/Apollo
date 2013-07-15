.class public Lcom/andrew/apollo/ui/fragments/AlbumFragment;
.super Landroid/support/v4/app/Fragment;
.source "AlbumFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/andrew/apollo/MusicStateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/andrew/apollo/model/Album;",
        ">;>;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/andrew/apollo/MusicStateListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

.field private mAlbum:Lcom/andrew/apollo/model/Album;

.field private mAlbumList:[J

.field private mGridView:Landroid/widget/GridView;

.field private mListView:Landroid/widget/ListView;

.field private mRootView:Landroid/view/ViewGroup;

.field private mShouldRefresh:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mShouldRefresh:Z

    return-void
.end method

.method private getItemPositionByAlbum()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 348
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v0

    .line 349
    .local v0, albumId:J
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    if-nez v3, :cond_1

    move v2, v4

    .line 357
    :cond_0
    :goto_0
    return v2

    .line 352
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 353
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v3, v2}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/model/Album;

    iget-wide v5, v3, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    cmp-long v3, v5, v0

    if-eqz v3, :cond_0

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    .line 357
    goto :goto_0
.end method

.method private initAbsListView(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 405
    new-instance v0, Lcom/andrew/apollo/recycler/RecycleHolder;

    invoke-direct {v0}, Lcom/andrew/apollo/recycler/RecycleHolder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 407
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 409
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 411
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 412
    return-void
.end method

.method private initGridView()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 432
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0d0065

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mGridView:Landroid/widget/GridView;

    .line 434
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 436
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mGridView:Landroid/widget/GridView;

    invoke-direct {p0, v0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->initAbsListView(Landroid/widget/AbsListView;)V

    .line 437
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/ApolloUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->isDetailedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/adapters/AlbumAdapter;->setLoadExtraData(Z)V

    .line 440
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 452
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 445
    :cond_1
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->isDetailedLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/adapters/AlbumAdapter;->setLoadExtraData(Z)V

    .line 447
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0d0068

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mListView:Landroid/widget/ListView;

    .line 421
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 423
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->initAbsListView(Landroid/widget/AbsListView;)V

    .line 424
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/AlbumAdapter;->setTouchPlay(Z)V

    .line 425
    return-void
.end method

.method private isDetailedLayout()Z
    .locals 3

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v0

    const-string v1, "album_layout"

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->isDetailedLayout(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isSimpleLayout()Z
    .locals 3

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v0

    const-string v1, "album_layout"

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->isSimpleLayout(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->setHasOptionsMenu(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 171
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 124
    check-cast p1, Lcom/andrew/apollo/ui/activities/BaseActivity;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->setMusicStateListenerListener(Lcom/andrew/apollo/MusicStateListener;)V

    .line 125
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 254
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 228
    :pswitch_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbumList:[J

    invoke-static {v4, v5, v6, v6}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    goto :goto_0

    .line 231
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbumList:[J

    invoke-static {v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->addToQueue(Landroid/content/Context;[J)V

    goto :goto_0

    .line 234
    :pswitch_3
    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbumList:[J

    invoke-static {v4}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getInstance([J)Lcom/andrew/apollo/menu/CreateNewPlaylist;

    move-result-object v4

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "CreatePlaylist"

    invoke-virtual {v4, v5, v6}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :pswitch_4
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-object v5, v5, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/andrew/apollo/utils/NavUtils;->openArtistProfile(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "playlist"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 242
    .local v1, id:J
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbumList:[J

    invoke-static {v4, v5, v1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 245
    .end local v1           #id:J
    :pswitch_6
    iput-boolean v3, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mShouldRefresh:Z

    .line 246
    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-object v0, v4, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    .line 247
    .local v0, album:Ljava/lang/String;
    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbumList:[J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/andrew/apollo/menu/DeleteDialog;->newInstance(Ljava/lang/String;[JLjava/lang/String;)Lcom/andrew/apollo/menu/DeleteDialog;

    move-result-object v4

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "DeleteDialog"

    invoke-virtual {v4, v5, v6}, Lcom/andrew/apollo/menu/DeleteDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f030018

    .line 134
    .local v0, layout:I
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->isSimpleLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const v0, 0x7f030018

    .line 141
    :goto_0
    new-instance v1, Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    .line 142
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->isDetailedLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const v0, 0x7f030016

    goto :goto_0

    .line 139
    :cond_1
    const v0, 0x7f030013

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 188
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 191
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 193
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/model/Album;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    .line 195
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-wide v3, v3, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbumList:[J

    .line 198
    const/4 v2, 0x1

    const v3, 0x7f090039

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 202
    const/4 v2, 0x2

    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 206
    const v2, 0x7f090019

    invoke-interface {p1, v5, v5, v6, v2}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    .line 208
    .local v1, subMenu:Landroid/view/SubMenu;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v5, v1, v6}, Lcom/andrew/apollo/utils/MusicUtils;->makePlaylistMenu(Landroid/content/Context;ILandroid/view/SubMenu;Z)V

    .line 211
    const/16 v2, 0x8

    const v3, 0x7f09003b

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 215
    const/16 v2, 0x9

    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 217
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Album;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/andrew/apollo/loaders/AlbumLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/loaders/AlbumLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->isSimpleLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const v0, 0x7f030014

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mRootView:Landroid/view/ViewGroup;

    .line 153
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->initListView()V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0

    .line 155
    :cond_0
    const v0, 0x7f030012

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mRootView:Landroid/view/ViewGroup;

    .line 156
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->initGridView()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 278
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, p3}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/model/Album;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    .line 279
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-object v1, v1, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-object v2, v2, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/NavUtils;->openAlbumProfile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Album;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Album;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/model/Album;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0d0064

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 299
    .local v1, empty:Landroid/widget/TextView;
    const v3, 0x7f090075

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->isSimpleLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 316
    .end local v1           #empty:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 303
    .restart local v1       #empty:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 309
    .end local v1           #empty:Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/AlbumAdapter;->unload()V

    .line 311
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/model/Album;

    .line 312
    .local v0, album:Lcom/andrew/apollo/model/Album;
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v3, v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 315
    .end local v0           #album:Lcom/andrew/apollo/model/Album;
    :cond_2
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/AlbumAdapter;->buildCache()V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Album;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Album;>;>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->unload()V

    .line 325
    return-void
.end method

.method public onMetaChanged()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->flush()V

    .line 180
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 376
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x1

    .line 263
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-ne p2, v1, :cond_1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/AlbumAdapter;->setPauseDiskCache(Z)V

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/AlbumAdapter;->setPauseDiskCache(Z)V

    .line 268
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 365
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 366
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 367
    return-void
.end method

.method public restartLoader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-boolean v0, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mShouldRefresh:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 387
    :cond_0
    iput-boolean v2, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mShouldRefresh:Z

    .line 388
    return-void
.end method

.method public scrollToCurrentAlbum()V
    .locals 2

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->getItemPositionByAlbum()I

    move-result v0

    .line 334
    .local v0, currentAlbumPosition:I
    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->isSimpleLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/AlbumFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0
.end method
