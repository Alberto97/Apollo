.class final Lcom/andrew/apollo/lastfm/Artist$ArtistFactory;
.super Ljava/lang/Object;
.source "Artist.java"

# interfaces
.implements Lcom/andrew/apollo/lastfm/ItemFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/lastfm/Artist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArtistFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/andrew/apollo/lastfm/ItemFactory",
        "<",
        "Lcom/andrew/apollo/lastfm/Artist;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/lastfm/Artist$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/andrew/apollo/lastfm/Artist$ArtistFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Lcom/andrew/apollo/lastfm/Artist;
    .locals 2
    .parameter "element"

    .prologue
    const/4 v1, 0x0

    .line 152
    if-nez p1, :cond_0

    move-object v0, v1

    .line 157
    :goto_0
    return-object v0

    .line 155
    :cond_0
    new-instance v0, Lcom/andrew/apollo/lastfm/Artist;

    invoke-direct {v0, v1, v1}, Lcom/andrew/apollo/lastfm/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v0, artist:Lcom/andrew/apollo/lastfm/Artist;
    invoke-static {v0, p1}, Lcom/andrew/apollo/lastfm/MusicEntry;->loadStandardInfo(Lcom/andrew/apollo/lastfm/MusicEntry;Lcom/andrew/apollo/lastfm/DomElement;)V

    goto :goto_0
.end method

.method public bridge synthetic createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/lastfm/Artist$ArtistFactory;->createItemFromElement(Lcom/andrew/apollo/lastfm/DomElement;)Lcom/andrew/apollo/lastfm/Artist;

    move-result-object v0

    return-object v0
.end method
