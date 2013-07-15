.class public final Lcom/andrew/apollo/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lcom/andrew/apollo/cache/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/andrew/apollo/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/andrew/apollo/cache/DiskLruCache;Lcom/andrew/apollo/cache/DiskLruCache$Entry;)V
    .locals 0
    .parameter
    .parameter "entry"

    .prologue
    .line 787
    iput-object p1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->this$0:Lcom/andrew/apollo/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    iput-object p2, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->entry:Lcom/andrew/apollo/cache/DiskLruCache$Entry;

    .line 789
    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/cache/DiskLruCache;Lcom/andrew/apollo/cache/DiskLruCache$Entry;Lcom/andrew/apollo/cache/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 782
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/cache/DiskLruCache$Editor;-><init>(Lcom/andrew/apollo/cache/DiskLruCache;Lcom/andrew/apollo/cache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/andrew/apollo/cache/DiskLruCache$Editor;)Lcom/andrew/apollo/cache/DiskLruCache$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->entry:Lcom/andrew/apollo/cache/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 782
    iput-boolean p1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    iget-object v0, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->this$0:Lcom/andrew/apollo/cache/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/andrew/apollo/cache/DiskLruCache;->completeEdit(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/andrew/apollo/cache/DiskLruCache;->access$1900(Lcom/andrew/apollo/cache/DiskLruCache;Lcom/andrew/apollo/cache/DiskLruCache$Editor;Z)V

    .line 864
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->this$0:Lcom/andrew/apollo/cache/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/andrew/apollo/cache/DiskLruCache;->completeEdit(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/andrew/apollo/cache/DiskLruCache;->access$1900(Lcom/andrew/apollo/cache/DiskLruCache;Lcom/andrew/apollo/cache/DiskLruCache$Editor;Z)V

    .line 852
    iget-object v0, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->this$0:Lcom/andrew/apollo/cache/DiskLruCache;

    iget-object v1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->entry:Lcom/andrew/apollo/cache/DiskLruCache$Entry;

    #getter for: Lcom/andrew/apollo/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/andrew/apollo/cache/DiskLruCache$Entry;->access$1100(Lcom/andrew/apollo/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 856
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->this$0:Lcom/andrew/apollo/cache/DiskLruCache;

    const/4 v1, 0x1

    #calls: Lcom/andrew/apollo/cache/DiskLruCache;->completeEdit(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/andrew/apollo/cache/DiskLruCache;->access$1900(Lcom/andrew/apollo/cache/DiskLruCache;Lcom/andrew/apollo/cache/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    iget-object v1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->this$0:Lcom/andrew/apollo/cache/DiskLruCache;

    monitor-enter v1

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->entry:Lcom/andrew/apollo/cache/DiskLruCache$Entry;

    #getter for: Lcom/andrew/apollo/cache/DiskLruCache$Entry;->currentEditor:Lcom/andrew/apollo/cache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/andrew/apollo/cache/DiskLruCache$Entry;->access$700(Lcom/andrew/apollo/cache/DiskLruCache$Entry;)Lcom/andrew/apollo/cache/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 826
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 828
    :cond_0
    :try_start_1
    new-instance v0, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->entry:Lcom/andrew/apollo/cache/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/andrew/apollo/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/andrew/apollo/cache/DiskLruCache$1;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method
