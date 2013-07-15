.class public Lcom/devspark/appmsg/AppMsg$Style;
.super Ljava/lang/Object;
.source "AppMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devspark/appmsg/AppMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Style"
.end annotation


# instance fields
.field private final background:I

.field private final duration:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "duration"
    .parameter "resId"

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Lcom/devspark/appmsg/AppMsg$Style;->duration:I

    .line 284
    iput p2, p0, Lcom/devspark/appmsg/AppMsg$Style;->background:I

    .line 285
    return-void
.end method

.method static synthetic access$000(Lcom/devspark/appmsg/AppMsg$Style;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 268
    iget v0, p0, Lcom/devspark/appmsg/AppMsg$Style;->background:I

    return v0
.end method

.method static synthetic access$100(Lcom/devspark/appmsg/AppMsg$Style;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 268
    iget v0, p0, Lcom/devspark/appmsg/AppMsg$Style;->duration:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 303
    instance-of v2, p1, Lcom/devspark/appmsg/AppMsg$Style;

    if-nez v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 306
    check-cast v0, Lcom/devspark/appmsg/AppMsg$Style;

    .line 307
    .local v0, style:Lcom/devspark/appmsg/AppMsg$Style;
    iget v2, v0, Lcom/devspark/appmsg/AppMsg$Style;->duration:I

    iget v3, p0, Lcom/devspark/appmsg/AppMsg$Style;->duration:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/devspark/appmsg/AppMsg$Style;->background:I

    iget v3, p0, Lcom/devspark/appmsg/AppMsg$Style;->background:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
