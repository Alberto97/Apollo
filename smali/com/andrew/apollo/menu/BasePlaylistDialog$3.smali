.class Lcom/andrew/apollo/menu/BasePlaylistDialog$3;
.super Ljava/lang/Object;
.source "BasePlaylistDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/menu/BasePlaylistDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/menu/BasePlaylistDialog;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/menu/BasePlaylistDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog$3;->this$0:Lcom/andrew/apollo/menu/BasePlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog$3;->this$0:Lcom/andrew/apollo/menu/BasePlaylistDialog;

    invoke-virtual {v0}, Lcom/andrew/apollo/menu/BasePlaylistDialog;->openKeyboard()V

    .line 97
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog$3;->this$0:Lcom/andrew/apollo/menu/BasePlaylistDialog;

    iget-object v0, v0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 99
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog$3;->this$0:Lcom/andrew/apollo/menu/BasePlaylistDialog;

    iget-object v0, v0, Lcom/andrew/apollo/menu/BasePlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 100
    return-void
.end method
