.class public final enum Lcom/andrew/apollo/lastfm/ImageSize;
.super Ljava/lang/Enum;
.source "ImageSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/andrew/apollo/lastfm/ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/andrew/apollo/lastfm/ImageSize;

.field public static final enum EXTRALARGE:Lcom/andrew/apollo/lastfm/ImageSize;

.field public static final enum LARGE:Lcom/andrew/apollo/lastfm/ImageSize;

.field public static final enum LARGESQUARE:Lcom/andrew/apollo/lastfm/ImageSize;

.field public static final enum ORIGINAL:Lcom/andrew/apollo/lastfm/ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/andrew/apollo/lastfm/ImageSize;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/lastfm/ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/lastfm/ImageSize;->LARGE:Lcom/andrew/apollo/lastfm/ImageSize;

    new-instance v0, Lcom/andrew/apollo/lastfm/ImageSize;

    const-string v1, "LARGESQUARE"

    invoke-direct {v0, v1, v3}, Lcom/andrew/apollo/lastfm/ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/lastfm/ImageSize;->LARGESQUARE:Lcom/andrew/apollo/lastfm/ImageSize;

    new-instance v0, Lcom/andrew/apollo/lastfm/ImageSize;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v4}, Lcom/andrew/apollo/lastfm/ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/lastfm/ImageSize;->ORIGINAL:Lcom/andrew/apollo/lastfm/ImageSize;

    new-instance v0, Lcom/andrew/apollo/lastfm/ImageSize;

    const-string v1, "EXTRALARGE"

    invoke-direct {v0, v1, v5}, Lcom/andrew/apollo/lastfm/ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/lastfm/ImageSize;->EXTRALARGE:Lcom/andrew/apollo/lastfm/ImageSize;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/andrew/apollo/lastfm/ImageSize;

    sget-object v1, Lcom/andrew/apollo/lastfm/ImageSize;->LARGE:Lcom/andrew/apollo/lastfm/ImageSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/andrew/apollo/lastfm/ImageSize;->LARGESQUARE:Lcom/andrew/apollo/lastfm/ImageSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/andrew/apollo/lastfm/ImageSize;->ORIGINAL:Lcom/andrew/apollo/lastfm/ImageSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/andrew/apollo/lastfm/ImageSize;->EXTRALARGE:Lcom/andrew/apollo/lastfm/ImageSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/andrew/apollo/lastfm/ImageSize;->$VALUES:[Lcom/andrew/apollo/lastfm/ImageSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/ImageSize;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/andrew/apollo/lastfm/ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/lastfm/ImageSize;

    return-object v0
.end method

.method public static values()[Lcom/andrew/apollo/lastfm/ImageSize;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/andrew/apollo/lastfm/ImageSize;->$VALUES:[Lcom/andrew/apollo/lastfm/ImageSize;

    invoke-virtual {v0}, [Lcom/andrew/apollo/lastfm/ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/andrew/apollo/lastfm/ImageSize;

    return-object v0
.end method
