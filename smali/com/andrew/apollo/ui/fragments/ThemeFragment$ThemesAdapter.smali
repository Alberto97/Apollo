.class Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ThemeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/ui/fragments/ThemeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:[Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;

.field private final mLayoutID:I

.field final synthetic this$0:Lcom/andrew/apollo/ui/fragments/ThemeFragment;


# direct methods
.method public constructor <init>(Lcom/andrew/apollo/ui/fragments/ThemeFragment;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layoutID"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->this$0:Lcom/andrew/apollo/ui/fragments/ThemeFragment;

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 229
    iput p3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->mLayoutID:I

    .line 231
    invoke-direct {p0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->buildCache()V

    .line 232
    return-void
.end method

.method private buildCache()V
    .locals 3

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->getCount()I

    move-result v1

    new-array v1, v1, [Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;

    iput-object v1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->mData:[Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;

    .line 291
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->mData:[Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;

    new-instance v2, Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;

    invoke-direct {v2}, Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;-><init>()V

    aput-object v2, v1, v0

    .line 295
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->mData:[Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->this$0:Lcom/andrew/apollo/ui/fragments/ThemeFragment;

    #getter for: Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mEntries:[Ljava/lang/String;
    invoke-static {v2}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->access$000(Lcom/andrew/apollo/ui/fragments/ThemeFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;->mName:Ljava/lang/String;

    .line 297
    iget-object v1, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->mData:[Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->this$0:Lcom/andrew/apollo/ui/fragments/ThemeFragment;

    #getter for: Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mThemePreview:[Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->access$100(Lcom/andrew/apollo/ui/fragments/ThemeFragment;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;->mPreview:Landroid/graphics/drawable/Drawable;

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->this$0:Lcom/andrew/apollo/ui/fragments/ThemeFragment;

    #getter for: Lcom/andrew/apollo/ui/fragments/ThemeFragment;->mEntries:[Ljava/lang/String;
    invoke-static {v0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment;->access$000(Lcom/andrew/apollo/ui/fragments/ThemeFragment;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 250
    if-nez p2, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->mLayoutID:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 252
    new-instance v1, Lcom/andrew/apollo/ui/MusicHolder;

    invoke-direct {v1, p2}, Lcom/andrew/apollo/ui/MusicHolder;-><init>(Landroid/view/View;)V

    .line 253
    .local v1, holder:Lcom/andrew/apollo/ui/MusicHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 259
    :goto_0
    iget-object v2, p0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$ThemesAdapter;->mData:[Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;

    aget-object v0, v2, p1

    .line 262
    .local v0, dataHolder:Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mImage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;->mPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v2, v1, Lcom/andrew/apollo/ui/MusicHolder;->mLineOne:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-object p2

    .line 255
    .end local v0           #dataHolder:Lcom/andrew/apollo/ui/fragments/ThemeFragment$DataHolder;
    .end local v1           #holder:Lcom/andrew/apollo/ui/MusicHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/andrew/apollo/ui/MusicHolder;

    .restart local v1       #holder:Lcom/andrew/apollo/ui/MusicHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method
