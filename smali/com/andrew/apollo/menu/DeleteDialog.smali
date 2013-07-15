.class public Lcom/andrew/apollo/menu/DeleteDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DeleteDialog.java"


# instance fields
.field private mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

.field private mItemList:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/menu/DeleteDialog;)Lcom/andrew/apollo/cache/ImageFetcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/andrew/apollo/menu/DeleteDialog;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/menu/DeleteDialog;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/andrew/apollo/menu/DeleteDialog;->mItemList:[J

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;[JLjava/lang/String;)Lcom/andrew/apollo/menu/DeleteDialog;
    .locals 3
    .parameter "title"
    .parameter "items"
    .parameter "key"

    .prologue
    .line 59
    new-instance v1, Lcom/andrew/apollo/menu/DeleteDialog;

    invoke-direct {v1}, Lcom/andrew/apollo/menu/DeleteDialog;-><init>()V

    .line 60
    .local v1, frag:Lcom/andrew/apollo/menu/DeleteDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "items"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 63
    const-string v2, "cachekey"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/andrew/apollo/menu/DeleteDialog;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 73
    const v5, 0x7f09003d

    invoke-virtual {p0, v5}, Lcom/andrew/apollo/menu/DeleteDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, delete:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/DeleteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, arguments:Landroid/os/Bundle;
    const-string v5, "cachekey"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, key:Ljava/lang/String;
    const-string v5, "items"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Lcom/andrew/apollo/menu/DeleteDialog;->mItemList:[J

    .line 80
    const-string v5, "name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, title:Ljava/lang/String;
    const v5, 0x7f090032

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/andrew/apollo/menu/DeleteDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, dialogTitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/DeleteDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/andrew/apollo/utils/ApolloUtils;->getImageFetcher(Landroid/app/Activity;)Lcom/andrew/apollo/cache/ImageFetcher;

    move-result-object v5

    iput-object v5, p0, Lcom/andrew/apollo/menu/DeleteDialog;->mFetcher:Lcom/andrew/apollo/cache/ImageFetcher;

    .line 85
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/andrew/apollo/menu/DeleteDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090033

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/andrew/apollo/menu/DeleteDialog$2;

    invoke-direct {v6, p0, v3}, Lcom/andrew/apollo/menu/DeleteDialog$2;-><init>(Lcom/andrew/apollo/menu/DeleteDialog;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f09002e

    new-instance v7, Lcom/andrew/apollo/menu/DeleteDialog$1;

    invoke-direct {v7, p0}, Lcom/andrew/apollo/menu/DeleteDialog$1;-><init>(Lcom/andrew/apollo/menu/DeleteDialog;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
