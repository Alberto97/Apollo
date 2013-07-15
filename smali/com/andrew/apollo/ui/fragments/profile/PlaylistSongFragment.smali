.class public Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;
.super Landroid/support/v4/app/Fragment;
.source "PlaylistSongFragment.java"

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
.field private mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

.field private mPlaylistId:J

.field private mProfileTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mSong:Lcom/andrew/apollo/model/Song;

.field private mSongName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 117
    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 375
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v2}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->notifyDataSetChanged()V

    .line 387
    :goto_0
    return-void

    .line 379
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .line 380
    .local v0, realFrom:I
    add-int/lit8 v1, p2, -0x1

    .line 381
    .local v1, realTo:I
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v2, v0}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/model/Song;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    .line 382
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->remove(Ljava/lang/Object;)V

    .line 383
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    invoke-virtual {v2, v3, v1}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->insert(Ljava/lang/Object;I)V

    .line 384
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v2}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->notifyDataSetChanged()V

    .line 385
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-wide v3, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mPlaylistId:J

    invoke-static {v2, v3, v4, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->moveItem(Landroid/content/ContentResolver;JII)Z

    goto :goto_0
.end method

.method public getSpeed(FJ)F
    .locals 2
    .parameter "w"
    .parameter "t"

    .prologue
    .line 349
    const v0, 0x3f4ccccd

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a83126f

    div-float/2addr v0, v1

    .line 352
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
    .line 177
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 179
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->setHasOptionsMenu(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 182
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 183
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mPlaylistId:J

    .line 184
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 186
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 125
    const v0, 0x7f0d001a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mProfileTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    .line 127
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 242
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 287
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 245
    :pswitch_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-array v4, v2, [J

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSelectedId:J

    aput-wide v5, v4, v7

    invoke-static {v3, v4, v7, v7}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    goto :goto_0

    .line 250
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-array v4, v2, [J

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSelectedId:J

    aput-wide v5, v4, v7

    invoke-static {v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->addToQueue(Landroid/content/Context;[J)V

    goto :goto_0

    .line 255
    :pswitch_3
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/andrew/apollo/provider/FavoritesStore;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/provider/FavoritesStore;

    move-result-object v3

    iget-wide v4, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSelectedId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSongName:Ljava/lang/String;

    iget-object v6, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAlbumName:Ljava/lang/String;

    iget-object v7, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mArtistName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/andrew/apollo/provider/FavoritesStore;->addSongId(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :pswitch_4
    new-array v3, v2, [J

    iget-wide v4, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSelectedId:J

    aput-wide v4, v3, v7

    invoke-static {v3}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->getInstance([J)Lcom/andrew/apollo/menu/CreateNewPlaylist;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "CreatePlaylist"

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/menu/CreateNewPlaylist;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :pswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "playlist"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 265
    .local v0, mPlaylistId:J
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-array v4, v2, [J

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSelectedId:J

    aput-wide v5, v4, v7

    invoke-static {v3, v4, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 270
    .end local v0           #mPlaylistId:J
    :pswitch_6
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mArtistName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/andrew/apollo/utils/NavUtils;->openArtistProfile(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :pswitch_7
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-wide v4, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSelectedId:J

    invoke-static {v3, v4, v5}, Lcom/andrew/apollo/utils/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    goto :goto_0

    .line 276
    :pswitch_8
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-object v3, v3, Lcom/andrew/apollo/model/Song;->mSongName:Ljava/lang/String;

    new-array v4, v2, [J

    iget-wide v5, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSelectedId:J

    aput-wide v5, v4, v7

    invoke-static {v3, v4, v8}, Lcom/andrew/apollo/menu/DeleteDialog;->newInstance(Ljava/lang/String;[JLjava/lang/String;)Lcom/andrew/apollo/menu/DeleteDialog;

    move-result-object v3

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "DeleteDialog"

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/menu/DeleteDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 279
    const-wide/16 v3, 0xa

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 280
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->notifyDataSetChanged()V

    .line 281
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v7, v8, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto/16 :goto_0

    .line 243
    nop

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
    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    new-instance v0, Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03000e

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    .line 137
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 203
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 205
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 206
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSelectedPosition:I

    .line 208
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    iget v3, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSelectedPosition:I

    invoke-virtual {v2, v3}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/model/Song;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    .line 209
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-wide v2, v2, Lcom/andrew/apollo/model/Song;->mSongId:J

    iput-wide v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSelectedId:J

    .line 210
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-object v2, v2, Lcom/andrew/apollo/model/Song;->mSongName:Ljava/lang/String;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSongName:Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-object v2, v2, Lcom/andrew/apollo/model/Song;->mAlbumName:Ljava/lang/String;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAlbumName:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-object v2, v2, Lcom/andrew/apollo/model/Song;->mArtistName:Ljava/lang/String;

    iput-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mArtistName:Ljava/lang/String;

    .line 215
    const v2, 0x7f090039

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v6, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 219
    const/4 v2, 0x2

    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 223
    const/4 v2, 0x3

    const v3, 0x7f090019

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    .line 225
    .local v1, subMenu:Landroid/view/SubMenu;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v4, v1, v6}, Lcom/andrew/apollo/utils/MusicUtils;->makePlaylistMenu(Landroid/content/Context;ILandroid/view/SubMenu;Z)V

    .line 228
    const v2, 0x7f09003b

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v4, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 232
    const/16 v2, 0xc

    const v3, 0x7f090042

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 236
    const/16 v2, 0x9

    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 238
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
            "Lcom/andrew/apollo/model/Song;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lcom/andrew/apollo/loaders/PlaylistSongLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mPlaylistId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/loaders/PlaylistSongLoader;-><init>(Landroid/content/Context;Ljava/lang/Long;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 146
    const v1, 0x7f030014

    invoke-virtual {p1, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 148
    .local v0, rootView:Landroid/view/ViewGroup;
    const v1, 0x7f0d0068

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/dragdrop/DragSortListView;

    iput-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    .line 150
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    new-instance v2, Lcom/andrew/apollo/recycler/RecycleHolder;

    invoke-direct {v2}, Lcom/andrew/apollo/recycler/RecycleHolder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 154
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 156
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setDropListener(Lcom/andrew/apollo/dragdrop/DragSortListView$DropListener;)V

    .line 160
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setRemoveListener(Lcom/andrew/apollo/dragdrop/DragSortListView$RemoveListener;)V

    .line 162
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setDragScrollProfile(Lcom/andrew/apollo/dragdrop/DragSortListView$DragScrollProfile;)V

    .line 164
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    new-instance v2, Lcom/andrew/apollo/widgets/VerticalScrollListener;

    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mProfileTabCarousel:Lcom/andrew/apollo/widgets/ProfileTabCarousel;

    invoke-direct {v2, v5, v3, v4}, Lcom/andrew/apollo/widgets/VerticalScrollListener;-><init>(Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;Lcom/andrew/apollo/widgets/ProfileTabCarousel;I)V

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 166
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, v4}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setVerticalScrollBarEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, v4}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setFastScrollEnabled(Z)V

    .line 168
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mListView:Lcom/andrew/apollo/dragdrop/DragSortListView;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/andrew/apollo/dragdrop/DragSortListView;->setPadding(IIII)V

    .line 169
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
    .line 296
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/andrew/apollo/loaders/PlaylistSongLoader;->makePlaylistSongCursor(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    .line 301
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v1

    .line 302
    .local v1, list:[J
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 303
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 304
    const/4 v0, 0x0

    .line 305
    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
    .line 321
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Song;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/model/Song;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    return-void

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v2}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->unload()V

    .line 328
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v2, p2}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->setCount(Ljava/util/List;)V

    .line 330
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/model/Song;

    .line 331
    .local v1, song:Lcom/andrew/apollo/model/Song;
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v2, v1}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->add(Ljava/lang/Object;)V

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
    .line 341
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Song;>;>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->unload()V

    .line 342
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 195
    return-void

    .line 194
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public remove(I)V
    .locals 5
    .parameter "which"

    .prologue
    .line 361
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/model/Song;

    iput-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    .line 362
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->remove(Ljava/lang/Object;)V

    .line 363
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mAdapter:Lcom/andrew/apollo/adapters/ProfileSongAdapter;

    invoke-virtual {v1}, Lcom/andrew/apollo/adapters/ProfileSongAdapter;->notifyDataSetChanged()V

    .line 364
    const-string v1, "external"

    iget-wide v2, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mPlaylistId:J

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 365
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/profile/PlaylistSongFragment;->mSong:Lcom/andrew/apollo/model/Song;

    iget-wide v3, v3, Lcom/andrew/apollo/model/Song;->mSongId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 368
    return-void
.end method
