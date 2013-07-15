.class Lcom/andrew/apollo/lastfm/Image$ImageFactory;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Lcom/andrew/apollo/lastfm/ItemFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/lastfm/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/andrew/apollo/lastfm/ItemFactory",
        "<",
        "Lcom/andrew/apollo/lastfm/Image;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/lastfm/Image$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/andrew/apollo/lastfm/Image$ImageFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Lcom/andrew/apollo/lastfm/Image;
    .locals 8
    .parameter "element"

    .prologue
    .line 51
    new-instance v1, Lcom/andrew/apollo/lastfm/Image;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/andrew/apollo/lastfm/Image;-><init>(Lcom/andrew/apollo/lastfm/Image$1;)V

    .line 52
    .local v1, i:Lcom/andrew/apollo/lastfm/Image;
    const-string v6, "url"

    invoke-virtual {p1, v6}, Lcom/andrew/apollo/lastfm/DomElement;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/andrew/apollo/lastfm/Image;->url:Ljava/lang/String;
    invoke-static {v1, v6}, Lcom/andrew/apollo/lastfm/Image;->access$202(Lcom/andrew/apollo/lastfm/Image;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    const-string v6, "sizes"

    invoke-virtual {p1, v6}, Lcom/andrew/apollo/lastfm/DomElement;->getChild(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/DomElement;

    move-result-object v5

    .line 54
    .local v5, sizes:Lcom/andrew/apollo/lastfm/DomElement;
    const-string v6, "size"

    invoke-virtual {v5, v6}, Lcom/andrew/apollo/lastfm/DomElement;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/andrew/apollo/lastfm/DomElement;

    .line 56
    .local v3, image:Lcom/andrew/apollo/lastfm/DomElement;
    const-string v6, "name"

    invoke-virtual {v3, v6}, Lcom/andrew/apollo/lastfm/DomElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, attribute:Ljava/lang/String;
    const/4 v4, 0x0

    .line 58
    .local v4, size:Lcom/andrew/apollo/lastfm/ImageSize;
    if-nez v0, :cond_1

    .line 59
    sget-object v4, Lcom/andrew/apollo/lastfm/ImageSize;->LARGESQUARE:Lcom/andrew/apollo/lastfm/ImageSize;

    .line 67
    :goto_1
    if-eqz v4, :cond_0

    .line 68
    iget-object v6, v1, Lcom/andrew/apollo/lastfm/Image;->imageUrls:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/andrew/apollo/lastfm/DomElement;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_1
    :try_start_0
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/andrew/apollo/lastfm/ImageSize;->valueOf(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/ImageSize;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 71
    .end local v0           #attribute:Ljava/lang/String;
    .end local v3           #image:Lcom/andrew/apollo/lastfm/DomElement;
    .end local v4           #size:Lcom/andrew/apollo/lastfm/ImageSize;
    :cond_2
    return-object v1

    .line 63
    .restart local v0       #attribute:Ljava/lang/String;
    .restart local v3       #image:Lcom/andrew/apollo/lastfm/DomElement;
    .restart local v4       #size:Lcom/andrew/apollo/lastfm/ImageSize;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public bridge synthetic createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/lastfm/Image$ImageFactory;->createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Lcom/andrew/apollo/lastfm/Image;

    move-result-object v0

    return-object v0
.end method
