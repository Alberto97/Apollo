.class Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/cache/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/andrew/apollo/cache/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "out"

    .prologue
    .line 867
    iput-object p1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/andrew/apollo/cache/DiskLruCache$Editor;

    .line 868
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 869
    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/andrew/apollo/cache/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 866
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 892
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_0
    return-void

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/andrew/apollo/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/andrew/apollo/cache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->access$2002(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 901
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_0
    return-void

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/andrew/apollo/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/andrew/apollo/cache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->access$2002(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"

    .prologue
    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/andrew/apollo/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/andrew/apollo/cache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->access$2002(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 883
    :try_start_0
    iget-object v1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    return-void

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/andrew/apollo/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/andrew/apollo/cache/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/andrew/apollo/cache/DiskLruCache$Editor;->access$2002(Lcom/andrew/apollo/cache/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
