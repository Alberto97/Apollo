.class final Lcom/andrew/apollo/MusicPlaybackService$Shuffler;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Shuffler"
.end annotation


# instance fields
.field private final mHistoryOfNumbers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevious:I

.field private final mPreviousNumbers:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2330
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    .line 2332
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    .line 2334
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mRandom:Ljava/util/Random;

    .line 2343
    return-void
.end method

.method private cleanUpHistory()V
    .locals 3

    .prologue
    .line 2367
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 2368
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2369
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 2368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2372
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public nextInt(I)I
    .locals 3
    .parameter "interval"

    .prologue
    .line 2352
    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 2354
    .local v0, next:I
    iget v1, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mPrevious:I

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2355
    :cond_1
    iput v0, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mPrevious:I

    .line 2356
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mPrevious:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2357
    iget-object v1, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    iget v2, p0, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->mPrevious:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2358
    invoke-direct {p0}, Lcom/andrew/apollo/MusicPlaybackService$Shuffler;->cleanUpHistory()V

    .line 2359
    return v0
.end method
