.class public Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;
.super Landroid/support/v4/app/Fragment;
.source "ArtistAlbumFragment.java"

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
        "Lcom/andrew/apollo/model/Album;",
        ">;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

.field private mAlbum:Lcom/andrew/apollo/model/Album;

.field private mAlbumList:[J

.field private mListView:Landroid/widget/ListView;

.field private mProfileTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

.field private final mScrollableHeader:Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 301
    new-instance v0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment$1;-><init>(Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mScrollableHeader:Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;)Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->setHasOptionsMenu(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 159
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 162
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    const v0, 0x7f0d001a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mProfileTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    .line 108
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 246
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 224
    :pswitch_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbumList:[J

    invoke-static {v3, v4, v5, v5}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    goto :goto_0

    .line 227
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbumList:[J

    invoke-static {v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->addToQueue(Landroid/content/Context;[J)V

    goto :goto_0

    .line 230
    :pswitch_3
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbumList:[J

    invoke-static {v3}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getInstance([J)Lcom/andrew/apollo/menu/CreateNewPlaylist;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "CreatePlaylist"

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "playlist"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 235
    .local v0, id:J
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbumList:[J

    invoke-static {v3, v4, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 238
    .end local v0           #id:J
    :pswitch_5
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-object v3, v3, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbumList:[J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/menu/DeleteDialog;->newInstance(Ljava/lang/String;[JLjava/lang/String;)Lcom/andrew/apollo/menu/DeleteDialog;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "DeleteDialog"

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/menu/DeleteDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->refresh()V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    new-instance v0, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030017

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    .line 119
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 188
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 191
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 193
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/model/Album;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    .line 195
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-wide v3, v3, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    invoke-static {v2, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbumList:[J

    .line 198
    const/4 v2, 0x1

    const v3, 0x7f090039

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 202
    const/4 v2, 0x2

    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 206
    const/4 v2, 0x3

    const v3, 0x7f090019

    invoke-interface {p1, v6, v2, v5, v3}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    .line 208
    .local v1, subMenu:Landroid/view/SubMenu;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v6, v1, v5}, Lcom/andrew/apollo/utils/MusicUtils;->makePlaylistMenu(Landroid/content/Context;ILandroid/view/SubMenu;Z)V

    .line 211
    const/16 v2, 0x9

    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 213
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 4
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
    .line 268
    new-instance v0, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/loaders/ArtistAlbumLoader;-><init>(Landroid/content/Context;Ljava/lang/Long;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 128
    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    .local v0, rootView:Landroid/view/ViewGroup;
    const v1, 0x7f0d0068

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mListView:Landroid/widget/ListView;

    .line 132
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/andrew/apollo/recycler/RecycleHolder;

    invoke-direct {v2}, Lcom/andrew/apollo/recycler/RecycleHolder;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 136
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 138
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/andrew/apollo/widgets/VerticalScrollListener;

    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mScrollableHeader:Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mProfileTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/andrew/apollo/widgets/VerticalScrollListener;-><init>(Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;Lcom/andrew/apollo/widgets/ProfileTabCarousel;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 143
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 146
    return-object v0
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
    .line 255
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 261
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/model/Album;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    .line 259
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-object v1, v1, Lcom/andrew/apollo/model/Album;->mAlbumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAlbum:Lcom/andrew/apollo/model/Album;

    iget-object v2, v2, Lcom/andrew/apollo/model/Album;->mArtistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/andrew/apollo/utils/NavUtils;->openAlbumProfile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

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
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lcom/andrew/apollo/model/Album;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Album;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/model/Album;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    :cond_0
    return-void

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    invoke-virtual {v2}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->unload()V

    .line 284
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    invoke-virtual {v2, p2}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->setCount(Ljava/util/List;)V

    .line 286
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/model/Album;

    .line 287
    .local v0, album:Lcom/andrew/apollo/model/Album;
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    invoke-virtual {v2, v0}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->add(Ljava/lang/Object;)V

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
    .line 297
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Album;>;>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->unload()V

    .line 298
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->flush()V

    .line 171
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 180
    return-void

    .line 179
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 327
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 328
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->notifyDataSetChanged()V

    .line 329
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 330
    return-void
.end method
