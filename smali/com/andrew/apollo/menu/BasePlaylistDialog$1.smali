.class Lcom/andrew/apollo/menu/BasePlaylistDialog$1;
.super Ljava/lang/Object;
.source "BasePlaylistDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 69
    iput-object p1, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog$1;->this$0:Lcom/andrew/apollo/menu/BasePlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/andrew/apollo/menu/BasePlaylistDialog$1;->this$0:Lcom/andrew/apollo/menu/BasePlaylistDialog;

    invoke-virtual {v0}, Lcom/andrew/apollo/menu/BasePlaylistDialog;->onSaveClick()V

    .line 74
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->refresh()V

    .line 75
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 76
    return-void
.end method
