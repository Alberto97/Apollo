.class public final Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/utils/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceToken"
.end annotation


# instance fields
.field public mWrappedContext:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/andrew/apollo/utils/MusicUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 164
    return-void
.end method
