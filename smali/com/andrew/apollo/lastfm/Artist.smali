.class public Lcom/andrew/apollo/lastfm/Artist;
.super Lcom/andrew/apollo/lastfm/MusicEntry;
.source "Artist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/lastfm/Artist$1;,
        Lcom/andrew/apollo/lastfm/Artist$ArtistFactory;
    }
.end annotation


# static fields
.field protected static final FACTORY:Lcom/andrew/apollo/lastfm/ItemFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/andrew/apollo/lastfm/ItemFactory",
            "<",
            "Lcom/andrew/apollo/lastfm/Artist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/andrew/apollo/lastfm/Artist$ArtistFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/andrew/apollo/lastfm/Artist$ArtistFactory;-><init>(Lcom/andrew/apollo/lastfm/Artist$1;)V

    sput-object v0, Lcom/andrew/apollo/lastfm/Artist;->FACTORY:Lcom/andrew/apollo/lastfm/ItemFactory;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "url"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/lastfm/MusicEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static final getCorrection(Landroid/content/Context;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/Artist;
    .locals 11
    .parameter "context"
    .parameter "artist"

    .prologue
    const/4 v5, 0x0

    .line 92
    const/4 v3, 0x0

    .line 94
    .local v3, result:Lcom/andrew/apollo/lastfm/Result;
    :try_start_0
    invoke-static {p0}, Lcom/andrew/apollo/lastfm/Caller;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/lastfm/Caller;

    move-result-object v4

    const-string v6, "artist.getCorrection"

    const-string v7, "0bec3f7ec1f914d7c960c12a916c8fb3"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "artist"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v4, v6, v7, v8}, Lcom/andrew/apollo/lastfm/Caller;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/andrew/apollo/lastfm/Result;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lcom/andrew/apollo/lastfm/Result;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v5

    .line 106
    :goto_0
    return-object v4

    .line 99
    :cond_0
    invoke-virtual {v3}, Lcom/andrew/apollo/lastfm/Result;->getContentElement()Lcom/andrew/apollo/lastfm/DomElement;

    move-result-object v4

    const-string v6, "correction"

    invoke-virtual {v4, v6}, Lcom/andrew/apollo/lastfm/DomElement;->getChild(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/DomElement;

    move-result-object v1

    .line 100
    .local v1, correctionElement:Lcom/andrew/apollo/lastfm/DomElement;
    if-nez v1, :cond_1

    .line 101
    new-instance v4, Lcom/andrew/apollo/lastfm/Artist;

    const/4 v6, 0x0

    invoke-direct {v4, p1, v6}, Lcom/andrew/apollo/lastfm/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v1           #correctionElement:Lcom/andrew/apollo/lastfm/DomElement;
    :catch_0
    move-exception v2

    .local v2, ignored:Ljava/lang/Exception;
    move-object v4, v5

    .line 106
    goto :goto_0

    .line 103
    .end local v2           #ignored:Ljava/lang/Exception;
    .restart local v1       #correctionElement:Lcom/andrew/apollo/lastfm/DomElement;
    :cond_1
    const-string v4, "artist"

    invoke-virtual {v1, v4}, Lcom/andrew/apollo/lastfm/DomElement;->getChild(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/DomElement;

    move-result-object v0

    .line 104
    .local v0, artistElem:Lcom/andrew/apollo/lastfm/DomElement;
    sget-object v4, Lcom/andrew/apollo/lastfm/Artist;->FACTORY:Lcom/andrew/apollo/lastfm/ItemFactory;

    invoke-interface {v4, v0}, Lcom/andrew/apollo/lastfm/ItemFactory;->createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/andrew/apollo/lastfm/Artist;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static final getImages(Landroid/content/Context;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/PaginatedResult;
    .locals 2
    .parameter "context"
    .parameter "artistOrMbid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/andrew/apollo/lastfm/PaginatedResult",
            "<",
            "Lcom/andrew/apollo/lastfm/Image;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 118
    const-string v0, "0bec3f7ec1f914d7c960c12a916c8fb3"

    invoke-static {p0, p1, v1, v1, v0}, Lcom/andrew/apollo/lastfm/Artist;->getImages(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Lcom/andrew/apollo/lastfm/PaginatedResult;

    move-result-object v0

    return-object v0
.end method

.method public static final getImages(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Lcom/andrew/apollo/lastfm/PaginatedResult;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/andrew/apollo/lastfm/PaginatedResult",
            "<",
            "Lcom/andrew/apollo/lastfm/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 133
    const-string v1, "artist"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "page"

    invoke-static {v0, v1, p2}, Lcom/andrew/apollo/lastfm/MapUtilities;->nullSafePut(Ljava/util/Map;Ljava/lang/String;I)V

    .line 135
    const-string v1, "limit"

    invoke-static {v0, v1, p3}, Lcom/andrew/apollo/lastfm/MapUtilities;->nullSafePut(Ljava/util/Map;Ljava/lang/String;I)V

    .line 138
    :try_start_0
    invoke-static {p0}, Lcom/andrew/apollo/lastfm/Caller;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/lastfm/Caller;

    move-result-object v1

    const-string v2, "artist.getImages"

    invoke-virtual {v1, v2, p4, v0}, Lcom/andrew/apollo/lastfm/Caller;->call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/andrew/apollo/lastfm/Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    const-class v1, Lcom/andrew/apollo/lastfm/Image;

    invoke-static {v0, v1}, Lcom/andrew/apollo/lastfm/ResponseBuilder;->buildPaginatedResult(Lcom/andrew/apollo/lastfm/Result;Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/PaginatedResult;

    move-result-object v0

    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method
