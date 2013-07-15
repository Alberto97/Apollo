.class public Lcom/andrew/apollo/ui/fragments/RecentFragment;
.super Landroid/support/v4/app/Fragment;
.source "RecentFragment.java"

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
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mShouldRefresh:Z

    return-void
.end method

.method private initAbsListView(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 371
    new-instance v0, Lcom/andrew/apollo/recycler/RecycleHolder;

    invoke-direct {v0}, Lcom/andrew/apollo/recycler/RecycleHolder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 373
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 375
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 377
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 378
    return-void
.end method

.method private initGridView()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 398
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0d0065

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mGridView:Landroid/widget/GridView;

    .line 400
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 402
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mGridView:Landroid/widget/GridView;

    invoke-direct {p0, v0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->initAbsListView(Landroid/widget/AbsListView;)V

    .line 403
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/ApolloUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->isDetailedLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/adapters/AlbumAdapter;->setLoadExtraData(Z)V

    .line 406
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 418
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->isDetailedLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/adapters/AlbumAdapter;->setLoadExtraData(Z)V

    .line 413
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method private initListView()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0d0068

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mListView:Landroid/widget/ListView;

    .line 387
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 389
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->initAbsListView(Landroid/widget/AbsListView;)V

    .line 390
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/AlbumAdapter;->setTouchPlay(Z)V

    .line 391
    return-void
.end method

.method private isDetailedLayout()Z
    .locals 3

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v0

    const-string v1, "recent_layout"

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/andrew/apollo/utils/PreferenceUtils;->isDetailedLayout(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isSimpleLayout()Z
    .locals 3

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v0

    const-string v1, "recent_layout"

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 165
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->setHasOptionsMenu(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 170
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 123
    check-cast p1, Lcom/andrew/apollo/ui/activities/BaseActivity;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->setMusicStateListenerListener(Lcom/andrew/apollo/MusicStateListener;)V

    .line 124
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 262
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 231
    :pswitch_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbumList:[J

    invoke-static {v4, v5, v6, v6}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    goto :goto_0

    .line 234
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbumList:[J

    invoke-static {v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->addToQueue(Landroid/content/Context;[J)V

    goto :goto_0

    .line 237
    :pswitch_3
    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbumList:[J

    invoke-static {v4}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getInstance([J)Lcom/andrew/apollo/menu/CreateNewPlaylist;

    move-result-object v4

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "CreatePlaylist"

    invoke-virtual {v4, v5, v6}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_4
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-object v5, v5, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/andrew/apollo/utils/NavUtils;->openArtistProfile(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "playlist"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 245
    .local v1, id:J
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbumList:[J

    invoke-static {v4, v5, v1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 248
    .end local v1           #id:J
    :pswitch_6
    iput-boolean v3, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mShouldRefresh:Z

    .line 249
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/andrew/apollo/provider/RecentStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/RecentStore;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-wide v5, v5, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    invoke-virtual {v4, v5, v6}, Lcom/andrew/apollo/provider/RecentStore;->removeItem(J)V

    .line 250
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->refresh()V

    goto :goto_0

    .line 253
    :pswitch_7
    iput-boolean v3, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mShouldRefresh:Z

    .line 254
    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-object v0, v4, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    .line 255
    .local v0, album:Ljava/lang/String;
    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbumList:[J

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

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "DeleteDialog"

    invoke-virtual {v4, v5, v6}, Lcom/andrew/apollo/menu/DeleteDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v0, 0x7f030018

    .line 133
    .local v0, layout:I
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->isSimpleLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const v0, 0x7f030018

    .line 140
    :goto_0
    new-instance v1, Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    .line 141
    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->isDetailedLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    const v0, 0x7f030016

    goto :goto_0

    .line 138
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
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 190
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 192
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/model/Album;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    .line 194
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-wide v3, v3, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbumList:[J

    .line 197
    const/4 v2, 0x1

    const v3, 0x7f090039

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 201
    const/4 v2, 0x2

    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 205
    const v2, 0x7f090019

    invoke-interface {p1, v6, v6, v5, v2}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    .line 207
    .local v1, subMenu:Landroid/view/SubMenu;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v6, v1, v5}, Lcom/andrew/apollo/utils/MusicUtils;->makePlaylistMenu(Landroid/content/Context;ILandroid/view/SubMenu;Z)V

    .line 210
    const/16 v2, 0x8

    const v3, 0x7f09003b

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 214
    const v2, 0x7f090041

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v5, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 218
    const/16 v2, 0x9

    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 220
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
    .line 295
    new-instance v0, Lcom/andrew/apollo/loaders/RecentLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/loaders/RecentLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->isSimpleLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const v0, 0x7f030014

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mRootView:Landroid/view/ViewGroup;

    .line 152
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->initListView()V

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0

    .line 154
    :cond_0
    const v0, 0x7f030012

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mRootView:Landroid/view/ViewGroup;

    .line 155
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->initGridView()V

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
    .line 286
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, p3}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/model/Album;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    .line 287
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-object v1, v1, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-object v2, v2, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/NavUtils;->openAlbumProfile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
    .line 304
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Album;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/model/Album;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0d0064

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 307
    .local v1, empty:Landroid/widget/TextView;
    const v3, 0x7f090079

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->isSimpleLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 324
    .end local v1           #empty:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 311
    .restart local v1       #empty:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 317
    .end local v1           #empty:Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/AlbumAdapter;->unload()V

    .line 319
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

    .line 320
    .local v0, album:Lcom/andrew/apollo/model/Album;
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v3, v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 323
    .end local v0           #album:Lcom/andrew/apollo/model/Album;
    :cond_2
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

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
    .line 332
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Album;>;>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->unload()V

    .line 333
    return-void
.end method

.method public onMetaChanged()V
    .locals 3

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 362
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 178
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->flush()V

    .line 179
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 342
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x1

    .line 271
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-ne p2, v1, :cond_1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/AlbumAdapter;->setPauseDiskCache(Z)V

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/AlbumAdapter;->setPauseDiskCache(Z)V

    .line 276
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mAdapter:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/AlbumAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public restartLoader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-boolean v0, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mShouldRefresh:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/RecentFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 353
    :cond_0
    iput-boolean v2, p0, Lcom/andrew/apollo/ui/fragments/RecentFragment;->mShouldRefresh:Z

    .line 354
    return-void
.end method
