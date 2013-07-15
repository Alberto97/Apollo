.class Lcom/andrew/apollo/widgets/CarouselTab$1;
.super Ljava/lang/Object;
.source "CarouselTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/widgets/CarouselTab;->setArtistAlbumPhoto(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/widgets/CarouselTab;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$lastAlbum:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/widgets/CarouselTab;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/andrew/apollo/widgets/CarouselTab$1;->this$0:Lcom/andrew/apollo/widgets/CarouselTab;

    iput-object p2, p0, Lcom/andrew/apollo/widgets/CarouselTab$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/andrew/apollo/widgets/CarouselTab$1;->val$lastAlbum:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v1, p0, Lcom/andrew/apollo/widgets/CarouselTab$1;->this$0:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v1}, Lcom/andrew/apollo/widgets/CarouselTab;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/widgets/CarouselTab$1;->val$context:Landroid/app/Activity;

    iget-object v3, p0, Lcom/andrew/apollo/widgets/CarouselTab$1;->val$lastAlbum:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/andrew/apollo/utils/MusicUtils;->getIdForAlbum(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/andrew/apollo/utils/MusicUtils;->getSongListForAlbum(Landroid/content/Context;J)[J

    move-result-object v0

    .line 178
    .local v0, albumList:[J
    iget-object v1, p0, Lcom/andrew/apollo/widgets/CarouselTab$1;->this$0:Lcom/andrew/apollo/widgets/CarouselTab;

    invoke-virtual {v1}, Lcom/andrew/apollo/widgets/CarouselTab;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4, v4}, Lcom/andrew/apollo/utils/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 179
    return-void
.end method
