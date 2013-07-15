.class public abstract Lcom/andrew/apollo/lastfm/MusicEntry;
.super Lcom/andrew/apollo/lastfm/ImageHolder;
.source "MusicEntry.java"


# instance fields
.field protected name:Ljava/lang/String;

.field protected url:Ljava/lang/String;

.field private wikiSummary:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "url"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/andrew/apollo/lastfm/ImageHolder;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/andrew/apollo/lastfm/MusicEntry;->name:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/andrew/apollo/lastfm/MusicEntry;->url:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected static loadStandardInfo(Lcom/andrew/apollo/lastfm/MusicEntry;Lcom/andrew/apollo/lastfm/DomElement;)V
    .locals 2
    .parameter "entry"
    .parameter "element"

    .prologue
    .line 81
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/andrew/apollo/lastfm/DomElement;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/lastfm/MusicEntry;->name:Ljava/lang/String;

    .line 82
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/andrew/apollo/lastfm/DomElement;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/lastfm/MusicEntry;->url:Ljava/lang/String;

    .line 84
    const-string v1, "bio"

    invoke-virtual {p1, v1}, Lcom/andrew/apollo/lastfm/DomElement;->getChild(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/DomElement;

    move-result-object v0

    .line 85
    .local v0, wiki:Lcom/andrew/apollo/lastfm/DomElement;
    if-nez v0, :cond_0

    .line 86
    const-string v1, "wiki"

    invoke-virtual {p1, v1}, Lcom/andrew/apollo/lastfm/DomElement;->getChild(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/DomElement;

    move-result-object v0

    .line 88
    :cond_0
    if-eqz v0, :cond_1

    .line 89
    const-string v1, "summary"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/lastfm/DomElement;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/lastfm/MusicEntry;->wikiSummary:Ljava/lang/String;

    .line 92
    :cond_1
    invoke-static {p0, p1}, Lcom/andrew/apollo/lastfm/ImageHolder;->loadImages(Lcom/andrew/apollo/lastfm/ImageHolder;Lcom/andrew/apollo/lastfm/DomElement;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/MusicEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/MusicEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/MusicEntry;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
