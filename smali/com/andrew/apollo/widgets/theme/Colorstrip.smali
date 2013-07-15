.class public Lcom/andrew/apollo/widgets/theme/Colorstrip;
.super Landroid/view/View;
.source "Colorstrip.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, resources:Lcom/andrew/apollo/utils/ThemeUtils;
    const-string v1, "colorstrip"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/widgets/theme/Colorstrip;->setBackgroundColor(I)V

    .line 43
    return-void
.end method
