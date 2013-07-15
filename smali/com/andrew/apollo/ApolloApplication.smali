.class public Lcom/andrew/apollo/ApolloApplication;
.super Landroid/app/Application;
.source "ApolloApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private enableStrictMode()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/andrew/apollo/ApolloApplication;->enableStrictMode()V

    .line 41
    const-string v0, "org.jaudiotagger"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 42
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/andrew/apollo/cache/ImageCache;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/cache/ImageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andrew/apollo/cache/ImageCache;->evictAll()V

    .line 50
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 51
    return-void
.end method
