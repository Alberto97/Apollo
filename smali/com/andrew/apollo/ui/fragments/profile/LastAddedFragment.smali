.class public Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;
.super Landroid/support/v4/app/Fragment;
.source "LastAddedFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mProfileTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mSong:Lcom/andrew/apollo/model/Song;

.field private mSongName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 113
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->setHasOptionsMenu(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 172
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    const v0, 0x7f0d001a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mProfileTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    .line 123
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 264
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 222
    :pswitch_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-array v4, v2, [J

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSelectedId:J

    aput-wide v5, v4, v7

    invoke-static {v3, v4, v7, v7}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    goto :goto_0

    .line 227
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-array v4, v2, [J

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSelectedId:J

    aput-wide v5, v4, v7

    invoke-static {v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->addToQueue(Landroid/content/Context;[J)V

    goto :goto_0

    .line 232
    :pswitch_3
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/andrew/apollo/provider/FavoritesStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/FavoritesStore;

    move-result-object v3

    iget-wide v4, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSelectedId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSongName:Ljava/lang/String;

    iget-object v6, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mAlbumName:Ljava/lang/String;

    iget-object v7, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mArtistName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/andrew/apollo/provider/FavoritesStore;->addSongId(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :pswitch_4
    new-array v3, v2, [J

    iget-wide v4, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSelectedId:J

    aput-wide v4, v3, v7

    invoke-static {v3}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getInstance([J)Lcom/andrew/apollo/menu/CreateNewPlaylist;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "CreatePlaylist"

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "playlist"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 242
    .local v0, mPlaylistId:J
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-array v4, v2, [J

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSelectedId:J

    aput-wide v5, v4, v7

    invoke-static {v3, v4, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 247
    .end local v0           #mPlaylistId:J
    :pswitch_6
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mArtistName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/andrew/apollo/utils/NavUtils;->openArtistProfile(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :pswitch_7
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-wide v4, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSelectedId:J

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    goto :goto_0

    .line 253
    :pswitch_8
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-object v3, v3, Lcom/andrew/apollo/model/Song;->mSongName:Ljava/lang/String;

    new-array v4, v2, [J

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSelectedId:J

    aput-wide v5, v4, v7

    invoke-static {v3, v4, v8}, Lcom/andrew/apollo/menu/DeleteDialog;->newInstance(Ljava/lang/String;[JLjava/lang/String;)Lcom/andrew/apollo/menu/DeleteDialog;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "DeleteDialog"

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/menu/DeleteDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 256
    const-wide/16 v3, 0xa

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 257
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->notifyDataSetChanged()V

    .line 258
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v7, v8, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto/16 :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    new-instance v0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030019

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    .line 133
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 182
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 183
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSelectedPosition:I

    .line 185
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    iget v3, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/model/Song;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSong:Lcom/andrew/apollo/model/Song;

    .line 186
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-wide v2, v2, Lcom/andrew/apollo/model/Song;->mSongId:J

    iput-wide v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSelectedId:J

    .line 187
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-object v2, v2, Lcom/andrew/apollo/model/Song;->mSongName:Ljava/lang/String;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSongName:Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-object v2, v2, Lcom/andrew/apollo/model/Song;->mAlbumName:Ljava/lang/String;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mAlbumName:Ljava/lang/String;

    .line 189
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-object v2, v2, Lcom/andrew/apollo/model/Song;->mArtistName:Ljava/lang/String;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mArtistName:Ljava/lang/String;

    .line 192
    const/4 v2, 0x1

    const v3, 0x7f090039

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 196
    const/4 v2, 0x2

    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 200
    const/4 v2, 0x3

    const v3, 0x7f090019

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    .line 202
    .local v1, subMenu:Landroid/view/SubMenu;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v5, v1, v4}, Lcom/andrew/apollo/utils/MusicUtils;->makePlaylistMenu(Landroid/content/Context;ILandroid/view/SubMenu;Z)V

    .line 205
    const/16 v2, 0x8

    const v3, 0x7f09003b

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 209
    const/16 v2, 0xc

    const v3, 0x7f090042

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 213
    const/16 v2, 0x9

    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 215
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
    .line 288
    new-instance v0, Lcom/andrew/apollo/loaders/LastAddedLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/loaders/LastAddedLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 142
    const v0, 0x7f030014

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mRootView:Landroid/view/ViewGroup;

    .line 144
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0d0068

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mListView:Landroid/widget/ListView;

    .line 146
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/andrew/apollo/recycler/RecycleHolder;

    invoke-direct {v1}, Lcom/andrew/apollo/recycler/RecycleHolder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 150
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 152
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/andrew/apollo/widgets/VerticalScrollListener;

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mProfileTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-direct {v1, v4, v2, v3}, Lcom/andrew/apollo/widgets/VerticalScrollListener;-><init>(Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;Lcom/andrew/apollo/widgets/ProfileTabCarousel;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 156
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 159
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 273
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 281
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/andrew/apollo/loaders/LastAddedLoader;->makeLastAddedCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 277
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v1

    .line 278
    .local v1, list:[J
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 279
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v0, 0x0

    .line 281
    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lcom/andrew/apollo/model/Song;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Song;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/model/Song;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0d0064

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 300
    .local v0, empty:Landroid/widget/TextView;
    const v3, 0x7f090076

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 313
    .end local v0           #empty:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->unload()V

    .line 308
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v3, p2}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->setCount(Ljava/util/List;)V

    .line 310
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/model/Song;

    .line 311
    .local v2, song:Lcom/andrew/apollo/model/Song;
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v3, v2}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->add(Ljava/lang/Object;)V

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
    .line 321
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Song;>;>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/LastAddedFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->unload()V

    .line 322
    return-void
.end method
