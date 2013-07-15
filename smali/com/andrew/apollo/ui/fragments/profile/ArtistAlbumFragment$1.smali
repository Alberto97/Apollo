.class Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment$1;
.super Ljava/lang/Object;
.source "ArtistAlbumFragment.java"

# interfaces
.implements Lcom/andrew/apollo/widgets/VerticalScrollListener$ScrollableHeader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment$1;->this$0:Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x1

    .line 308
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-ne p2, v1, :cond_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment$1;->this$0:Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;

    #getter for: Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;
    invoke-static {v0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->access$000(Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;)Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->setPauseDiskCache(Z)V

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment$1;->this$0:Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;

    #getter for: Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;
    invoke-static {v0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->access$000(Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;)Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->setPauseDiskCache(Z)V

    .line 313
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment$1;->this$0:Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;

    #getter for: Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->mAdapter:Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;
    invoke-static {v0}, Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;->access$000(Lcom/andrew/apollo/ui/fragments/profile/ArtistAlbumFragment;)Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/adapters/ArtistAlbumAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
