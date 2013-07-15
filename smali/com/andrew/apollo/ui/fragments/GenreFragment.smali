.class public Lcom/andrew/apollo/ui/fragments/GenreFragment;
.super Landroid/support/v4/app/Fragment;
.source "GenreFragment.java"

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
        "Lcom/andrew/apollo/model/Genre;",
        ">;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

.field private mGenre:Lcom/andrew/apollo/model/Genre;

.field private mGenreList:[J

.field private mListView:Landroid/widget/ListView;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/ui/fragments/GenreFragment;->setHasOptionsMenu(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/GenreFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 134
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 174
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/GenreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mGenreList:[J

    invoke-static {v1, v2, v3, v3}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/GenreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mGenreList:[J

    invoke-static {v1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->addToQueue(Landroid/content/Context;[J)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    new-instance v0, Lcom/andrew/apollo/adapters/GenreAdapter;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/GenreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030019

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/adapters/GenreAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    .line 101
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 144
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 146
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/adapters/GenreAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/model/Genre;

    iput-object v1, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mGenre:Lcom/andrew/apollo/model/Genre;

    .line 148
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/GenreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mGenre:Lcom/andrew/apollo/model/Genre;

    iget-wide v2, v2, Lcom/andrew/apollo/model/Genre;->mGenreId:J

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForGenre(Landroid/content/Context;J)[J

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mGenreList:[J

    .line 151
    const/4 v1, 0x1

    const v2, 0x7f090039

    invoke-interface {p1, v5, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 154
    const/4 v1, 0x2

    const v2, 0x7f09001b

    invoke-interface {p1, v5, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 155
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
            "Lcom/andrew/apollo/model/Genre;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/andrew/apollo/loaders/GenreLoader;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/GenreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/loaders/GenreLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 110
    const v0, 0x7f030014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mRootView:Landroid/view/ViewGroup;

    .line 112
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0d0068

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mListView:Landroid/widget/ListView;

    .line 114
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/andrew/apollo/recycler/RecycleHolder;

    invoke-direct {v1}, Lcom/andrew/apollo/recycler/RecycleHolder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 118
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 120
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 183
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    invoke-virtual {v0, p3}, Lcom/andrew/apollo/adapters/GenreAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/model/Genre;

    iput-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mGenre:Lcom/andrew/apollo/model/Genre;

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    const-string v1, "id"

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mGenre:Lcom/andrew/apollo/model/Genre;

    iget-wide v2, v2, Lcom/andrew/apollo/model/Genre;->mGenreId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 187
    const-string v1, "mime_type"

    const-string v2, "vnd.android.cursor.dir/genre"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "name"

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mGenre:Lcom/andrew/apollo/model/Genre;

    iget-object v2, v2, Lcom/andrew/apollo/model/Genre;->mGenreName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/GenreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/andrew/apollo/ui/activities/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v1}, Lcom/andrew/apollo/ui/fragments/GenreFragment;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/andrew/apollo/ui/fragments/GenreFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lcom/andrew/apollo/model/Genre;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/model/Genre;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Genre;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/model/Genre;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0d0064

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    .local v0, empty:Landroid/widget/TextView;
    const v3, 0x7f090075

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/ui/fragments/GenreFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 226
    .end local v0           #empty:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/GenreAdapter;->unload()V

    .line 221
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/model/Genre;

    .line 222
    .local v1, genre:Lcom/andrew/apollo/model/Genre;
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    invoke-virtual {v3, v1}, Lcom/andrew/apollo/adapters/GenreAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 225
    .end local v1           #genre:Lcom/andrew/apollo/model/Genre;
    :cond_1
    iget-object v3, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/GenreAdapter;->buildCache()V

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
            "Lcom/andrew/apollo/model/Genre;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/andrew/apollo/model/Genre;>;>;"
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/GenreFragment;->mAdapter:Lcom/andrew/apollo/adapters/GenreAdapter;

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/GenreAdapter;->unload()V

    .line 235
    return-void
.end method
