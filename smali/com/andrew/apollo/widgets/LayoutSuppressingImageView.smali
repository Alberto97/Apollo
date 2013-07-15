.class public Lcom/andrew/apollo/widgets/LayoutSuppressingImageView;
.super Landroid/widget/ImageView;
.source "LayoutSuppressingImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/andrew/apollo/widgets/LayoutSuppressingImageView;->forceLayout()V

    .line 40
    return-void
.end method
