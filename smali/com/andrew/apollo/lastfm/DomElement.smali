.class public Lcom/andrew/apollo/lastfm/DomElement;
.super Ljava/lang/Object;
.source "DomElement.java"


# instance fields
.field private final e:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "elem"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/andrew/apollo/lastfm/DomElement;->e:Lorg/w3c/dom/Element;

    .line 47
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/lastfm/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChild(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/DomElement;
    .locals 7
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-object v5, p0, Lcom/andrew/apollo/lastfm/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v5, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 117
    .local v3, list:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-nez v5, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v4

    .line 120
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, j:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 121
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 122
    .local v1, item:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    iget-object v6, p0, Lcom/andrew/apollo/lastfm/DomElement;->e:Lorg/w3c/dom/Element;

    if-ne v5, v6, :cond_2

    .line 123
    new-instance v4, Lcom/andrew/apollo/lastfm/DomElement;

    check-cast v1, Lorg/w3c/dom/Element;

    .end local v1           #item:Lorg/w3c/dom/Node;
    invoke-direct {v4, v1}, Lcom/andrew/apollo/lastfm/DomElement;-><init>(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 120
    .restart local v1       #item:Lorg/w3c/dom/Node;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getChildText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/lastfm/DomElement;->getChild(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/DomElement;

    move-result-object v0

    .line 139
    .local v0, child:Lcom/andrew/apollo/lastfm/DomElement;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/andrew/apollo/lastfm/DomElement;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/lastfm/DomElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/lastfm/DomElement;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/lastfm/DomElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, l:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/lastfm/DomElement;>;"
    iget-object v4, p0, Lcom/andrew/apollo/lastfm/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v4, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 158
    .local v2, list:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 159
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 160
    .local v3, node:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/lastfm/DomElement;->e:Lorg/w3c/dom/Element;

    if-ne v4, v5, :cond_0

    .line 161
    new-instance v4, Lcom/andrew/apollo/lastfm/DomElement;

    check-cast v3, Lorg/w3c/dom/Element;

    .end local v3           #node:Lorg/w3c/dom/Node;
    invoke-direct {v4, v3}, Lcom/andrew/apollo/lastfm/DomElement;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    return-object v1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    .line 98
    iget-object v4, p0, Lcom/andrew/apollo/lastfm/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v4, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 99
    .local v3, list:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, j:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 100
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 101
    .local v1, item:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/lastfm/DomElement;->e:Lorg/w3c/dom/Element;

    if-ne v4, v5, :cond_0

    .line 102
    const/4 v4, 0x1

    .line 105
    .end local v1           #item:Lorg/w3c/dom/Node;
    :goto_1
    return v4

    .line 99
    .restart local v1       #item:Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v1           #item:Lorg/w3c/dom/Node;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
