.class Lcom/andrew/apollo/adapters/AlbumAdapter$1;
.super Ljava/lang/Object;
.source "AlbumAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/adapters/AlbumAdapter;->playAlbum(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/adapters/AlbumAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/andrew/apollo/adapters/AlbumAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/andrew/apollo/adapters/AlbumAdapter$1;->this$0:Lcom/andrew/apollo/adapters/AlbumAdapter;

    iput p2, p0, Lcom/andrew/apollo/adapters/AlbumAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 187
    iget-object v3, p0, Lcom/andrew/apollo/adapters/AlbumAdapter$1;->this$0:Lcom/andrew/apollo/adapters/AlbumAdapter;

    iget v4, p0, Lcom/andrew/apollo/adapters/AlbumAdapter$1;->val$position:I

    invoke-virtual {v3, v4}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/model/Album;

    iget-wide v0, v3, Lcom/andrew/apollo/model/Album;->mAlbumId:J

    .line 188
    .local v0, id:J
    iget-object v3, p0, Lcom/andrew/apollo/adapters/AlbumAdapter$1;->this$0:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v2

    .line 189
    .local v2, list:[J
    iget-object v3, p0, Lcom/andrew/apollo/adapters/AlbumAdapter$1;->this$0:Lcom/andrew/apollo/adapters/AlbumAdapter;

    invoke-virtual {v3}, Lcom/andrew/apollo/adapters/AlbumAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v5, v5}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 190
    return-void
.end method
