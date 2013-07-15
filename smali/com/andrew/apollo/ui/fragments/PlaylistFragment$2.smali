.class Lcom/andrew/apollo/ui/fragments/PlaylistFragment$2;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->buildDeleteDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/ui/fragments/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/fragments/PlaylistFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment$2;->this$0:Lcom/andrew/apollo/ui/fragments/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 320
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment$2;->this$0:Lcom/andrew/apollo/ui/fragments/PlaylistFragment;

    #getter for: Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->mPlaylist:Lcom/andrew/apollo/model/Playlist;
    invoke-static {v2}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->access$000(Lcom/andrew/apollo/ui/fragments/PlaylistFragment;)Lcom/andrew/apollo/model/Playlist;

    move-result-object v2

    iget-wide v2, v2, Lcom/andrew/apollo/model/Playlist;->mPlaylistId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 323
    .local v0, mUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/PlaylistFragment$2;->this$0:Lcom/andrew/apollo/ui/fragments/PlaylistFragment;

    invoke-virtual {v1}, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 324
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->refresh()V

    .line 325
    return-void
.end method
