.class public Lcom/andrew/apollo/lastfm/Image;
.super Lcom/andrew/apollo/lastfm/ImageHolder;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/lastfm/Image$1;,
        Lcom/andrew/apollo/lastfm/Image$ImageFactory;
    }
.end annotation


# static fields
.field static final FACTORY:Lcom/andrew/apollo/lastfm/ItemFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/andrew/apollo/lastfm/ItemFactory",
            "<",
            "Lcom/andrew/apollo/lastfm/Image;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/andrew/apollo/lastfm/Image$ImageFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/andrew/apollo/lastfm/Image$ImageFactory;-><init>(Lcom/andrew/apollo/lastfm/Image$1;)V

    sput-object v0, Lcom/andrew/apollo/lastfm/Image;->FACTORY:Lcom/andrew/apollo/lastfm/ItemFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/andrew/apollo/lastfm/ImageHolder;-><init>()V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/lastfm/Image$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/andrew/apollo/lastfm/Image;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/andrew/apollo/lastfm/Image;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/andrew/apollo/lastfm/Image;->url:Ljava/lang/String;

    return-object p1
.end method
