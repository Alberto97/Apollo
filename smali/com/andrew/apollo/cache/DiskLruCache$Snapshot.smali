.class public final Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/andrew/apollo/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/andrew/apollo/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "sequenceNumber"
    .parameter "ins"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;->this$0:Lcom/andrew/apollo/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-object p2, p0, Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 744
    iput-wide p3, p0, Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 745
    iput-object p5, p0, Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 746
    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/andrew/apollo/cache/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 735
    invoke-direct/range {p0 .. p5}, Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;-><init>(Lcom/andrew/apollo/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 773
    iget-object v0, p0, Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .local v0, arr$:[Ljava/io/InputStream;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 774
    .local v2, in:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/andrew/apollo/cache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    .end local v2           #in:Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter "index"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/andrew/apollo/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method
