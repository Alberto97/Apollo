.class public Lcom/andrew/apollo/lastfm/Album;
.super Lcom/andrew/apollo/lastfm/MusicEntry;
.source "Album.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/lastfm/Album$1;,
        Lcom/andrew/apollo/lastfm/Album$AlbumFactory;
    }
.end annotation


# static fields
.field protected static final FACTORY:Lcom/andrew/apollo/lastfm/ItemFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/andrew/apollo/lastfm/ItemFactory",
            "<",
            "Lcom/andrew/apollo/lastfm/Album;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artist:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/andrew/apollo/lastfm/Album$AlbumFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/andrew/apollo/lastfm/Album$AlbumFactory;-><init>(Lcom/andrew/apollo/lastfm/Album$1;)V

    sput-object v0, Lcom/andrew/apollo/lastfm/Album;->FACTORY:Lcom/andrew/apollo/lastfm/ItemFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "url"
    .parameter "artist"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/lastfm/MusicEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object p3, p0, Lcom/andrew/apollo/lastfm/Album;->artist:Ljava/lang/String;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/andrew/apollo/lastfm/Album$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/andrew/apollo/lastfm/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/andrew/apollo/lastfm/Album;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/Album;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/andrew/apollo/lastfm/Album;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/andrew/apollo/lastfm/Album;->artist:Ljava/lang/String;

    return-object p1
.end method

.method public static final getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/Album;
    .locals 2
    .parameter "context"
    .parameter "artist"
    .parameter "albumOrMbid"

    .prologue
    .line 62
    const/4 v0, 0x0

    const-string v1, "0bec3f7ec1f914d7c960c12a916c8fb3"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/andrew/apollo/lastfm/Album;->getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/Album;

    move-result-object v0

    return-object v0
.end method

.method public static final getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/Album;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    const-string v1, "artist"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "album"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "username"

    invoke-static {v0, v1, p3}, Lcom/andrew/apollo/lastfm/MapUtilities;->nullSafePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcom/andrew/apollo/lastfm/Caller;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/lastfm/Caller;

    move-result-object v1

    const-string v2, "album.getInfo"

    invoke-virtual {v1, v2, p4, v0}, Lcom/andrew/apollo/lastfm/Caller;->call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/andrew/apollo/lastfm/Result;

    move-result-object v0

    .line 84
    const-class v1, Lcom/andrew/apollo/lastfm/Album;

    invoke-static {v0, v1}, Lcom/andrew/apollo/lastfm/ResponseBuilder;->buildItem(Lcom/andrew/apollo/lastfm/Result;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/lastfm/Album;

    return-object v0
.end method
