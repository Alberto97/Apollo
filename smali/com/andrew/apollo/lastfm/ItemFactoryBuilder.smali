.class final Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;
.super Ljava/lang/Object;
.source "ItemFactoryBuilder.java"


# static fields
.field private static final INSTANCE:Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;


# instance fields
.field private final factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/andrew/apollo/lastfm/ItemFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;

    invoke-direct {v0}, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;-><init>()V

    sput-object v0, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;->INSTANCE:Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;->factories:Ljava/util/Map;

    .line 43
    const-class v0, Lcom/andrew/apollo/lastfm/Album;

    sget-object v1, Lcom/andrew/apollo/lastfm/Album;->FACTORY:Lcom/andrew/apollo/lastfm/ItemFactory;

    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;->addItemFactory(Ljava/lang/Class;Lcom/andrew/apollo/lastfm/ItemFactory;)V

    .line 44
    const-class v0, Lcom/andrew/apollo/lastfm/Artist;

    sget-object v1, Lcom/andrew/apollo/lastfm/Artist;->FACTORY:Lcom/andrew/apollo/lastfm/ItemFactory;

    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;->addItemFactory(Ljava/lang/Class;Lcom/andrew/apollo/lastfm/ItemFactory;)V

    .line 45
    const-class v0, Lcom/andrew/apollo/lastfm/Image;

    sget-object v1, Lcom/andrew/apollo/lastfm/Image;->FACTORY:Lcom/andrew/apollo/lastfm/ItemFactory;

    invoke-virtual {p0, v0, v1}, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;->addItemFactory(Ljava/lang/Class;Lcom/andrew/apollo/lastfm/ItemFactory;)V

    .line 46
    return-void
.end method

.method public static getFactoryBuilder()Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;->INSTANCE:Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;

    return-object v0
.end method


# virtual methods
.method public addItemFactory(Ljava/lang/Class;Lcom/andrew/apollo/lastfm/ItemFactory;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/andrew/apollo/lastfm/ItemFactory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, factory:Lcom/andrew/apollo/lastfm/ItemFactory;,"Lcom/andrew/apollo/lastfm/ItemFactory<TT;>;"
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;->factories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/ItemFactory;
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
    .line 75
    .local p1, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/ItemFactoryBuilder;->factories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/lastfm/ItemFactory;

    return-object v0
.end method
