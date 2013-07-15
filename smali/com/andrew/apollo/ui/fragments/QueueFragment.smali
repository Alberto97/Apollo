.class public Lcom/andrew/apollo/ui/fragments/QueueFragment;
.super Landroid/support/v4/app/Fragment;
.source "QueueFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;
.implements Lcom/andrew/apollo/dragdrop/DragSortListView$DropListener;
.implements Lcom/andrew/apollo/dragdrop/DragSortListView$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/andrew/apollo/model/Song;",
        ">;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/andrew/apollo/dragdrop/DragSortListView$DropListener;",
        "Lcom/andrew/apollo/dragdrop/DragSortListView$RemoveListener;",
        "Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mSong:Lcom/andrew/apollo/model/Song;

.field private mSongName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 103
    return-void
.end method

.method private getItemPositionBySong()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 388
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v1

    .line 389
    .local v1, trackId:J
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    if-nez v3, :cond_1

    move v0, v4

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 392
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/SongAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 393
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v3, v0}, Lcom/andrew/apollo/adapters/SongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/model/Song;

    iget-wide v5, v3, Lcom/andrew/apollo/model/Song;->mSongId:J

    cmp-long v3, v5, v1

    if-eqz v3, :cond_0

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    .line 397
    goto :goto_0
.end method


# virtual methods
.method public drop(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/adapters/SongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/model/Song;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSong:Lcom/andrew/apollo/model/Song;

    .line 363
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSong:Lcom/andrew/apollo/model/Song;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/SongAdapter;->remove(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSong:Lcom/andrew/apollo/model/Song;

    invoke-virtual {v0, v1, p2}, Lcom/andrew/apollo/adapters/SongAdapter;->insert(Ljava/lang/Object;I)V

    .line 365
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/SongAdapter;->notifyDataSetChanged()V

    .line 366
    invoke-static {p1, p2}, Lcom/andrew/apollo/utils/MusicUtils;->moveQueueItem(II)V

    .line 368
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/SongAdapter;->buildCache()V

    .line 369
    return-void
.end method

.method public getSpeed(FJ)F
    .locals 2
    .parameter "w"
    .parameter "t"

    .prologue
    .line 337
    const v0, 0x3f4ccccd

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/SongAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a83126f

    div-float/2addr v0, v1

    .line 340
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x4120

    mul-float/2addr v0, p1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->setHasOptionsMenu(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 152
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 280
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 238
    :pswitch_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/andrew/apollo/loaders/QueueLoader;->makeQueueCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/loaders/NowPlayingCursor;

    .line 240
    .local v2, queue:Lcom/andrew/apollo/loaders/NowPlayingCursor;
    iget v4, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSelectedPosition:I

    invoke-virtual {v2, v4}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->removeItem(I)Z

    .line 241
    invoke-virtual {v2}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->close()V

    .line 242
    const/4 v2, 0x0

    .line 243
    new-array v4, v3, [J

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSelectedId:J

    aput-wide v5, v4, v8

    invoke-static {v4}, Lcom/andrew/apollo/utils/MusicUtils;->playNext([J)V

    .line 246
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 249
    .end local v2           #queue:Lcom/andrew/apollo/loaders/NowPlayingCursor;
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-array v5, v3, [J

    iget-wide v6, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSelectedId:J

    aput-wide v6, v5, v8

    invoke-static {v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->addToQueue(Landroid/content/Context;[J)V

    goto :goto_0

    .line 254
    :pswitch_3
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/andrew/apollo/provider/FavoritesStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/FavoritesStore;

    move-result-object v4

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSelectedId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSongName:Ljava/lang/String;

    iget-object v7, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAlbumName:Ljava/lang/String;

    iget-object v8, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mArtistName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/andrew/apollo/provider/FavoritesStore;->addSongId(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :pswitch_4
    new-array v4, v3, [J

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSelectedId:J

    aput-wide v5, v4, v8

    invoke-static {v4}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getInstance([J)Lcom/andrew/apollo/menu/CreateNewPlaylist;

    move-result-object v4

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "CreatePlaylist"

    invoke-virtual {v4, v5, v6}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :pswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "playlist"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 264
    .local v0, mPlaylistId:J
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-array v5, v3, [J

    iget-wide v6, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSelectedId:J

    aput-wide v6, v5, v8

    invoke-static {v4, v5, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 269
    .end local v0           #mPlaylistId:J
    :pswitch_6
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mArtistName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/andrew/apollo/utils/NavUtils;->openArtistProfile(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :pswitch_7
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSelectedId:J

    invoke-static {v4, v5, v6}, Lcom/andrew/apollo/utils/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    new-instance v0, Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03000e

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/adapters/SongAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    .line 113
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xd

    .line 193
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 195
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 196
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSelectedPosition:I

    .line 198
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    iget v3, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/adapters/SongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/model/Song;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSong:Lcom/andrew/apollo/model/Song;

    .line 199
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-wide v2, v2, Lcom/andrew/apollo/model/Song;->mSongId:J

    iput-wide v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSelectedId:J

    .line 200
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-object v2, v2, Lcom/andrew/apollo/model/Song;->mSongName:Ljava/lang/String;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSongName:Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-object v2, v2, Lcom/andrew/apollo/model/Song;->mAlbumName:Ljava/lang/String;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAlbumName:Ljava/lang/String;

    .line 202
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-object v2, v2, Lcom/andrew/apollo/model/Song;->mArtistName:Ljava/lang/String;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mArtistName:Ljava/lang/String;

    .line 205
    const/16 v2, 0x10

    const v3, 0x7f09003a

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 209
    const/4 v2, 0x2

    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 213
    const/4 v2, 0x3

    const v3, 0x7f090019

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    .line 215
    .local v1, subMenu:Landroid/view/SubMenu;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v4, v1, v3}, Lcom/andrew/apollo/utils/MusicUtils;->makePlaylistMenu(Landroid/content/Context;ILandroid/view/SubMenu;Z)V

    .line 218
    const/16 v2, 0x8

    const v3, 0x7f09003b

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 222
    const/16 v2, 0xc

    const v3, 0x7f090042

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 228
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
            "Lcom/andrew/apollo/model/Song;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Lcom/andrew/apollo/loaders/QueueLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/loaders/QueueLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 159
    const v0, 0x7f0f0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 160
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 161
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 122
    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    .local v0, rootView:Landroid/view/ViewGroup;
    const v1, 0x7f0d0068

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/dragdrop/DragSortListView;

    iput-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    .line 126
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    new-instance v2, Lcom/andrew/apollo/recycler/RecycleHolder;

    invoke-direct {v2}, Lcom/andrew/apollo/recycler/RecycleHolder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 130
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 132
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setDropListener(Lcom/andrew/apollo/dragdrop/DragSortListView$DropListener;)V

    .line 136
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setRemoveListener(Lcom/andrew/apollo/dragdrop/DragSortListView$RemoveListener;)V

    .line 138
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setDragScrollProfile(Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;)V

    .line 139
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 292
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {p3}, Lcom/andrew/apollo/utils/MusicUtils;->setQueuePosition(I)V

    .line 293
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Song;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/model/Song;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v2}, Lcom/andrew/apollo/adapters/SongAdapter;->unload()V

    .line 316
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/model/Song;

    .line 317
    .local v1, song:Lcom/andrew/apollo/model/Song;
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v2, v1}, Lcom/andrew/apollo/adapters/SongAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 320
    .end local v1           #song:Lcom/andrew/apollo/model/Song;
    :cond_1
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v2}, Lcom/andrew/apollo/adapters/SongAdapter;->buildCache()V

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
            "Lcom/andrew/apollo/model/Song;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Song;>;>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/SongAdapter;->unload()V

    .line 330
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 184
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 170
    :pswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/andrew/apollo/loaders/QueueLoader;->makeQueueCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/loaders/NowPlayingCursor;

    .line 172
    .local v0, queue:Lcom/andrew/apollo/loaders/NowPlayingCursor;
    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v2

    invoke-static {v2}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getInstance([J)Lcom/andrew/apollo/menu/CreateNewPlaylist;

    move-result-object v2

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "CreatePlaylist"

    invoke-virtual {v2, v3, v4}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lcom/andrew/apollo/loaders/NowPlayingCursor;->close()V

    .line 175
    const/4 v0, 0x0

    .line 176
    goto :goto_0

    .line 178
    .end local v0           #queue:Lcom/andrew/apollo/loaders/NowPlayingCursor;
    :pswitch_1
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->clearQueue()V

    .line 179
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/andrew/apollo/utils/NavUtils;->goHome(Landroid/app/Activity;)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x7f0d009c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refreshQueue()V
    .locals 3

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 407
    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/adapters/SongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/model/Song;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSong:Lcom/andrew/apollo/model/Song;

    .line 350
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSong:Lcom/andrew/apollo/model/Song;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/SongAdapter;->remove(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/SongAdapter;->notifyDataSetChanged()V

    .line 352
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-wide v0, v0, Lcom/andrew/apollo/model/Song;->mSongId:J

    invoke-static {v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->removeTrack(J)I

    .line 354
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mAdapter:Lcom/andrew/apollo/adapters/SongAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/SongAdapter;->buildCache()V

    .line 355
    return-void
.end method

.method public scrollToCurrentSong()V
    .locals 2

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/QueueFragment;->getItemPositionBySong()I

    move-result v0

    .line 378
    .local v0, currentSongPosition:I
    if-eqz v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/QueueFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setSelection(I)V

    .line 381
    :cond_0
    return-void
.end method
