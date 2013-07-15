.class public final enum Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;
.super Ljava/lang/Enum;
.source "PagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/adapters/PagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MusicFragments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

.field public static final enum ALBUM:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

.field public static final enum ARTIST:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

.field public static final enum GENRE:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

.field public static final enum PLAYLIST:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

.field public static final enum RECENT:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

.field public static final enum SONG:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;


# instance fields
.field private mFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 172
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    const-string v1, "PLAYLIST"

    const-class v2, Lcom/andrew/apollo/ui/fragments/PlaylistFragment;

    invoke-direct {v0, v1, v4, v2}, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->PLAYLIST:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    .line 176
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    const-string v1, "RECENT"

    const-class v2, Lcom/andrew/apollo/ui/fragments/RecentFragment;

    invoke-direct {v0, v1, v5, v2}, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->RECENT:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    .line 180
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    const-string v1, "ARTIST"

    const-class v2, Lcom/andrew/apollo/ui/fragments/ArtistFragment;

    invoke-direct {v0, v1, v6, v2}, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->ARTIST:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    .line 184
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    const-string v1, "ALBUM"

    const-class v2, Lcom/andrew/apollo/ui/fragments/AlbumFragment;

    invoke-direct {v0, v1, v7, v2}, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->ALBUM:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    .line 188
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    const-string v1, "SONG"

    const-class v2, Lcom/andrew/apollo/ui/fragments/SongFragment;

    invoke-direct {v0, v1, v8, v2}, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->SONG:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    .line 192
    new-instance v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    const-string v1, "GENRE"

    const/4 v2, 0x5

    const-class v3, Lcom/andrew/apollo/ui/fragments/GenreFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->GENRE:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    .line 168
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    sget-object v1, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->PLAYLIST:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    aput-object v1, v0, v4

    sget-object v1, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->RECENT:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    aput-object v1, v0, v5

    sget-object v1, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->ARTIST:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    aput-object v1, v0, v6

    sget-object v1, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->ALBUM:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    aput-object v1, v0, v7

    sget-object v1, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->SONG:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->GENRE:Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    aput-object v2, v0, v1

    sput-object v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->$VALUES:[Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p3, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 202
    iput-object p3, p0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->mFragmentClass:Ljava/lang/Class;

    .line 203
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;
    .locals 1
    .parameter

    .prologue
    .line 168
    const-class v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    return-object v0
.end method

.method public static values()[Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->$VALUES:[Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    invoke-virtual {v0}, [Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;

    return-object v0
.end method


# virtual methods
.method public getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/andrew/apollo/adapters/PagerAdapter$MusicFragments;->mFragmentClass:Ljava/lang/Class;

    return-object v0
.end method
