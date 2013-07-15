.class Lcom/andrew/apollo/adapters/ArtistAdapter$1;
.super Ljava/lang/Object;
.source "ArtistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/adapters/ArtistAdapter;->playArtist(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/adapters/ArtistAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/andrew/apollo/adapters/ArtistAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/andrew/apollo/adapters/ArtistAdapter$1;->this$0:Lcom/andrew/apollo/adapters/ArtistAdapter;

    iput p2, p0, Lcom/andrew/apollo/adapters/ArtistAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 179
    iget-object v3, p0, Lcom/andrew/apollo/adapters/ArtistAdapter$1;->this$0:Lcom/andrew/apollo/adapters/ArtistAdapter;

    iget v4, p0, Lcom/andrew/apollo/adapters/ArtistAdapter$1;->val$position:I

    invoke-virtual {v3, v4}, Lcom/andrew/apollo/adapters/ArtistAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/model/Artist;

    iget-wide v0, v3, Lcom/andrew/apollo/model/Artist;->mArtistId:J

    .line 180
    .local v0, id:J
    iget-object v3, p0, Lcom/andrew/apollo/adapters/ArtistAdapter$1;->this$0:Lcom/andrew/apollo/adapters/ArtistAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/ArtistAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForArtist(Landroid/content/Context;J)[J

    move-result-object v2

    .line 181
    .local v2, list:[J
    iget-object v3, p0, Lcom/andrew/apollo/adapters/ArtistAdapter$1;->this$0:Lcom/andrew/apollo/adapters/ArtistAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/ArtistAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v5, v5}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 182
    return-void
.end method
