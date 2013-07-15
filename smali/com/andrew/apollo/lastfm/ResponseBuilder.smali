.class public final Lcom/andrew/apollo/lastfm/ResponseBuilder;
.super Ljava/lang/Object;
.source "ResponseBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static buildCollection(Lcom/andrew/apollo/lastfm/DomElement;Lcom/andrew/apollo/lastfm/ItemFactory;)Ljava/util/Collection;
    .locals 5
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/DomElement;",
            "Lcom/andrew/apollo/lastfm/ItemFactory",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, factory:Lcom/andrew/apollo/lastfm/ItemFactory;,"Lcom/andrew/apollo/lastfm/ItemFactory<TT;>;"
    if-nez p0, :cond_1

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 100
    :cond_0
    return-object v3

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/DomElement;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, children:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/andrew/apollo/lastfm/DomElement;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v3, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/lastfm/DomElement;

    .line 98
    .local v0, child:Lcom/andrew/apollo/lastfm/DomElement;
    invoke-interface {p1, v0}, Lcom/andrew/apollo/lastfm/ItemFactory;->createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static buildItem(Lcom/andrew/apollo/lastfm/DomElement;Lcom/andrew/apollo/lastfm/ItemFactory;)Ljava/lang/Object;
    .locals 1
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/DomElement;",
            "Lcom/andrew/apollo/lastfm/ItemFactory",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, factory:Lcom/andrew/apollo/lastfm/ItemFactory;,"Lcom/andrew/apollo/lastfm/ItemFactory<TT;>;"
    invoke-interface {p1, p0}, Lcom/andrew/apollo/lastfm/ItemFactory;->createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static buildItem(Lcom/andrew/apollo/lastfm/Result;Lcom/andrew/apollo/lastfm/ItemFactory;)Ljava/lang/Object;
    .locals 1
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/Result;",
            "Lcom/andrew/apollo/lastfm/ItemFactory",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, factory:Lcom/andrew/apollo/lastfm/ItemFactory;,"Lcom/andrew/apollo/lastfm/ItemFactory<TT;>;"
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/Result;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/Result;->getContentElement()Lcom/andrew/apollo/lastfm/DomElement;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/andrew/apollo/lastfm/ResponseBuilder;->buildItem(Lcom/andrew/apollo/lastfm/DomElement;Lcom/andrew/apollo/lastfm/ItemFactory;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildItem(Lcom/andrew/apollo/lastfm/Result;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/Result;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/andrew/apollo/lastfm/ResponseBuilder;->getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/ItemFactory;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/andrew/apollo/lastfm/ResponseBuilder;->buildItem(Lcom/andrew/apollo/lastfm/Result;Lcom/andrew/apollo/lastfm/ItemFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static buildPaginatedResult(Lcom/andrew/apollo/lastfm/DomElement;Lcom/andrew/apollo/lastfm/DomElement;Lcom/andrew/apollo/lastfm/ItemFactory;)Lcom/andrew/apollo/lastfm/PaginatedResult;
    .locals 5
    .parameter "contentElement"
    .parameter "childElement"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/DomElement;",
            "Lcom/andrew/apollo/lastfm/DomElement;",
            "Lcom/andrew/apollo/lastfm/ItemFactory",
            "<TT;>;)",
            "Lcom/andrew/apollo/lastfm/PaginatedResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, factory:Lcom/andrew/apollo/lastfm/ItemFactory;,"Lcom/andrew/apollo/lastfm/ItemFactory<TT;>;"
    invoke-static {p1, p2}, Lcom/andrew/apollo/lastfm/ResponseBuilder;->buildCollection(Lcom/andrew/apollo/lastfm/DomElement;Lcom/andrew/apollo/lastfm/ItemFactory;)Ljava/util/Collection;

    move-result-object v0

    .line 156
    .local v0, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const-string v4, "totalPages"

    invoke-virtual {p0, v4}, Lcom/andrew/apollo/lastfm/DomElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, totalPagesAttribute:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 158
    const-string v4, "totalpages"

    invoke-virtual {p0, v4}, Lcom/andrew/apollo/lastfm/DomElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    :cond_0
    const-string v4, "page"

    invoke-virtual {p0, v4}, Lcom/andrew/apollo/lastfm/DomElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, page:I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 164
    .local v2, totalPages:I
    new-instance v4, Lcom/andrew/apollo/lastfm/PaginatedResult;

    invoke-direct {v4, v1, v2, v0}, Lcom/andrew/apollo/lastfm/PaginatedResult;-><init>(IILjava/util/Collection;)V

    return-object v4
.end method

.method public static buildPaginatedResult(Lcom/andrew/apollo/lastfm/Result;Lcom/andrew/apollo/lastfm/ItemFactory;)Lcom/andrew/apollo/lastfm/PaginatedResult;
    .locals 4
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/Result;",
            "Lcom/andrew/apollo/lastfm/ItemFactory",
            "<TT;>;)",
            "Lcom/andrew/apollo/lastfm/PaginatedResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, factory:Lcom/andrew/apollo/lastfm/ItemFactory;,"Lcom/andrew/apollo/lastfm/ItemFactory<TT;>;"
    const/4 v3, 0x0

    .line 122
    if-eqz p0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/Result;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Lcom/andrew/apollo/lastfm/PaginatedResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v3, v3, v2}, Lcom/andrew/apollo/lastfm/PaginatedResult;-><init>(IILjava/util/Collection;)V

    .line 130
    :goto_0
    return-object v1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/Result;->getContentElement()Lcom/andrew/apollo/lastfm/DomElement;

    move-result-object v0

    .line 128
    .local v0, contentElement:Lcom/andrew/apollo/lastfm/DomElement;
    invoke-static {v0, v0, p1}, Lcom/andrew/apollo/lastfm/ResponseBuilder;->buildPaginatedResult(Lcom/andrew/apollo/lastfm/DomElement;Lcom/andrew/apollo/lastfm/DomElement;Lcom/andrew/apollo/lastfm/ItemFactory;)Lcom/andrew/apollo/lastfm/PaginatedResult;

    move-result-object v1

    goto :goto_0

    .line 130
    .end local v0           #contentElement:Lcom/andrew/apollo/lastfm/DomElement;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static buildPaginatedResult(Lcom/andrew/apollo/lastfm/Result;Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/PaginatedResult;
    .locals 1
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/Result;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/andrew/apollo/lastfm/PaginatedResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/andrew/apollo/lastfm/ResponseBuilder;->getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/ItemFactory;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/andrew/apollo/lastfm/ResponseBuilder;->buildPaginatedResult(Lcom/andrew/apollo/lastfm/Result;Lcom/andrew/apollo/lastfm/ItemFactory;)Lcom/andrew/apollo/lastfm/PaginatedResult;

    move-result-object v0

    return-object v0
.end method

.method private static getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/ItemFactory;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/andrew/apollo/lastfm/ItemFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;->getFactoryBuilder()Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;->getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/ItemFactory;

    move-result-object v0

    return-object v0
.end method
