.class public Lcom/andrew/apollo/widgets/theme/ThemeableTitlePageIndicator;
.super Lcom/viewpagerindicator/TitlePageIndicator;
.source "ThemeableTitlePageIndicator.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/viewpagerindicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, resources:Lcom/andrew/apollo/utils/ThemeUtils;
    const-string v1, "tpi_background"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/widgets/theme/ThemeableTitlePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    const-string v1, "tpi_selected_text_color"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/widgets/theme/ThemeableTitlePageIndicator;->setSelectedColor(I)V

    .line 63
    const-string v1, "tpi_unselected_text_color"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/widgets/theme/ThemeableTitlePageIndicator;->setTextColor(I)V

    .line 65
    const-string v1, "tpi_footer_color"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/ThemeUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/widgets/theme/ThemeableTitlePageIndicator;->setFooterColor(I)V

    .line 66
    return-void
.end method
