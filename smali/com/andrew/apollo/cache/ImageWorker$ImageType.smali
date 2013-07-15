.class public final enum Lcom/andrew/apollo/cache/ImageWorker$ImageType;
.super Ljava/lang/Enum;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/cache/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/andrew/apollo/cache/ImageWorker$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/andrew/apollo/cache/ImageWorker$ImageType;

.field public static final enum ALBUM:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

.field public static final enum ARTIST:Lcom/andrew/apollo/cache/ImageWorker$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 431
    new-instance v0, Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/cache/ImageWorker$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->ARTIST:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    new-instance v0, Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v3}, Lcom/andrew/apollo/cache/ImageWorker$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->ALBUM:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    .line 430
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    sget-object v1, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->ARTIST:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->ALBUM:Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->$VALUES:[Lcom/andrew/apollo/cache/ImageWorker$ImageType;

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
    .line 430
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/andrew/apollo/cache/ImageWorker$ImageType;
    .locals 1
    .parameter

    .prologue
    .line 430
    const-class v0, Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/andrew/apollo/cache/ImageWorker$ImageType;
    .locals 1

    .prologue
    .line 430
    sget-object v0, Lcom/andrew/apollo/cache/ImageWorker$ImageType;->$VALUES:[Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    invoke-virtual {v0}, [Lcom/andrew/apollo/cache/ImageWorker$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/andrew/apollo/cache/ImageWorker$ImageType;

    return-object v0
.end method
