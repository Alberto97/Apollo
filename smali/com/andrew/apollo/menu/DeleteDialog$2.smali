.class Lcom/andrew/apollo/menu/DeleteDialog$2;
.super Ljava/lang/Object;
.source "DeleteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/menu/DeleteDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/menu/DeleteDialog;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/menu/DeleteDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/andrew/apollo/menu/DeleteDialog$2;->this$0:Lcom/andrew/apollo/menu/DeleteDialog;

    iput-object p2, p0, Lcom/andrew/apollo/menu/DeleteDialog$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/andrew/apollo/menu/DeleteDialog$2;->this$0:Lcom/andrew/apollo/menu/DeleteDialog;

    #getter for: Lcom/andrew/apollo/menu/DeleteDialog;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;
    invoke-static {v0}, Lcom/andrew/apollo/menu/DeleteDialog;->access$000(Lcom/andrew/apollo/menu/DeleteDialog;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/menu/DeleteDialog$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/ImageFetcher;->removeFromCache(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/andrew/apollo/menu/DeleteDialog$2;->this$0:Lcom/andrew/apollo/menu/DeleteDialog;

    invoke-virtual {v0}, Lcom/andrew/apollo/menu/DeleteDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/menu/DeleteDialog$2;->this$0:Lcom/andrew/apollo/menu/DeleteDialog;

    #getter for: Lcom/andrew/apollo/menu/DeleteDialog;->mItemList:[J
    invoke-static {v1}, Lcom/andrew/apollo/menu/DeleteDialog;->access$100(Lcom/andrew/apollo/menu/DeleteDialog;)[J

    move-result-object v1

    invoke-static {v0, v1}, Lcom/andrew/apollo/utils/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    return-void
.end method
