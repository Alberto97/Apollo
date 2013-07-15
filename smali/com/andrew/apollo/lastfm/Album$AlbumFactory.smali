.class final Lcom/andrew/apollo/lastfm/Album$AlbumFactory;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Lcom/andrew/apollo/lastfm/ItemFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/lastfm/Album;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlbumFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/andrew/apollo/lastfm/ItemFactory",
        "<",
        "Lcom/andrew/apollo/lastfm/Album;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/lastfm/Album$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/andrew/apollo/lastfm/Album$AlbumFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Lcom/andrew/apollo/lastfm/Album;
    .locals 3
    .parameter "element"

    .prologue
    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_1

    move-object v0, v1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :cond_1
    new-instance v0, Lcom/andrew/apollo/lastfm/Album;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/andrew/apollo/lastfm/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/andrew/apollo/lastfm/Album$1;)V

    .line 98
    .local v0, album:Lcom/andrew/apollo/lastfm/Album;
    invoke-static {v0, p1}, Lcom/andrew/apollo/lastfm/MusicEntry;->loadStandardInfo(Lcom/andrew/apollo/lastfm/MusicEntry;Lcom/andrew/apollo/lastfm/DomElement;)V

    .line 99
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lcom/andrew/apollo/lastfm/DomElement;->hasChild(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lcom/andrew/apollo/lastfm/DomElement;->getChild(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/DomElement;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/lastfm/DomElement;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/andrew/apollo/lastfm/Album;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/andrew/apollo/lastfm/Album;->access$202(Lcom/andrew/apollo/lastfm/Album;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    #getter for: Lcom/andrew/apollo/lastfm/Album;->artist:Ljava/lang/String;
    invoke-static {v0}, Lcom/andrew/apollo/lastfm/Album;->access$200(Lcom/andrew/apollo/lastfm/Album;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 102
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lcom/andrew/apollo/lastfm/DomElement;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/andrew/apollo/lastfm/Album;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/andrew/apollo/lastfm/Album;->access$202(Lcom/andrew/apollo/lastfm/Album;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/lastfm/Album$AlbumFactory;->createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Lcom/andrew/apollo/lastfm/Album;

    move-result-object v0

    return-object v0
.end method
