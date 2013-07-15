.class public Lcom/andrew/apollo/lastfm/PaginatedResult;
.super Ljava/lang/Object;
.source "PaginatedResult.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final page:I

.field public final pageResults:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final totalPages:I


# direct methods
.method constructor <init>(IILjava/util/Collection;)V
    .locals 0
    .parameter "page"
    .parameter "totalPages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/andrew/apollo/lastfm/PaginatedResult;,"Lcom/andrew/apollo/lastfm/PaginatedResult<TT;>;"
    .local p3, pageResults:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/andrew/apollo/lastfm/PaginatedResult;->page:I

    .line 50
    iput p2, p0, Lcom/andrew/apollo/lastfm/PaginatedResult;->totalPages:I

    .line 51
    iput-object p3, p0, Lcom/andrew/apollo/lastfm/PaginatedResult;->pageResults:Ljava/util/Collection;

    .line 52
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/andrew/apollo/lastfm/PaginatedResult;,"Lcom/andrew/apollo/lastfm/PaginatedResult<TT;>;"
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/PaginatedResult;->pageResults:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
