.class public Lcom/andrew/apollo/widgets/theme/ThemeableTextView;
.super Landroid/widget/TextView;
.source "ThemeableTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v1, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v1, p1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    .line 45
    .local v1, resources:Lcom/andrew/apollo/utils/ThemeUtils;
    sget-object v3, Lcom/andrew/apollo/R$styleable;->ThemeableTextView:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 48
    .local v2, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, resourceName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    invoke-virtual {v1, v0}, Lcom/andrew/apollo/utils/ThemeUtils;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/andrew/apollo/widgets/theme/ThemeableTextView;->setTextColor(I)V

    .line 55
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method
