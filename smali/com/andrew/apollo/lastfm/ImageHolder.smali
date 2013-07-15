.class public abstract Lcom/andrew/apollo/lastfm/ImageHolder;
.super Ljava/lang/Object;
.source "ImageHolder.java"


# instance fields
.field protected imageUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/andrew/apollo/lastfm/ImageSize;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/ImageHolder;->imageUrls:Ljava/util/Map;

    return-void
.end method

.method protected static loadImages(Lcom/andrew/apollo/lastfm/ImageHolder;Lcom/andrew/apollo/lastfm/DomElement;)V
    .locals 7
    .parameter "holder"
    .parameter "element"

    .prologue
    .line 65
    const-string v5, "image"

    invoke-virtual {p1, v5}, Lcom/andrew/apollo/lastfm/DomElement;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 66
    .local v3, images:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/andrew/apollo/lastfm/DomElement;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andrew/apollo/lastfm/DomElement;

    .line 67
    .local v2, image:Lcom/andrew/apollo/lastfm/DomElement;
    const-string v5, "size"

    invoke-virtual {v2, v5}, Lcom/andrew/apollo/lastfm/DomElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, attribute:Ljava/lang/String;
    const/4 v4, 0x0

    .line 69
    .local v4, size:Lcom/andrew/apollo/lastfm/ImageSize;
    if-nez v0, :cond_1

    .line 70
    sget-object v4, Lcom/andrew/apollo/lastfm/ImageSize;->LARGESQUARE:Lcom/andrew/apollo/lastfm/ImageSize;

    .line 78
    :goto_1
    if-eqz v4, :cond_0

    .line 79
    iget-object v5, p0, Lcom/andrew/apollo/lastfm/ImageHolder;->imageUrls:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/andrew/apollo/lastfm/DomElement;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_1
    :try_start_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/andrew/apollo/lastfm/ImageSize;->valueOf(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/ImageSize;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 82
    .end local v0           #attribute:Ljava/lang/String;
    .end local v2           #image:Lcom/andrew/apollo/lastfm/DomElement;
    .end local v4           #size:Lcom/andrew/apollo/lastfm/ImageSize;
    :cond_2
    return-void

    .line 74
    .restart local v0       #attribute:Ljava/lang/String;
    .restart local v2       #image:Lcom/andrew/apollo/lastfm/DomElement;
    .restart local v4       #size:Lcom/andrew/apollo/lastfm/ImageSize;
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public getImageURL(Lcom/andrew/apollo/lastfm/ImageSize;)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/ImageHolder;->imageUrls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
