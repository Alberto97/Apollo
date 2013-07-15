.class public Lcom/andrew/apollo/widgets/theme/HoloSelector;
.super Landroid/graphics/drawable/StateListDrawable;
.source "HoloSelector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 54
    new-instance v0, Lcom/andrew/apollo/utils/ThemeUtils;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/utils/ThemeUtils;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, resources:Lcom/andrew/apollo/utils/ThemeUtils;
    const-string v2, "holo_selector"

    invoke-virtual {v0, v2}, Lcom/andrew/apollo/utils/ThemeUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, themeColor:I
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    invoke-static {v1}, Lcom/andrew/apollo/widgets/theme/HoloSelector;->makeColorDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/andrew/apollo/widgets/theme/HoloSelector;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 61
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-static {v1}, Lcom/andrew/apollo/widgets/theme/HoloSelector;->makeColorDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/andrew/apollo/widgets/theme/HoloSelector;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 65
    new-array v2, v4, [I

    invoke-static {v4}, Lcom/andrew/apollo/widgets/theme/HoloSelector;->makeColorDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/andrew/apollo/widgets/theme/HoloSelector;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 66
    const/16 v2, 0x190

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/widgets/theme/HoloSelector;->setExitFadeDuration(I)V

    .line 67
    return-void
.end method

.method private static final makeColorDrawable(I)Landroid/graphics/drawable/ColorDrawable;
    .locals 2
    .parameter "color"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method
