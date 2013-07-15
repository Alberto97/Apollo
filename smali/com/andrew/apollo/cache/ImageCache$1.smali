.class Lcom/andrew/apollo/cache/ImageCache$1;
.super Landroid/os/AsyncTask;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/cache/ImageCache;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/cache/ImageCache;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/cache/ImageCache;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/andrew/apollo/cache/ImageCache$1;->this$0:Lcom/andrew/apollo/cache/ImageCache;

    iput-object p2, p0, Lcom/andrew/apollo/cache/ImageCache$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/cache/ImageCache$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "unused"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/andrew/apollo/cache/ImageCache$1;->this$0:Lcom/andrew/apollo/cache/ImageCache;

    iget-object v1, p0, Lcom/andrew/apollo/cache/ImageCache$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/ImageCache;->initDiskCache(Landroid/content/Context;)V

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method
