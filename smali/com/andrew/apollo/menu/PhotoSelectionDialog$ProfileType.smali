.class public final enum Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;
.super Ljava/lang/Enum;
.source "PhotoSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/menu/PhotoSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

.field public static final enum ALBUM:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

.field public static final enum ARTIST:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

.field public static final enum OTHER:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    new-instance v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->ARTIST:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    new-instance v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v3}, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->ALBUM:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    new-instance v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->OTHER:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    sget-object v1, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->ARTIST:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->ALBUM:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->OTHER:Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->$VALUES:[Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;
    .locals 1
    .parameter

    .prologue
    .line 162
    const-class v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    return-object v0
.end method

.method public static values()[Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->$VALUES:[Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    invoke-virtual {v0}, [Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/andrew/apollo/menu/PhotoSelectionDialog$ProfileType;

    return-object v0
.end method
