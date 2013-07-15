.class public Lcom/andrew/apollo/ui/fragments/PlaylistFragment;
.super Landroid/support/v4/app/Fragment;
.source "PlaylistFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
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
        "Lcom/andrew/apollo/model/Playlist;",
        ">;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/andrew/apollo/MusicStateListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/andrew/apollo/adapters/PlaylistAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPlaylist:Lcom/andrew/apollo/model/Playlist;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/ui/fragments/PlaylistFragment;)Lcom/andrew/apollo/model/Playlist;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mPlaylist:Lcom/andrew/apollo/model/Playlist;

    return-object v0
.end method

.method private final buildDeleteDialog()Landroid/app/AlertDialog;
    .locals 5

    .prologue
    .line 314
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090032

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mPlaylist:Lcom/andrew/apollo/model/Playlist;

    iget-object v4, v4, Lcom/andrew/apollo/model/Playlist;->mPlaylistName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09003d

    new-instance v2, Lcom/andrew/apollo/ui/fragments/PlaylistFragment$2;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment$2;-><init>(Lcom/andrew/apollo/ui/fragments/PlaylistFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09002e

    new-instance v2, Lcom/andrew/apollo/ui/fragments/PlaylistFragment$1;

    invoke-direct {v2, p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment$1;-><init>(Lcom/andrew/apollo/ui/fragments/PlaylistFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->setHasOptionsMenu(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 143
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    check-cast p1, Lcom/andrew/apollo/ui/activities/BaseActivity;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/andrew/apollo/ui/activities/BaseActivity;->setMusicStateListenerListener(Lcom/andrew/apollo/MusicStateListener;)V

    .line 100
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-nez v3, :cond_0

    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 183
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 216
    .end local v0           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 185
    .restart local v0       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_1
    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v3, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/andrew/apollo/utils/MusicUtils;->playFavorites(Landroid/content/Context;)V

    goto :goto_0

    .line 187
    :cond_1
    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ne v3, v2, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/andrew/apollo/utils/MusicUtils;->playLastAdded(Landroid/content/Context;)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mPlaylist:Lcom/andrew/apollo/model/Playlist;

    iget-wide v4, v4, Lcom/andrew/apollo/model/Playlist;->mPlaylistId:J

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_0

    .line 194
    :pswitch_2
    const/4 v1, 0x0

    .line 195
    .local v1, list:[J
    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v3, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForFavorites(Landroid/content/Context;)[J

    move-result-object v1

    .line 203
    :goto_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/andrew/apollo/utils/MusicUtils;->addToQueue(Landroid/content/Context;[J)V

    goto :goto_0

    .line 197
    :cond_3
    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ne v3, v2, :cond_4

    .line 198
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForLastAdded(Landroid/content/Context;)[J

    move-result-object v1

    goto :goto_1

    .line 200
    :cond_4
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mPlaylist:Lcom/andrew/apollo/model/Playlist;

    iget-wide v4, v4, Lcom/andrew/apollo/model/Playlist;->mPlaylistId:J

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v1

    goto :goto_1

    .line 206
    .end local v1           #list:[J
    :pswitch_3
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mPlaylist:Lcom/andrew/apollo/model/Playlist;

    iget-wide v3, v3, Lcom/andrew/apollo/model/Playlist;->mPlaylistId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/andrew/apollo/menu/RenamePlaylist;->getInstance(Ljava/lang/Long;)Lcom/andrew/apollo/menu/RenamePlaylist;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "RenameDialog"

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/menu/RenamePlaylist;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_4
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->buildDeleteDialog()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    new-instance v0, Lcom/andrew/apollo/adapters/PlaylistAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030019

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/adapters/PlaylistAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mAdapter:Lcom/andrew/apollo/adapters/PlaylistAdapter;

    .line 110
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 154
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 155
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 157
    .local v1, mPosition:I
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mAdapter:Lcom/andrew/apollo/adapters/PlaylistAdapter;

    invoke-virtual {v2, v1}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/model/Playlist;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mPlaylist:Lcom/andrew/apollo/model/Playlist;

    .line 160
    const v2, 0x7f090039

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 164
    const/4 v2, 0x2

    const v3, 0x7f09001b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 167
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-le v2, v5, :cond_0

    .line 168
    const/4 v2, 0x6

    const v3, 0x7f09003c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 171
    const/16 v2, 0x9

    const v3, 0x7f09003d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 174
    :cond_0
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
            "Lcom/andrew/apollo/model/Playlist;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lcom/andrew/apollo/loaders/PlaylistLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/loaders/PlaylistLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 119
    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 121
    .local v0, rootView:Landroid/view/ViewGroup;
    const v1, 0x7f0d0068

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mListView:Landroid/widget/ListView;

    .line 123
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mAdapter:Lcom/andrew/apollo/adapters/PlaylistAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/andrew/apollo/recycler/RecycleHolder;

    invoke-direct {v2}, Lcom/andrew/apollo/recycler/RecycleHolder;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 127
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 129
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
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
    const v4, 0x7f09002b

    const v3, 0x7f09002a

    .line 225
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 226
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mAdapter:Lcom/andrew/apollo/adapters/PlaylistAdapter;

    invoke-virtual {v0, p3}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/model/Playlist;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mPlaylist:Lcom/andrew/apollo/model/Playlist;

    .line 229
    if-nez p3, :cond_0

    .line 230
    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    const-string v2, "mime_type"

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/andrew/apollo/ui/activities/ProfileActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->startActivity(Landroid/content/Intent;)V

    .line 249
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 234
    invoke-virtual {p0, v4}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    const-string v2, "mime_type"

    invoke-virtual {p0, v4}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mPlaylist:Lcom/andrew/apollo/model/Playlist;

    iget-object v0, v0, Lcom/andrew/apollo/model/Playlist;->mPlaylistName:Ljava/lang/String;

    .line 239
    const-string v2, "mime_type"

    const-string v3, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v2, "id"

    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mPlaylist:Lcom/andrew/apollo/model/Playlist;

    iget-wide v3, v3, Lcom/andrew/apollo/model/Playlist;->mPlaylistId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lcom/andrew/apollo/model/Playlist;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Playlist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Playlist;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/model/Playlist;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mAdapter:Lcom/andrew/apollo/adapters/PlaylistAdapter;

    invoke-virtual {v2}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->unload()V

    .line 272
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/model/Playlist;

    .line 273
    .local v1, playlist:Lcom/andrew/apollo/model/Playlist;
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mAdapter:Lcom/andrew/apollo/adapters/PlaylistAdapter;

    invoke-virtual {v2, v1}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 276
    .end local v1           #playlist:Lcom/andrew/apollo/model/Playlist;
    :cond_1
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mAdapter:Lcom/andrew/apollo/adapters/PlaylistAdapter;

    invoke-virtual {v2}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->buildCache()V

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
            "Lcom/andrew/apollo/model/Playlist;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Playlist;>;>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mAdapter:Lcom/andrew/apollo/adapters/PlaylistAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/PlaylistAdapter;->unload()V

    .line 286
    return-void
.end method

.method public onMetaChanged()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public restartLoader()V
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 295
    return-void
.end method
