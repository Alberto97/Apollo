.class public Lcom/andrew/apollo/format/PrefixHighlighter;
.super Ljava/lang/Object;
.source "PrefixHighlighter.java"


# instance fields
.field private mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mPrefixHighlightColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->getInstance(Landroid/content/Context;)Lcom/andrew/apollo/utils/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils;->getDefaultThemeColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/andrew/apollo/format/PrefixHighlighter;->mPrefixHighlightColor:I

    .line 37
    return-void
.end method

.method private indexOfWordPrefix(Ljava/lang/CharSequence;[C)I
    .locals 7
    .parameter "text"
    .parameter "prefix"

    .prologue
    const/4 v4, -0x1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v4

    .line 121
    :cond_1
    :goto_0
    return v0

    .line 87
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 88
    .local v3, mTextLength:I
    array-length v2, p2

    .line 90
    .local v2, mPrefixLength:I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 91
    goto :goto_0

    .line 94
    :cond_4
    const/4 v0, 0x0

    .line 95
    .local v0, i:I
    :cond_5
    if-ge v0, v3, :cond_a

    .line 97
    :goto_1
    if-ge v0, v3, :cond_6

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_6
    add-int v5, v0, v2

    if-le v5, v3, :cond_7

    move v0, v4

    .line 102
    goto :goto_0

    .line 107
    :cond_7
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 108
    add-int v5, v0, v1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aget-char v6, p2, v1

    if-eq v5, v6, :cond_9

    .line 112
    :cond_8
    if-eq v1, v2, :cond_1

    .line 117
    :goto_3
    if-ge v0, v3, :cond_5

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 107
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #j:I
    :cond_a
    move v0, v4

    .line 121
    goto :goto_0
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "prefix"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/format/PrefixHighlighter;->indexOfWordPrefix(Ljava/lang/CharSequence;[C)I

    move-result v0

    .line 63
    .local v0, mIndex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/andrew/apollo/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/andrew/apollo/format/PrefixHighlighter;->mPrefixHighlightColor:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v2, p0, Lcom/andrew/apollo/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 67
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    .local v1, mResult:Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/andrew/apollo/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    array-length v3, p2

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 71
    .end local v1           #mResult:Landroid/text/SpannableString;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method public setText(Landroid/widget/TextView;Ljava/lang/String;[C)V
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "prefix"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/andrew/apollo/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
